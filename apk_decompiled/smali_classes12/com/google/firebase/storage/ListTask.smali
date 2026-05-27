.class Lcom/google/firebase/storage/ListTask;
.super Ljava/lang/Object;
.source "ListTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListTask"


# instance fields
.field private final maxResults:Ljava/lang/Integer;

.field private final pageToken:Ljava/lang/String;

.field private final pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private final storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 8
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "maxResults"    # Ljava/lang/Integer;
    .param p3, "pageToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p4, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 46
    iput-object p2, p0, Lcom/google/firebase/storage/ListTask;->maxResults:Ljava/lang/Integer;

    .line 47
    iput-object p3, p0, Lcom/google/firebase/storage/ListTask;->pageToken:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 51
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v7, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 53
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v4

    .line 56
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v7, p0, Lcom/google/firebase/storage/ListTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    new-instance v0, Lcom/google/firebase/storage/network/ListNetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 63
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->maxResults:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/firebase/storage/ListTask;->pageToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/storage/network/ListNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 65
    .local v0, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v1, p0, Lcom/google/firebase/storage/ListTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "listResult":Lcom/google/firebase/storage/ListResult;
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/ListTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/storage/ListResult;->fromJSON(Lcom/google/firebase/storage/FirebaseStorage;Lorg/json/JSONObject;)Lcom/google/firebase/storage/ListResult;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 77
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse response body. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ListTask"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iget-object v3, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v2}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 76
    return-void

    .line 80
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/storage/ListTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 83
    :cond_1
    return-void
.end method
