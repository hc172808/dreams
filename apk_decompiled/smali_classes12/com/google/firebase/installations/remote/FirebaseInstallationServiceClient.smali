.class public Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;
.super Ljava/lang/Object;
.source "FirebaseInstallationServiceClient.java"


# static fields
.field private static final ACCEPT_HEADER_KEY:Ljava/lang/String; = "Accept"

.field private static final API_KEY_HEADER:Ljava/lang/String; = "x-goog-api-key"

.field private static final CACHE_CONTROL_DIRECTIVE:Ljava/lang/String; = "no-cache"

.field private static final CACHE_CONTROL_HEADER_KEY:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final CREATE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations"

.field private static final DELETE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s"

.field private static final EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIREBASE_INSTALLATIONS_API_DOMAIN:Ljava/lang/String; = "firebaseinstallations.googleapis.com"

.field private static final FIREBASE_INSTALLATIONS_API_VERSION:Ljava/lang/String; = "v1"

.field private static final FIREBASE_INSTALLATIONS_ID_HEARTBEAT_TAG:Ljava/lang/String; = "fire-installations-id"

.field private static final FIREBASE_INSTALLATION_AUTH_VERSION:Ljava/lang/String; = "FIS_v2"

.field private static final FIS_TAG:Ljava/lang/String; = "Firebase-Installations"

.field private static final GENERATE_AUTH_TOKEN_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s/authTokens:generate"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEART_BEAT_HEADER:Ljava/lang/String; = "x-firebase-client-log-type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final MAX_RETRIES:I = 0x1

.field private static final NETWORK_TIMEOUT_MILLIS:I = 0x2710

.field static final PARSING_EXPIRATION_TIME_ERROR_MESSAGE:Ljava/lang/String; = "Invalid Expiration Timestamp."

.field private static final SDK_VERSION_PREFIX:Ljava/lang/String; = "a:"

.field private static final TRAFFIC_STATS_CREATE_INSTALLATION_TAG:I = 0x8001

.field private static final TRAFFIC_STATS_DELETE_INSTALLATION_TAG:I = 0x8002

.field private static final TRAFFIC_STATS_FIREBASE_INSTALLATIONS_TAG:I = 0x8000

.field private static final TRAFFIC_STATS_GENERATE_AUTH_TOKEN_TAG:I = 0x8003

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "x-firebase-client"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final X_ANDROID_CERT_HEADER_KEY:Ljava/lang/String; = "X-Android-Cert"

.field private static final X_ANDROID_IID_MIGRATION_KEY:Ljava/lang/String; = "x-goog-fis-android-iid-migration-auth"

.field private static final X_ANDROID_PACKAGE_HEADER_KEY:Ljava/lang/String; = "X-Android-Package"


# instance fields
.field private final context:Landroid/content/Context;

.field private final heartbeatInfo:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

.field private shouldServerErrorRetry:Z

