#include "password_hash.h"

// If crypt_gensalt is available, use it
#ifdef HAVE_CRYPT_GENSALT
static gchar *
generate_salt_for_crypt_hash (void)
{
        return g_strdup (crypt_gensalt (NULL, 0, NULL, 0));
}
#else
static gchar salt_char(GRand *rand) {
    const gchar salt_chars[] = "ABCDEFGHIJKLMNOPQRSTUVXYZ"
                               "abcdefghijklmnopqrstuvxyz"
                               "./0123456789";

    return salt_chars[g_rand_int_range(rand, 0, G_N_ELEMENTS(salt_chars))];
}

// Function to generate salt for crypt
static gchar * generate_salt_for_crypt_hash(void) {
    GString *salt;
    GRand *rand;
    gint i;

    rand = g_rand_new();
    salt = g_string_sized_new(21);

    // Prefix for sha512crypt
    g_string_append(salt, "$6$");

    for (i = 0; i < 16; i++) {
        g_string_append_c(salt, salt_char(rand));
    }

    g_string_append_c(salt, '$');

    gchar *salt_str = g_strdup(salt->str);

    g_string_free(salt, TRUE);
    g_rand_free(rand);

    return salt_str;
}
#endif

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