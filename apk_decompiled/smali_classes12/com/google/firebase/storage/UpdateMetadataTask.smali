.class Lcom/google/firebase/storage/UpdateMetadataTask;
.super Ljava/lang/Object;
.source "UpdateMetadataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateMetadataTask"


# instance fields
.field private final mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private final mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V
    .locals 8
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p3, "newMetadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 44
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v7, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 48
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v4

    .line 49
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v7, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    new-instance v0, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 56
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 57
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 58
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;)V

    .line 60
    .local v0, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse a valid JSON object from resulting metadata:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v3, "UpdateMetadataTask"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 71
    return-void

    .line 75
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method
