.class public Lcom/google/firebase/storage/network/GetMetadataNetworkRequest;
.super Lcom/google/firebase/storage/network/NetworkRequest;
.source "GetMetadataNetworkRequest.java"


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p1, "storageReferenceUri"    # Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "GET"

    return-object v0
.end method
