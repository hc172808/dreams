.class public final Lcom/google/firebase/storage/ListResult;
.super Ljava/lang/Object;
.source "ListResult.java"


# static fields
.field private static final ITEMS_KEY:Ljava/lang/String; = "items"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final PAGE_TOKEN_KEY:Ljava/lang/String; = "nextPageToken"

.field private static final PREFIXES_KEY:Ljava/lang/String; = "prefixes"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation
.end field

.field private final pageToken:Ljava/lang/String;

.field private final prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p3, "pageToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "prefixes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/storage/ListResult;->prefixes:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/storage/ListResult;->items:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/storage/ListResult;->pageToken:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static fromJSON(Lcom/google/firebase/storage/FirebaseStorage;Lorg/json/JSONObject;)Lcom/google/firebase/storage/ListResult;
    .locals 7
    .param p0, "storage"    # Lcom/google/firebase/storage/FirebaseStorage;
    .param p1, "resultBody"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "prefixes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/storage/StorageReference;>;"
    const-string v2, "prefixes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 49
    .local v2, "prefixEntries":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 50
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "pathWithoutTrailingSlash":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 55
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v4    # "pathWithoutTrailingSlash":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "prefixEntries":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    const-string v2, "items"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 61
    .local v2, "itemEntries":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 62
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    .local v4, "metadata":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v4    # "metadata":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v2    # "itemEntries":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x0

    const-string v3, "nextPageToken"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "pageToken":Ljava/lang/String;
    new-instance v3, Lcom/google/firebase/storage/ListResult;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/firebase/storage/ListResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/StorageReference;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/firebase/storage/ListResult;->prefixes:Ljava/util/List;

    return-object v0
.end method
