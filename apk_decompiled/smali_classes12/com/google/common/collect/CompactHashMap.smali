.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final LOAD_FACTOR:F = 1.0f

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient modCount:I

.field private transient size:I

.field private transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 154
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 155
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 156
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 163
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeEntry(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 71
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 71
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .line 208
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method

.method private static getNext(J)I
    .locals 1
    .param p0, "entry"    # J

    .line 213
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .line 204
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 337
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 341
    .local v0, "hash":I
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v0

    aget v2, v2, v3

    .line 342
    .local v2, "next":I
    :goto_0
    if-eq v2, v1, :cond_2

    .line 343
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v3, v2

    .line 344
    .local v4, "entry":J
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    return v2

    .line 347
    :cond_1
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v2

    .line 348
    .end local v4    # "entry":J
    goto :goto_0

    .line 349
    :cond_2
    return v1
.end method

.method private static newEntries(I)[J
    .locals 3
    .param p0, "size"    # I

    .line 198
    new-array v0, p0, [J

    .line 199
    .local v0, "array":[J
    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 200
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .line 192
    new-array v0, p0, [I

    .line 193
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 194
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 777
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 778
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 779
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 782
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 783
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 784
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 785
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 786
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 780
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 377
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 378
    .local v0, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v1, v1, v0

    .line 379
    .local v1, "next":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 380
    return-object v2

    .line 382
    :cond_0
    const/4 v4, -0x1

    .line 384
    .local v4, "last":I
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 387
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 389
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    if-ne v4, v3, :cond_1

    .line 391
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v5

    aput v5, v3, v0

    goto :goto_1

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v5, v3, v4

    aget-wide v7, v3, v1

    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 397
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 398
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 399
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 400
    return-object v2

    .line 402
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    move v4, v1

    .line 403
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v1

    .line 404
    if-ne v1, v3, :cond_3

    .line 405
    return-object v2

    .line 404
    :cond_3
    goto :goto_0
.end method

.method private removeEntry(I)Ljava/lang/Object;
    .locals 4
    .param p1, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 291
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v0, v0

    .line 292
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 293
    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 294
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 295
    const v1, 0x7fffffff

    .line 297
    :cond_0
    if-eq v1, v0, :cond_1

    .line 298
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 301
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 16
    .param p1, "newCapacity"    # I

    .line 320
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v1

    .line 321
    .local v1, "newTable":[I
    iget-object v2, v0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 323
    .local v2, "entries":[J
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 324
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v4, v5, :cond_0

    .line 325
    aget-wide v5, v2, v4

    .line 326
    .local v5, "oldEntry":J
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v7

    .line 327
    .local v7, "hash":I
    and-int v8, v7, v3

    .line 328
    .local v8, "tableIndex":I
    aget v9, v1, v8

    .line 329
    .local v9, "next":I
    aput v4, v1, v8

    .line 330
    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide v12, 0xffffffffL

    int-to-long v14, v9

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    aput-wide v10, v2, v4

    .line 324
    .end local v5    # "oldEntry":J
    .end local v7    # "hash":I
    .end local v8    # "tableIndex":I
    .end local v9    # "next":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v4    # "i":I
    :cond_0
    iput-object v1, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 334
    return-void
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .line 218
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 768
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 769
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 771
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 769
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 0
    .param p1, "index"    # I

    .line 227
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 469
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()V
    .locals 3

    .line 180
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 182
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 183
    .local v0, "expectedSize":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 184
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 186
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 187
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 188
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public clear()V
    .locals 5

    .line 755
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    return-void

    .line 758
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 759
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 762
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    const-wide/16 v3, -0x1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 763
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 764
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 354
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 688
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const/4 v1, 0x1

    return v1

    .line 688
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 704
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 572
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 456
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 362
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 460
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 169
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be non-negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 171
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    int-to-long v1, p4

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 287
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 683
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method keySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .locals 11
    .param p1, "dstIndex"    # I

    .line 417
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 418
    .local v0, "srcIndex":I
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_1

    .line 420
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 421
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 422
    aput-object v3, v4, v0

    .line 423
    aput-object v3, v5, v0

    .line 426
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v3, v0

    .line 427
    .local v4, "lastEntry":J
    aput-wide v4, v3, p1

    .line 428
    aput-wide v1, v3, v0

    .line 432
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    and-int v6, v1, v2

    .line 433
    .local v6, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v2, v1, v6

    .line 434
    .local v2, "lastNext":I
    if-ne v2, v0, :cond_0

    .line 436
    aput p1, v1, v6

    goto :goto_0

    .line 442
    :cond_0
    move v1, v2

    .line 443
    .local v1, "previous":I
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v7, v3, v2

    move-wide v9, v7

    .local v9, "entry":J
    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v2

    .line 444
    if-ne v2, v0, :cond_0

    .line 446
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    invoke-static {v9, v10, p1}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v7

    aput-wide v7, v3, v1

    .line 448
    .end local v1    # "previous":I
    .end local v2    # "lastNext":I
    .end local v4    # "lastEntry":J
    .end local v6    # "tableIndex":I
    .end local v9    # "entry":J
    :goto_0
    goto :goto_1

    .line 449
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v3, v4, p1

    .line 450
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v3, v4, p1

    .line 451
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v1, v3, p1

    .line 453
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 175
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 233
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 237
    .local v0, "entries":[J
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 238
    .local v1, "keys":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 240
    .local v2, "values":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 241
    .local v3, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v4

    and-int/2addr v4, v3

    .line 242
    .local v4, "tableIndex":I
    iget v5, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 243
    .local v5, "newEntryIndex":I
    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v7, v6, v4

    .line 244
    .local v7, "next":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 245
    aput v5, v6, v4

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    move v6, v7

    .line 251
    .local v6, "last":I
    aget-wide v9, v0, v7

    .line 252
    .local v9, "entry":J
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v11

    if-ne v11, v3, :cond_2

    aget-object v11, v1, v7

    invoke-static {p1, v11}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 255
    aget-object v8, v2, v7

    .line 257
    .local v8, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v2, v7

    .line 258
    invoke-virtual {p0, v7}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 259
    return-object v8

    .line 261
    .end local v8    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v7

    .line 262
    if-ne v7, v8, :cond_5

    .line 263
    invoke-static {v9, v10, v5}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v11

    aput-wide v11, v0, v6

    .line 265
    .end local v6    # "last":I
    .end local v9    # "entry":J
    :goto_1
    const v6, 0x7fffffff

    if-eq v5, v6, :cond_4

    .line 268
    add-int/lit8 v6, v5, 0x1

    .line 269
    .local v6, "newSize":I
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    .line 270
    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 271
    iput v6, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 272
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v8, v8

    .line 273
    .local v8, "oldCapacity":I
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v8, v9, v10}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 274
    mul-int/lit8 v9, v8, 0x2

    invoke-direct {p0, v9}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 276
    :cond_3
    iget v9, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 277
    const/4 v9, 0x0

    return-object v9

    .line 266
    .end local v6    # "newSize":I
    .end local v8    # "oldCapacity":I
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 262
    .local v6, "last":I
    .restart local v9    # "entry":J
    :cond_5
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 369
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 308
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 311
    .local v0, "entries":[J
    array-length v1, v0

    .line 312
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 313
    if-le p1, v1, :cond_0

    .line 314
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 316
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 317
    return-void
.end method

.method public size()I
    .locals 1

    .line 678
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public trimToSize()V
    .locals 3

    .line 740
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    return-void

    .line 743
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 744
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 745
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 747
    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 748
    .local v1, "minimumTableSize":I
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 749
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 751
    :cond_2
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 700
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method
