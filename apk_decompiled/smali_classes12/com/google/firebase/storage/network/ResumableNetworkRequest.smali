.class abstract Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.super Lcom/google/firebase/storage/network/NetworkRequest;
.source "ResumableNetworkRequest.java"


# static fields
.field static final COMMAND:Ljava/lang/String; = "X-Goog-Upload-Command"

.field static final CONTENT_TYPE:Ljava/lang/String; = "X-Goog-Upload-Header-Content-Type"

.field static final OFFSET:Ljava/lang/String; = "X-Goog-Upload-Offset"

.field static final PROTOCOL:Ljava/lang/String; = "X-Goog-Upload-Protocol"


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p1, "storageReferenceUri"    # Lcom/google/firebase/storage/internal/StorageReferenceUri;
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;)V

    .line 32
    return-void
.end method
