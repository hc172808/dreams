.class public Leasypay/utils/EasyPaySecureSharedPref;
.super Ljava/lang/Object;
.source "EasyPaySecureSharedPref.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leasypay/utils/EasyPaySecureSharedPref$Editor;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Leasypay/utils/EasyPaySecureSharedPref;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    const-string v1, "app_pref"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefsName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Leasypay/utils/EasyPaySecureSharedPref;->mContext:Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic access$000(Leasypay/utils/EasyPaySecureSharedPref;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Leasypay/utils/EasyPaySecureSharedPref;

    .line 20
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/utils/EasyPaySecureSharedPref;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Leasypay/utils/EasyPaySecureSharedPref;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "encryptedText"    # Ljava/lang/String;

    .line 127
    const-string v0, "AES/GCM/NoPadding"

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Leasypay/utils/EasyPaySecureSharedPref;->generateSecretKey()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    .local v1, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 129
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 130
    const/16 v2, 0x8

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 131
    .local v2, "toDecrypt":[B
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 132
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "toDecrypt":[B
    :catch_0
    move-exception v0

    .line 133
    .local v0, "var5":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v1, 0x0

    return-object v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "toEncrypt"    # Ljava/lang/String;

    .line 114
    const-string v0, "AES/GCM/NoPadding"

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Leasypay/utils/EasyPaySecureSharedPref;->generateSecretKey()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 115
    .local v1, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 116
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 118
    .local v2, "encryptedBytes":[B
    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 119
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "encryptedBytes":[B
    :catch_0
    move-exception v0

    .line 120
    .local v0, "var5":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const/4 v1, 0x0

    return-object v1
.end method

.method private generateSecretKey()[B
    .locals 9

    .line 148
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "androidId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 150
    .local v1, "len":I
    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 152
    :cond_0
    if-ge v1, v2, :cond_1

    .line 153
    rsub-int/lit8 v3, v1, 0x10

    .local v3, "diff":I
    :goto_0
    if-lez v3, :cond_1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 158
    .end local v3    # "diff":I
    :cond_1
    :goto_1
    new-array v3, v2, [C

    fill-array-data v3, :array_0

    .line 159
    .local v3, "cipher1":[C
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 160
    .local v4, "cipher2":[C
    new-array v5, v2, [C

    .line 162
    .local v5, "key":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_2

    .line 163
    aget-char v7, v3, v6

    aget-char v8, v4, v6

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 166
    .end local v6    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    nop

    :array_0
    .array-data 2
        0x70s
        0x40s
        0x79s
        0x21s
        0x6ds
        0x6bs
        0x65s
        0x59s
        0x34s
        0x6fs
        0x6es
        0x45s
        0x39s
        0x37s
        0x70s
        0x72s
    .end array-data
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 20
    invoke-virtual {p0}, Leasypay/utils/EasyPaySecureSharedPref;->edit()Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 1

    .line 41
    new-instance v0, Leasypay/utils/EasyPaySecureSharedPref$Editor;

    invoke-direct {v0, p0}, Leasypay/utils/EasyPaySecureSharedPref$Editor;-><init>(Leasypay/utils/EasyPaySecureSharedPref;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 49
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-direct {p0, v0}, Leasypay/utils/EasyPaySecureSharedPref;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "decrypytValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    return v2

    .line 54
    .end local v1    # "decrypytValue":Ljava/lang/String;
    :cond_1
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 59
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-direct {p0, v0}, Leasypay/utils/EasyPaySecureSharedPref;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "decrypytValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    return v2

    .line 64
    .end local v1    # "decrypytValue":Ljava/lang/String;
    :cond_1
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 69
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-direct {p0, v0}, Leasypay/utils/EasyPaySecureSharedPref;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "decrypytValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    return v2

    .line 74
    .end local v1    # "decrypytValue":Ljava/lang/String;
    :cond_1
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 79
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-direct {p0, v0}, Leasypay/utils/EasyPaySecureSharedPref;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "decrypytValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    return-wide v2

    .line 84
    .end local v1    # "decrypytValue":Ljava/lang/String;
    :cond_1
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return-object v1

    .line 95
    :cond_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Leasypay/utils/EasyPaySecureSharedPref;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    .local p2, "arg1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 143
    .local v0, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 105
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 109
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 110
    return-void
.end method
