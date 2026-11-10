#include <glib.h>
#include <unistd.h>
#include <crypt.h>

// Function declaration for make_crypted with an optional salt parameter
gchar *make_crypted(const gchar *plain, const gchar *provided_salt);
