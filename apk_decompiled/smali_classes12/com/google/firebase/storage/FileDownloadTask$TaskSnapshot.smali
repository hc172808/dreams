.class public Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
.super Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.source "FileDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/FileDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSnapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">.SnapshotBase;"
    }
.end annotation


# instance fields
.field private final mBytesDownloaded:J

.field final synthetic this$0:Lcom/google/firebase/storage/FileDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/storage/FileDownloadTask;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "bytesDownloaded"    # J

    .line 278
    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/FileDownloadTask;

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;-><init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V

    .line 280
    iput-wide p3, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    .line 281
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    return-wide v0
.end method

.method public getTotalByteCount()J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/FileDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/FileDownloadTask;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method
