.class public Lcom/google/firebase/storage/network/ResumableUploadByteRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source "ResumableUploadByteRequest.java"


# instance fields
.field private final bytesToWrite:I

.field private final chunk:[B

.field private final isFinal:Z

.field private final offset:J

.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;[BJIZ)V
    .locals 3
    .param p1, "storageReferenceUri"    # Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p3, "uploadURL"    # Landroid/net/Uri;
    .param p4, "chunk"    # [B
    .param p5, "offset"    # J
    .param p7, "bytesToWrite"    # I
    .param p8, "isFinal"    # Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V

    .line 40
    if-nez p4, :cond_0

    const/4 v0, -0x1

    if-eq p7, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentType is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->mException:Ljava/lang/Exception;

    .line 43
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-gez v2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->mException:Ljava/lang/Exception;

    .line 46
    :cond_1
    iput p7, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    .line 47
    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    .line 48
    if-gtz p7, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    .line 49
    iput-wide p5, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->offset:J

    .line 50
    iput-boolean p8, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    .line 52
    const-string v0, "X-Goog-Upload-Protocol"

    const-string v1, "resumable"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "X-Goog-Upload-Command"

    if-eqz p8, :cond_3

    if-lez p7, :cond_3

    .line 54
    const-string v1, "upload, finalize"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_3
    if-eqz p8, :cond_4

    .line 56
    const-string v1, "finalize"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_4
    const-string v1, "upload"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_1
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Goog-Upload-Offset"

    invoke-super {p0, v1, v0}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "POST"

    return-object v0
.end method

.method protected getOutputRaw()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    return-object v0
.end method

.method protected getOutputRawSize()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getURL()Landroid/net/Uri;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
