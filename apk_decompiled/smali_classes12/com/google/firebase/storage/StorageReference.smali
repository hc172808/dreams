.class public Lcom/google/firebase/storage/StorageReference;
.super Ljava/lang/Object;
.source "StorageReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/storage/StorageReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "StorageReference"


# instance fields
.field private final mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field private final mStorageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V
    .locals 4
    .param p1, "storageUri"    # Landroid/net/Uri;
    .param p2, "firebaseStorage"    # Lcom/google/firebase/storage/FirebaseStorage;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "storageUri cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "FirebaseApp cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 62
    iput-object p2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/StorageReference;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "maxResults"    # Ljava/lang/Integer;
    .param p2, "pageToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 646
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/ListTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/ListTask;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 647
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 3
    .param p1, "pathString"    # Ljava/lang/String;

    .line 84
    nop

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 84
    const-string v1, "childName cannot be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->preserveSlashEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, "child":Landroid/net/Uri;
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1
.end method

.method public compareTo(Lcom/google/firebase/storage/StorageReference;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/storage/StorageReference;

    .line 688
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference;->compareTo(Lcom/google/firebase/storage/StorageReference;)I

    move-result p1

    return p1
.end method

.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 535
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/DeleteStorageTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/DeleteStorageTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 536
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 672
    instance-of v0, p1, Lcom/google/firebase/storage/StorageReference;

    if-nez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/storage/StorageReference;

    .line 676
    .local v0, "otherStorage":Lcom/google/firebase/storage/StorageReference;
    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getActiveDownloadTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/FileDownloadTask;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getDownloadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveUploadTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/UploadTask;",
            ">;"
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getUploadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(J)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "maxDownloadSizeBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "[B>;"
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 411
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<[B>;"
    new-instance v1, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 412
    .local v1, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    new-instance v2, Lcom/google/firebase/storage/StorageReference$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/StorageReference$3;-><init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/StorageReference$2;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/storage/StorageReference$2;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 439
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/StorageReference$1;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/storage/StorageReference$1;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 451
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    .line 460
    invoke-virtual {v1}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 462
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method public getDownloadUrl()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 370
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetDownloadUrlTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetDownloadUrlTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;
    .locals 1
    .param p1, "destinationUri"    # Landroid/net/Uri;

    .line 475
    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/FileDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V

    .line 476
    .local v0, "task":Lcom/google/firebase/storage/FileDownloadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/FileDownloadTask;->queue()Z

    .line 477
    return-object v0
.end method

.method public getFile(Ljava/io/File;)Lcom/google/firebase/storage/FileDownloadTask;
    .locals 1
    .param p1, "destinationFile"    # Ljava/io/File;

    .line 489
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageReference;->getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 354
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetMetadataTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 142
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 143
    .local v1, "lastIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 144
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :cond_0
    return-object v0

    .line 141
    .end local v1    # "lastIndex":I
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getParent()Lcom/google/firebase/storage/StorageReference;
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 112
    .local v1, "childIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 113
    const-string v0, "/"

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 119
    .local v2, "child":Landroid/net/Uri;
    new-instance v3, Lcom/google/firebase/storage/StorageReference;

    iget-object v4, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v3

    .line 109
    .end local v1    # "childIndex":I
    .end local v2    # "child":Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    return-object v0

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getRoot()Lcom/google/firebase/storage/StorageReference;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "child":Landroid/net/Uri;
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1
.end method

.method public getStorage()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    return-object v0
.end method

.method getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .locals 3

    .line 693
    new-instance v0, Lcom/google/firebase/storage/internal/StorageReferenceUri;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getEmulatorSettings()Lcom/google/firebase/emulators/EmulatedServiceSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/storage/internal/StorageReferenceUri;-><init>(Landroid/net/Uri;Lcom/google/firebase/emulators/EmulatedServiceSettings;)V

    return-object v0
.end method

.method getStorageUri()Landroid/net/Uri;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStream()Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1

    .line 502
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 503
    .local v0, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 504
    return-object v0
.end method

.method public getStream(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1
    .param p1, "processor"    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    .line 518
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 519
    .local v0, "task":Lcom/google/firebase/storage/StreamDownloadTask;
    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    .line 520
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 521
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public list(I)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 559
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "maxResults must be greater than zero"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 560
    const/16 v2, 0x3e8

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "maxResults must be at most 1000"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public list(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "maxResults"    # I
    .param p2, "pageToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 584
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "maxResults must be greater than zero"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 585
    const/16 v2, 0x3e8

    if-gt p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maxResults must be at most 1000"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 586
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "pageToken must be non-null to resume a previous list() operation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public listAll()Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 607
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 609
    .local v5, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/ListResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v2, "prefixes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTaskScheduler;->getCommandPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 613
    .local v6, "executor":Ljava/util/concurrent/Executor;
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    .line 615
    .local v7, "list":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/storage/ListResult;>;"
    new-instance v8, Lcom/google/firebase/storage/StorageReference$4;

    move-object v0, v8

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/storage/StorageReference$4;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 639
    .local v0, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/storage/ListResult;Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;>;"
    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 641
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public putBytes([B)Lcom/google/firebase/storage/UploadTask;
    .locals 2
    .param p1, "bytes"    # [B

    .line 201
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 204
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 205
    return-object v0
.end method

.method public putBytes([BLcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;

    .line 221
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "bytes cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 222
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 224
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 225
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 226
    return-object v0
.end method

.method public putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 239
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "uri cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 242
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 243
    return-object v0
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;

    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "uri cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 259
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 261
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 262
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 263
    return-object v0
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "existingUploadUri"    # Landroid/net/Uri;

    .line 281
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "uri cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 282
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 284
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 285
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 286
    return-object v0
.end method

.method public putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 299
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "stream cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 301
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 302
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 303
    return-object v0
.end method

.method public putStream(Ljava/io/InputStream;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;

    .line 318
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "stream cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 319
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "metadata cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 321
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 322
    .local v0, "task":Lcom/google/firebase/storage/UploadTask;
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    .line 323
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMetadata(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 387
    .local v0, "pendingResult":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/storage/StorageMetadata;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/UpdateMetadataTask;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/firebase/storage/UpdateMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V

    .line 388
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
