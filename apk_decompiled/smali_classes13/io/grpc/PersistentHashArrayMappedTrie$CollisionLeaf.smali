.class final Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;
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
    name = "CollisionLeaf"
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    const-class v0, Lio/grpc/PersistentHashArrayMappedTrie;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "value1":Ljava/lang/Object;, "TV;"
    .local p3, "key2":Ljava/lang/Object;, "TK;"
    .local p4, "value2":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-direct {p0, v1, v0}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 130
    if-eq p1, p3, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private indexOfKey(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 181
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 183
    return v0

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .param p2, "hash"    # I
    .param p3, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 147
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 148
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 6
    .param p3, "hash"    # I
    .param p4, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 158
    .local v0, "thisHash":I
    if-eq v0, p3, :cond_0

    .line 160
    new-instance v1, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v1, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .local v2, "keyIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 164
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "newValues":[Ljava/lang/Object;, "[TV;"
    aput-object p1, v1, v2

    .line 167
    aput-object p2, v3, v2

    .line 168
    new-instance v4, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    invoke-direct {v4, v1, v3}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v4

    .line 171
    .end local v1    # "newKeys":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "newValues":[Ljava/lang/Object;, "[TV;"
    :cond_1
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 172
    .restart local v1    # "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 173
    .restart local v3    # "newValues":[Ljava/lang/Object;, "[TV;"
    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v5, v4

    aput-object p1, v1, v5

    .line 174
    array-length v4, v4

    aput-object p2, v3, v4

    .line 175
    new-instance v4, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    invoke-direct {v4, v1, v3}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public size()I
    .locals 1

    .line 141
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "valuesSb":Ljava/lang/StringBuilder;
    const-string v1, "CollisionLeaf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 194
    const-string v2, "(key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
