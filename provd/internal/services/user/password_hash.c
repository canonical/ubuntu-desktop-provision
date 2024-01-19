#include "password_hash.h"

// Helper function to generate a single character for the salt
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

// Function to hash a password with a generated salt
gchar * make_crypted(const gchar *plain) {
    gchar *salt = generate_salt_for_crypt_hash();
    gchar *hash = g_strdup(crypt(plain, salt));
    g_free(salt);
    return hash;
}
