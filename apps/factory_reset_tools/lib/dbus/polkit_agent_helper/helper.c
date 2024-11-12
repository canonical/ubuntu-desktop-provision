/*
 * This file modifies from fwupd src/fu-polkit-agent.c to start pkttyagent with
 * --notify parameter
 *
 * Copyright 2011 Lennart Poettering <lennart@poettering.net>
 * Copyright 2012 Matthias Klumpp <matthias@tenstral.net>
 * Copyright 2015 Richard Hughes <richard@hughsie.com>
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <errno.h>
#include <inttypes.h>
#include <poll.h>
#include <unistd.h>

#include <stdio.h>

typedef struct _pipe_fds {
	int fd0;
	int fd1;
} pipe_fds;

static int close_nointr(int fd)
{
	/* was assertion: g_return_val_if_fail(fd >= 0, -1); */
	if (fd < 0) {
		return -1;
	}

	for (;;) {
		int r;
		r = close(fd);
		if (r >= 0)
			return r;
		if (errno != EINTR)
			return -errno;
	}
}

static void close_nointr_nofail(int fd)
{
	int saved_errno = errno;
	/* cannot fail, and guarantees errno is unchanged */
	if (close_nointr(fd) != 0) {
		errno = EBADFD;
		return;
	}
	errno = saved_errno;
}

static int fd_wait_for_event(int fd, int event, uint64_t t)
{
	struct pollfd pollfd = {0};
	int r;

	pollfd.fd = fd;
	pollfd.events = event;
	r = poll(&pollfd, 1, t == (uint64_t)-1 ? -1 : (int)(t / 1000));
	if (r < 0)
		return -errno;
	if (r == 0)
		return 0;

	return pollfd.revents;
}

/* dart does not have low level pipe function; use ffi for the task */
int pkagent_pipe(pipe_fds *fds) {
	int pipe_fd[2];
	int ret;
	ret = pipe(pipe_fd);
	fds->fd0 = pipe_fd[0];
	fds->fd1 = pipe_fd[1];
	return ret;
}

void pkagent_wait(pipe_fds *fds) {
	/* close the writing side, because that is the one for the agent */
	close_nointr_nofail(fds->fd1);

	/* wait until the agent closes the fd */
	fd_wait_for_event(fds->fd0, POLLHUP, (uint64_t)-1);

	close_nointr_nofail(fds->fd0);
}