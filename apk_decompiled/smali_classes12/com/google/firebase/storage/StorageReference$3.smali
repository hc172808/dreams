.class Lcom/google/firebase/storage/StorageReference$3;
.super Ljava/lang/Object;
.source "StorageReference.java"

# interfaces
.implements Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/StorageReference;

.field final synthetic val$maxDownloadSizeBytes:J

.field final synthetic val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/storage/StorageReference;

    .line 413
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference$3;->this$0:Lcom/google/firebase/storage/StorageReference;

    iput-wide p2, p0, Lcom/google/firebase/storage/StorageReference$3;->val$maxDownloadSizeBytes:J

    iput-object p4, p0, Lcom/google/firebase/storage/StorageReference$3;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    .locals 11
    .param p1, "state"    # Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    const-string v0, "the maximum allowed buffer size was exceeded."

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 422
    .local v2, "totalRead":I
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 423
    .local v3, "data":[B
    :goto_0
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v6, v4

    .local v6, "nRead":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 424
    add-int/2addr v2, v6

    .line 425
    int-to-long v7, v2

    iget-wide v9, p0, Lcom/google/firebase/storage/StorageReference$3;->val$maxDownloadSizeBytes:J

    cmp-long v4, v7, v9

    if-gtz v4, :cond_0

    .line 430
    invoke-virtual {v1, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 426
    :cond_0
    const-string v4, "StorageReference"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p1    # "state":Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
    .end local p2    # "stream":Ljava/io/InputStream;
    throw v4

    .line 432
    .restart local p1    # "state":Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
    .restart local p2    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 433
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$3;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "totalRead":I
    .end local v3    # "data":[B
    .end local v6    # "nRead":I
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 436
    throw v0
.end method
