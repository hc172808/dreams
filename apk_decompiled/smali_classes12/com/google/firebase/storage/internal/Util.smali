.class public Lcom/google/firebase/storage/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ISO_8601_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field private static final MAXIMUM_TOKEN_WAIT_TIME_MS:I = 0x7530

.field public static final NETWORK_UNAVAILABLE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getCurrentAppCheckToken(Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;)Ljava/lang/String;
    .locals 6
    .param p0, "appCheckProvider"    # Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 165
    const-string v0, "StorageUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 166
    return-object v1

    .line 170
    :cond_0
    const/4 v2, 0x0

    .line 171
    :try_start_0
    invoke-interface {p0, v2}, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 172
    .local v2, "pendingResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    const-wide/16 v3, 0x7530

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 174
    .local v3, "result":Lcom/google/firebase/appcheck/AppCheckTokenResult;
    invoke-virtual {v3}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Lcom/google/firebase/FirebaseException;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting App Check token; using placeholder token instead. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Lcom/google/firebase/FirebaseException;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    .end local v2    # "pendingResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    .end local v3    # "result":Lcom/google/firebase/appcheck/AppCheckTokenResult;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error getting App Check token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;
    .locals 6
    .param p0, "authProvider"    # Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "token":Ljava/lang/String;
    const-string v1, "StorageUtil"

    if-eqz p0, :cond_0

    .line 145
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v2}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 146
    .local v2, "pendingResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    const-wide/16 v3, 0x7530

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 147
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/GetTokenResult;

    .line 148
    .local v3, "result":Lcom/google/firebase/auth/GetTokenResult;
    invoke-virtual {v3}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 151
    .end local v2    # "pendingResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    .end local v3    # "result":Lcom/google/firebase/auth/GetTokenResult;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    return-object v0

    .line 154
    :cond_1
    const-string v2, "no auth token for request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .end local v0    # "token":Ljava/lang/String;
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error getting token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    const-string v0, "Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl()."

    .line 91
    .local v0, "invalidUrlMessage":Ljava/lang/String;
    sget-object v1, Lcom/google/firebase/storage/network/NetworkRequest;->PROD_BASE_URL:Landroid/net/Uri;

    .line 92
    .local v1, "baseUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "trimmedInput":Ljava/lang/String;
    const-string v3, "gs://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/storage/internal/Slashes;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/storage/internal/Slashes;->preserveSlashEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "fullUri":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 99
    .end local v4    # "fullUri":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 100
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "StorageUtil"

    if-eqz v4, :cond_7

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-static {v6, v7}, Lcom/google/firebase/storage/internal/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-static {v6, v7}, Lcom/google/firebase/storage/internal/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "lowerAuthority":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 106
    .local v7, "indexOfAuth":I
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/firebase/storage/internal/Slashes;->slashize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "encodedPath":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "Firebase Storage URLs must point to an object in your Storage Bucket. Please obtain a URL using the Firebase Console or getDownloadUrl()."

    if-nez v7, :cond_5

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 108
    const-string v12, "/b/"

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 110
    .local v12, "firstBSlash":I
    add-int/lit8 v13, v12, 0x3

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 111
    .local v11, "endBSlash":I
    const-string v13, "/o/"

    invoke-virtual {v8, v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 112
    .local v9, "firstOSlash":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    if-eq v11, v13, :cond_4

    .line 113
    add-int/lit8 v5, v12, 0x3

    invoke-virtual {v8, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "bucket":Ljava/lang/String;
    if-eq v9, v13, :cond_3

    .line 115
    add-int/lit8 v10, v9, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 117
    :cond_3
    const-string v8, ""

    .line 123
    .end local v9    # "firstOSlash":I
    .end local v11    # "endBSlash":I
    .end local v12    # "firstBSlash":I
    :goto_0
    goto :goto_1

    .line 120
    .end local v5    # "bucket":Ljava/lang/String;
    .restart local v9    # "firstOSlash":I
    .restart local v11    # "endBSlash":I
    .restart local v12    # "firstBSlash":I
    :cond_4
    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    .end local v9    # "firstOSlash":I
    .end local v11    # "endBSlash":I
    .end local v12    # "firstBSlash":I
    :cond_5
    const/4 v11, 0x1

    if-le v7, v11, :cond_6

    .line 124
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 129
    .end local v6    # "lowerAuthority":Ljava/lang/String;
    .end local v7    # "indexOfAuth":I
    .restart local v5    # "bucket":Ljava/lang/String;
    :goto_1
    nop

    .line 135
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    const-string v3, "No bucket specified"

    invoke-static {v5, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "gs"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 126
    .end local v5    # "bucket":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v6    # "lowerAuthority":Ljava/lang/String;
    .restart local v7    # "indexOfAuth":I
    :cond_6
    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 130
    .end local v6    # "lowerAuthority":Ljava/lang/String;
    .end local v7    # "indexOfAuth":I
    .end local v8    # "encodedPath":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FirebaseStorage is unable to support the scheme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Uri scheme"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static parseDateTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "dateString"    # Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 54
    return-wide v0

    .line 57
    :cond_0
    const-string v2, "Z$"

    const-string v3, "-0000"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    .local v2, "iso8601Format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/text/ParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse datetime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageUtil"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v3    # "e":Ljava/text/ParseException;
    return-wide v0
.end method
