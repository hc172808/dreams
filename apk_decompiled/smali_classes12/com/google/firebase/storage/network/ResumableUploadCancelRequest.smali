.class public Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source "ResumableUploadCancelRequest.java"


# static fields
.field public static cancelCalled:Z


# instance fields
.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->cancelCalled:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V
    .locals 2
    .param p1, "storageReferenceUri"    # Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p3, "uploadURL"    # Landroid/net/Uri;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->cancelCalled:Z

    .line 35
    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->uploadURL:Landroid/net/Uri;

    .line 36
    const-string v0, "X-Goog-Upload-Protocol"

    const-string v1, "resumable"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "X-Goog-Upload-Command"

    const-string v1, "cancel"

    invoke-super {p0, v0, v1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "POST"

    return-object v0
.end method

.method public getURL()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
