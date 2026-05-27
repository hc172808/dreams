.class public Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source "ResumableUploadQueryRequest.java"


# instance fields
.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V
    .locals 2
    .param p1, "storageReferenceUri"    # Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p3, "uploadURL"    # Landroid/net/Uri;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V

    .line 31
    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;->uploadURL:Landroid/net/Uri;

    .line 33
    const-string v0, "X-Goog-Upload-Protocol"

    const-string v1, "resumable"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "X-Goog-Upload-Command"

    const-string v1, "query"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "POST"

    return-object v0
.end method

.method public getURL()Landroid/net/Uri;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
