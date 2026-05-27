.class final Lio/grpc/PersistentHashArrayMappedTrie$Leaf;
.super Ljava/lang/Object;
.source "PersistentHashArrayMappedTrie.java"

# interfaces
.implements Lio/grpc/PersistentHashArrayMappedTrie$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/PersistentHashArrayMappedTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leaf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$Leaf;, "Lio/grpc/PersistentHashArrayMappedTrie$Leaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->value:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .param p2, "hash"    # I
    .param p3, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$Leaf;, "Lio/grpc/PersistentHashArrayMappedTrie$Leaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 90
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->value:Ljava/lang/Object;

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 4
    .param p3, "hash"    # I
    .param p4, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$Leaf;, "Lio/grpc/PersistentHashArrayMappedTrie$Leaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 99
    .local v0, "thisHash":I
    if-eq v0, p3, :cond_0

    .line 101
    new-instance v1, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v1, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 105
    new-instance v1, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v1, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 84
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$Leaf;, "Lio/grpc/PersistentHashArrayMappedTrie$Leaf<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$Leaf;, "Lio/grpc/PersistentHashArrayMappedTrie$Leaf<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->key:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->value:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Leaf(key=%s value=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
