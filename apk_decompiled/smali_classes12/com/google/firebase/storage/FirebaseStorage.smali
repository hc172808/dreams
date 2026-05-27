.class public Lcom/google/firebase/storage/FirebaseStorage;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STORAGE_BUCKET_WITH_PATH_EXCEPTION:Ljava/lang/String; = "The storage Uri cannot contain a path element."

.field private static final STORAGE_URI_PARSE_EXCEPTION:Ljava/lang/String; = "The storage Uri could not be parsed."

.field private static final TAG:Ljava/lang/String; = "FirebaseStorage"


# instance fields
.field private emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

.field private final mApp:Lcom/google/firebase/FirebaseApp;

.field private final mAppCheckProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mBucketName:Ljava/lang/String;

.field private sMaxDownloadRetry:J

.field private sMaxQueryRetry:J

.field private sMaxUploadRetry:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "authProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    .local p4, "appCheckProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    .line 56
    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    .line 57
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    .line 66
    iput-object p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->mBucketName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    .line 68
    iput-object p3, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAuthProvider:Lcom/google/firebase/inject/Provider;

    .line 69
    iput-object p4, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAppCheckProvider:Lcom/google/firebase/inject/Provider;

    .line 70
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    nop

    .line 72
    invoke-interface {p4}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    new-instance v1, Lcom/google/firebase/storage/FirebaseStorage$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/FirebaseStorage$1;-><init>(Lcom/google/firebase/storage/FirebaseStorage;)V

    .line 73
    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;->addAppCheckTokenListener(Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method private getBucketName()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 3

    .line 105
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 106
    .local v0, "app":Lcom/google/firebase/FirebaseApp;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-static {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    return-object v1

    .line 107
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;
    .locals 4
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 135
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value for the FirebaseApp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getStorageBucket()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "storageBucket":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 139
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    return-object v1

    .line 142
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gs://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getStorageBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    invoke-static {p0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse bucket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirebaseStorage"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The storage Uri could not be parsed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .locals 4
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "url"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Null is not a valid value for the FirebaseApp."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Null is not a valid value for the Firebase Storage URL."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseStorage"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The storage Uri could not be parsed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use a gs:// URL for your Firebase Storage bucket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 121
    .local v0, "app":Lcom/google/firebase/FirebaseApp;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-static {v0, p0}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    return-object v1

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private static getInstanceImpl(Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)Lcom/google/firebase/storage/FirebaseStorage;
    .locals 3
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "url"    # Landroid/net/Uri;

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, "bucketName":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The storage Uri cannot contain a path element."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_2
    :goto_1
    const-string v1, "Provided FirebaseApp must not be null."

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class v1, Lcom/google/firebase/storage/FirebaseStorageComponent;

    invoke-virtual {p0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/FirebaseStorageComponent;

    .line 94
    .local v1, "component":Lcom/google/firebase/storage/FirebaseStorageComponent;
    const-string v2, "Firebase Storage component is not present."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/FirebaseStorageComponent;->get(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    return-object v2
.end method

.method private getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 325
    const-string v0, "uri must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "bucketName":Ljava/lang/String;
    nop

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 327
    :goto_1
    const-string v2, "The supplied bucketname does not match the storage bucket of the current instance."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v1, p1, p0}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1
.end method


# virtual methods
.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAppCheckProvider:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->mAuthProvider:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getEmulatorSettings()Lcom/google/firebase/emulators/EmulatedServiceSettings;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    return-object v0
.end method

.method public getMaxDownloadRetryTimeMillis()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    return-wide v0
.end method

.method public getMaxOperationRetryTimeMillis()J
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    return-wide v0
.end method

.method public getMaxUploadRetryTimeMillis()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    return-wide v0
.end method

.method public getReference()Lcom/google/firebase/storage/StorageReference;
    .locals 3

    .line 262
    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "bucketName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "gs"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    return-object v2

    .line 264
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FirebaseApp was not initialized with a bucket name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "location must not be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "lowerCaseLocation":Ljava/lang/String;
    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    return-object v1

    .line 317
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "location should not be a full URL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReferenceFromUrl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 5
    .param p1, "fullUrl"    # Ljava/lang/String;

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "location must not be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "lowerCaseLocation":Ljava/lang/String;
    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "The storage Uri could not be parsed."

    if-nez v1, :cond_1

    .line 285
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/FirebaseStorage;->mApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v1, p1}, Lcom/google/firebase/storage/internal/Util;->normalize(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 289
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 292
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Landroid/net/Uri;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    return-object v2

    .line 290
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lowerCaseLocation":Ljava/lang/String;
    .end local p1    # "fullUrl":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1    # "uri":Landroid/net/Uri;
    .restart local v0    # "lowerCaseLocation":Ljava/lang/String;
    .restart local p1    # "fullUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse location:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FirebaseStorage"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setMaxDownloadRetryTimeMillis(J)V
    .locals 0
    .param p1, "maxTransferRetryMillis"    # J

    .line 207
    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxDownloadRetry:J

    .line 208
    return-void
.end method

.method public setMaxOperationRetryTimeMillis(J)V
    .locals 0
    .param p1, "maxTransferRetryMillis"    # J

    .line 247
    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxQueryRetry:J

    .line 248
    return-void
.end method

.method public setMaxUploadRetryTimeMillis(J)V
    .locals 0
    .param p1, "maxTransferRetryMillis"    # J

    .line 226
    iput-wide p1, p0, Lcom/google/firebase/storage/FirebaseStorage;->sMaxUploadRetry:J

    .line 227
    return-void
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 188
    new-instance v0, Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/firebase/storage/FirebaseStorage;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    .line 189
    return-void
.end method
