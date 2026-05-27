.class public Lcom/google/firebase/storage/internal/StorageReferenceUri;
.super Ljava/lang/Object;
.source "StorageReferenceUri.java"


# instance fields
.field private final gsUri:Landroid/net/Uri;

.field private final httpBaseUri:Landroid/net/Uri;

.field private final httpUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "gsUri"    # Landroid/net/Uri;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/internal/StorageReferenceUri;-><init>(Landroid/net/Uri;Lcom/google/firebase/emulators/EmulatedServiceSettings;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/firebase/emulators/EmulatedServiceSettings;)V
    .locals 4
    .param p1, "gsUri"    # Landroid/net/Uri;
    .param p2, "emulatorSettings"    # Lcom/google/firebase/emulators/EmulatedServiceSettings;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->gsUri:Landroid/net/Uri;

    .line 38
    nop

    .line 39
    if-nez p2, :cond_0

    .line 40
    sget-object v0, Lcom/google/firebase/storage/network/NetworkRequest;->PROD_BASE_URL:Landroid/net/Uri;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/v0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->httpBaseUri:Landroid/net/Uri;

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "bucket":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "b"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 49
    .local v0, "httpBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/storage/internal/Slashes;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    const-string v3, "o"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->httpUri:Landroid/net/Uri;

    .line 55
    return-void
.end method


# virtual methods
.method public getGsUri()Landroid/net/Uri;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->gsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHttpBaseUri()Landroid/net/Uri;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->httpBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHttpUri()Landroid/net/Uri;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/storage/internal/StorageReferenceUri;->httpUri:Landroid/net/Uri;

    return-object v0
.end method
