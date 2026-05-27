.class public final Lcom/facebook/appevents/AppEvent$Companion;
.super Ljava/lang/Object;
.source "AppEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEvent.kt\ncom/facebook/appevents/AppEvent$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1#2:269\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEvent$Companion;",
        "",
        "()V",
        "MAX_IDENTIFIER_LENGTH",
        "",
        "serialVersionUID",
        "",
        "validatedIdentifiers",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "md5Checksum",
        "toHash",
        "validateIdentifier",
        "",
        "identifier",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 208
    invoke-direct {p0}, Lcom/facebook/appevents/AppEvent$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$md5Checksum(Lcom/facebook/appevents/AppEvent$Companion;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/appevents/AppEvent$Companion;
    .param p1, "toHash"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/appevents/AppEvent$Companion;->md5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$validateIdentifier(Lcom/facebook/appevents/AppEvent$Companion;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/appevents/AppEvent$Companion;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/appevents/AppEvent$Companion;->validateIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method private final md5Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "toHash"    # Ljava/lang/String;

    .line 250
    const-string v0, "Failed to generate checksum: "

    const/4 v1, 0x0

    .line 251
    .local v1, "hash":Ljava/lang/String;
    nop

    .line 252
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 253
    .local v2, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v4, "Charset.forName(charsetName)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .local v3, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 255
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const-string v5, "digest.digest()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    .line 256
    invoke-static {v3}, Lcom/facebook/appevents/internal/AppEventUtility;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 263
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "bytes":[B
    .local v0, "hash":Ljava/lang/String;
    nop

    .line 264
    return-object v0

    .line 253
    .end local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "hash":Ljava/lang/String;
    .end local p1    # "toHash":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local p1    # "toHash":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Exception;

    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 262
    const-string v0, "1"

    return-object v0

    .line 257
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 258
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Exception;

    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 259
    const-string v0, "0"

    return-object v0
.end method

.method private final validateIdentifier(Ljava/lang/String;)V
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    .line 218
    move-object v0, p1

    .line 219
    .local v0, "identifier":Ljava/lang/Object;
    const-string v1, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 220
    .local v1, "regex":Ljava/lang/String;
    const/16 v2, 0x28

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_1

    goto :goto_2

    .line 231
    :cond_1
    const/4 v2, 0x0

    .line 232
    .local v2, "alreadyValidated":Z
    invoke-static {}, Lcom/facebook/appevents/AppEvent;->access$getValidatedIdentifiers$cp()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5

    const/4 v6, 0x0

    .line 233
    .local v6, "$i$a$-synchronized-AppEvent$Companion$validateIdentifier$1":I
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEvent;->access$getValidatedIdentifiers$cp()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v2, v7

    .line 234
    .end local v6    # "$i$a$-synchronized-AppEvent$Companion$validateIdentifier$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    monitor-exit v5

    .line 235
    if-nez v2, :cond_3

    .line 236
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    invoke-static {}, Lcom/facebook/appevents/AppEvent;->access$getValidatedIdentifiers$cp()Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 269
    const/4 v4, 0x0

    .line 237
    .local v4, "$i$a$-synchronized-AppEvent$Companion$validateIdentifier$2":I
    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/AppEvent;->access$getValidatedIdentifiers$cp()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "$i$a$-synchronized-AppEvent$Companion$validateIdentifier$2":I
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 239
    :cond_2
    new-instance v5, Lcom/facebook/FacebookException;

    .line 240
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 241
    const-string v6, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v7, v3, [Ljava/lang/Object;

    .line 244
    aput-object v0, v7, v4

    .line 240
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {v5, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 245
    :cond_3
    :goto_1
    nop

    .line 247
    return-void

    .line 232
    :catchall_1
    move-exception v3

    monitor-exit v5

    throw v3

    .line 221
    .end local v2    # "alreadyValidated":Z
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 222
    const-string v0, "<None Provided>"

    .line 224
    :cond_5
    new-instance v5, Lcom/facebook/FacebookException;

    .line 225
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 226
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 227
    const-string v7, "Identifier \'%s\' must be less than %d characters"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 228
    aput-object v0, v9, v4

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    .line 225
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(locale, format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {v5, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method