.field private final userAgentPublisher:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string v0, "[0-9]+s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p2, "publisher":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/platforminfo/UserAgentPublisher;>;"
    .local p3, "heartbeatInfo":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 127
    iput-object p3, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 128
    new-instance v0, Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-direct {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 129
    return-void
.end method

.method private static availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;

    .line 620
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 620
    const-string v1, "Firebase options used while communicating with Firebase server APIs: %s, %s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "fid"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 267
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 268
    .local v0, "firebaseInstallationData":Lorg/json/JSONObject;
    const-string v1, "fid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "authVersion"

    const-string v2, "FIS_v2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "sdkVersion"

    const-string v2, "a:17.0.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-object v0

    .line 273
    .end local v0    # "firebaseInstallationData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;
    .locals 3

    .line 294
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .local v0, "sdkVersionData":Lorg/json/JSONObject;
    const-string v1, "sdkVersion"

    const-string v2, "a:17.0.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .local v1, "firebaseInstallationData":Lorg/json/JSONObject;
    const-string v2, "installation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-object v1

    .line 300
    .end local v0    # "sdkVersionData":Lorg/json/JSONObject;
    .end local v1    # "firebaseInstallationData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFingerprintHashForPackage()Ljava/lang/String;
    .locals 5

    .line 577
    const-string v0, "ContentValues"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 579
    .local v2, "hash":[B
    if-nez v2, :cond_0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get fingerprint hash for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v1

    .line 583
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 585
    .end local v2    # "hash":[B
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    return-object v1
.end method

.method private getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 364
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "firebaseinstallations.googleapis.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 365
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    return-object v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1
.end method

.method private static getJsonBytes(Lorg/json/JSONObject;)[B
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static isSuccessfulResponseCode(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .line 458
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logBadConfigError()V
    .locals 2

    .line 462
    const-string v0, "Firebase-Installations"

    const-string v1, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private static logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "projectId"    # Ljava/lang/String;

    .line 611
    invoke-static {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "logString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const-string v1, "Firebase-Installations"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {p1, p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    return-void
.end method

.method private openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 474
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    nop

    .line 480
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 482
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 483
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "Accept"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Android-Package"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 490
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    const-string v2, "fire-installations-id"

    invoke-interface {v1, v2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;->getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    move-result-object v1

    .line 491
    .local v1, "heartbeat":Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    sget-object v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    if-eq v1, v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 493
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    invoke-interface {v2}, Lcom/google/firebase/platforminfo/UserAgentPublisher;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v3, "x-firebase-client"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    nop

    .line 495
    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    const-string v3, "x-firebase-client-log-type"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v1    # "heartbeat":Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFingerprintHashForPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Android-Cert"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "x-goog-api-key"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-object v0

    .line 475
    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v1, v3, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1
.end method

.method static parseTokenExpirationTimestamp(Ljava/lang/String;)J
    .locals 2
    .param p0, "expiresIn"    # Ljava/lang/String;

    .line 598
    sget-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 598
    const-string v1, "Invalid Expiration Timestamp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 601
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 602
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 601
    :goto_1
    return-wide v0
.end method

.method private readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .locals 8
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 507
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 508
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v2

    .line 509
    .local v2, "tokenResult":Lcom/google/firebase/installations/remote/TokenResult$Builder;
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v3

    .line 512
    .local v3, "builder":Lcom/google/firebase/installations/remote/InstallationResponse$Builder;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 513
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 514
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "name":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setUri(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto/16 :goto_3

    .line 517
    :cond_0
    const-string v5, "fid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setFid(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto :goto_3

    .line 519
    :cond_1
    const-string v5, "refreshToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    goto :goto_3

    .line 521
    :cond_2
    const-string v5, "authToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 522
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 523
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 524
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "key":Ljava/lang/String;
    const-string v6, "token"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 526
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_2

    .line 527
    :cond_3
    const-string v6, "expiresIn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 528
    nop

    .line 529
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    .line 528
    invoke-virtual {v2, v6, v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_2

    .line 531
    :cond_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 533
    .end local v5    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 534
    :cond_5
    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setAuthToken(Lcom/google/firebase/installations/remote/TokenResult;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 535
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_3

    .line 537
    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 539
    .end local v4    # "name":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 540
    :cond_7
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 541
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 542
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 543
    sget-object v4, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->OK:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v3, v4}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v4

    return-object v4
.end method

.method private static readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .line 628
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 629
    .local v0, "errorStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 630
    return-object v1

    .line 632
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 634
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v3, "response":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "input":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 638
    .end local v4    # "input":Ljava/lang/String;
    :cond_1
    const-string v4, "Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 641
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 638
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 649
    goto :goto_1

    .line 647
    :catch_0
    move-exception v4

    .line 638
    :goto_1
    return-object v1

    .line 645
    .end local v3    # "response":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 646
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 649
    goto :goto_2

    .line 647
    :catch_1
    move-exception v3

    .line 650
    :goto_2
    throw v1

    .line 642
    :catch_2
    move-exception v3

    .line 643
    .local v3, "ignored":Ljava/io/IOException;
    nop

    .line 646
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 649
    goto :goto_3

    .line 647
    :catch_3
    move-exception v4

    .line 643
    :goto_3
    return-object v1
.end method

.method private readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 550
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 551
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v2

    .line 554
    .local v2, "builder":Lcom/google/firebase/installations/remote/TokenResult$Builder;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 555
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 556
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "name":Ljava/lang/String;
    const-string v4, "token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_1

    .line 559
    :cond_0
    const-string v4, "expiresIn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 564
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 566
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 567
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 569
    sget-object v3, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->OK:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v3

    return-object v3
.end method

.method private writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    nop

    .line 222
    invoke-static {p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 223
    return-void
.end method

.method private writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 280
    invoke-static {p1, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 282
    return-void
.end method

.method private static writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V
    .locals 4
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .param p1, "jsonBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 240
    .local v0, "outputStream":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 249
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 253
    nop

    .line 254
    :goto_0
    return-void

    .line 247
    :catchall_0
    move-exception v2

    .line 248
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 249
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    goto :goto_1

    .line 250
    :catch_1
    move-exception v3

    .line 253
    :goto_1
    throw v2

    .line 241
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot send request to FIS servers. No OutputStream available."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .locals 10
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "iidToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    move-result v0

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v0, :cond_5

    .line 163
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v3, "projects/%s/installations"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 165
    .local v3, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .local v4, "retryCount":I
    :goto_0
    if-gt v4, v0, :cond_4

    .line 167
    const v5, 0x8001

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 168
    invoke-direct {p0, v3, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 171
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 175
    if-eqz p5, :cond_0

    .line 176
    const-string v6, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v5, v6, p5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-direct {p0, v5, p2, p4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 182
    .local v6, "httpResponseCode":I
    iget-object v7, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v7, v6}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 184
    invoke-static {v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 185
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 185
    return-object v0

    .line 188
    :cond_1
    :try_start_1
    invoke-static {v5, p4, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/16 v7, 0x1ad

    if-eq v6, v7, :cond_3

    .line 197
    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_2

    const/16 v7, 0x258

    if-ge v6, v7, :cond_2

    .line 208
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 198
    goto :goto_2

    .line 201
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 204
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v7, v8}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 204
    return-object v0

    .line 191
    :cond_3
    :try_start_3
    new-instance v7, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v8, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v9, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v7, v8, v9}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "retryCount":I
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "appId":Ljava/lang/String;
    .end local p5    # "iidToken":Ljava/lang/String;
    throw v7
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    .end local v6    # "httpResponseCode":I
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "retryCount":I
    .restart local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "appId":Ljava/lang/String;
    .restart local p5    # "iidToken":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 210
    throw v0

    .line 205
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 208
    .local v6, "ignored":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 206
    nop

    .line 165
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v6    # "ignored":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 213
    .end local v4    # "retryCount":I
    :cond_4
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    .line 158
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :cond_5
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0
.end method

.method public deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v2, "projects/%s/installations/%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 323
    .local v2, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 324
    .local v3, "retryCount":I
    :goto_0
    if-gt v3, v1, :cond_4

    .line 325
    const v4, 0x8002

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 326
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 328
    .local v4, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v5, "DELETE"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 329
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FIS_v2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 333
    .local v5, "httpResponseCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x191

    if-eq v5, v6, :cond_3

    const/16 v6, 0x194

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 337
    :cond_0
    const/4 v6, 0x0

    invoke-static {v4, v6, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v6, 0x1ad

    if-eq v5, v6, :cond_2

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_1

    const/16 v6, 0x258

    if-ge v5, v6, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 346
    new-instance v6, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v7, "Bad config while trying to delete FID"

    sget-object v8, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "retryCount":I
    .end local v4    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "refreshToken":Ljava/lang/String;
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "retryCount":I
    .restart local v4    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "refreshToken":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 351
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 341
    goto :goto_0

    .line 351
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 334
    return-void

    .line 351
    .end local v5    # "httpResponseCode":I
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 353
    throw v1

    .line 348
    :catch_0
    move-exception v5

    .line 349
    .local v5, "ignored":Ljava/io/IOException;
    nop

    .end local v5    # "ignored":Ljava/io/IOException;
    add-int/lit8 v3, v3, 0x1

    .line 351
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 353
    nop

    .line 354
    .end local v4    # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 356
    :cond_4
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    const-string v5, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v1, v5, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1
.end method

.method public generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;
    .locals 10
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "projectID"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    move-result v0

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v0, :cond_6

    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 404
    const-string v3, "projects/%s/installations/%s/authTokens:generate"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "resourceName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 406
    .local v3, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .local v4, "retryCount":I
    :goto_0
    if-gt v4, v2, :cond_5

    .line 408
    const v5, 0x8003

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 409
    invoke-direct {p0, v3, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 411
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 412
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FIS_v2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 415
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V

    .line 417
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 418
    .local v6, "httpResponseCode":I
    iget-object v7, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    invoke-virtual {v7, v6}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 420
    invoke-static {v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 421
    invoke-direct {p0, v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 421
    return-object v1

    .line 424
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v5, v7, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    const/16 v7, 0x191

    if-eq v6, v7, :cond_4

    const/16 v7, 0x194

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 430
    :cond_1
    const/16 v7, 0x1ad

    if-eq v6, v7, :cond_3

    .line 437
    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_2

    const/16 v7, 0x258

    if-ge v6, v7, :cond_2

    .line 448
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 438
    goto :goto_3

    .line 441
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 443
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v7, v8}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 443
    return-object v1

    .line 431
    :cond_3
    :try_start_3
    new-instance v7, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v8, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v9, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v7, v8, v9}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "retryCount":I
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "fid":Ljava/lang/String;
    .end local p3    # "projectID":Ljava/lang/String;
    .end local p4    # "refreshToken":Ljava/lang/String;
    throw v7

    .line 427
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "retryCount":I
    .restart local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "fid":Ljava/lang/String;
    .restart local p3    # "projectID":Ljava/lang/String;
    .restart local p4    # "refreshToken":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->AUTH_ERROR:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v7, v8}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 427
    return-object v1

    .line 448
    .end local v6    # "httpResponseCode":I
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 450
    throw v1

    .line 445
    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 448
    .local v6, "ignored":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 449
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 446
    nop

    .line 406
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v6    # "ignored":Ljava/lang/Throwable;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 452
    .end local v4    # "retryCount":I
    :cond_5
    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v2, v1, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v2

    .line 398
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :cond_6
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0
.end method
