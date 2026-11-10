#include "password_hash.h"

static gchar *
generate_salt_for_crypt_hash (void)
{
        return g_strdup (crypt_gensalt (NULL, 0, NULL, 0));
}

gchar *make_crypted(const gchar *plain, const gchar *test_salt) {
    gchar *salt;
    if (test_salt == NULL || *test_salt == '\0') {
        salt = generate_salt_for_crypt_hash();
    } else {
        salt = g_strdup(test_salt);
    }

    gchar *hash = g_strdup(crypt(plain, salt));
    g_free(salt);
    return hash;
}