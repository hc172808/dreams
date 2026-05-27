.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;
.super Ljava/lang/Object;
.source "GrpcClientModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 46
    return-void
.end method

.method public static getSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    const/16 v0, 0x40

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 74
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 78
    :cond_1
    :goto_0
    return-object v1

    .line 81
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 4
    .param p0, "sig"    # Landroid/content/pm/Signature;

    .line 87
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 89
    .local v0, "signature":[B
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 90
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 91
    .local v2, "digest":[B
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/io/BaseEncoding;->upperCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 92
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public providesApiKeyHeaders()Lio/grpc/Metadata;
    .locals 6
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 50
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 51
    const-string v1, "X-Goog-Api-Key"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    .line 52
    .local v0, "apiClientKeyHeader":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<Ljava/lang/String;>;"
    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 53
    const-string v2, "X-Android-Package"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    .line 54
    .local v1, "androidPackageHeader":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<Ljava/lang/String;>;"
    sget-object v2, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 55
    const-string v3, "X-Android-Cert"

    invoke-static {v3, v2}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v2

    .line 57
    .local v2, "androidCertHashHeader":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<Ljava/lang/String;>;"
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 58
    .local v3, "metadata":Lio/grpc/Metadata;
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v3, v1, v4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 62
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 63
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->getSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "signature":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {v3, v2, v5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-object v3
.end method

.method public providesInAppMessagingSdkServingStub(Lio/grpc/Channel;Lio/grpc/Metadata;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;
    .locals 3
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "metadata"    # Lio/grpc/Metadata;
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Lio/grpc/ClientInterceptor;

    .line 102
    invoke-static {p2}, Lio/grpc/stub/MetadataUtils;->newAttachHeadersInterceptor(Lio/grpc/Metadata;)Lio/grpc/ClientInterceptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->newBlockingStub(Lio/grpc/Channel;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;

    move-result-object v0

    return-object v0
.end method
