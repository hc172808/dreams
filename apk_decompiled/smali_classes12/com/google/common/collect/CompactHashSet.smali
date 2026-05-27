.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
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
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient modCount:I

.field private transient size:I

.field private transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 165
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 167
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 174
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 69
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 85
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 86
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 99
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .line 218
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method

.method private static getNext(J)I
    .locals 1
    .param p0, "entry"    # J

    .line 223
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .line 214
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .locals 3
    .param p0, "size"    # I

    .line 208
    new-array v0, p0, [J

    .line 209
    .local v0, "array":[J
    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 210
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .line 202
    new-array v0, p0, [I

    .line 203
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 204
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

    .line 552
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 553
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 554
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 557
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 560
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 555
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

.method private remove(Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 356
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 357
    .local v0, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v1, v0

    .line 358
    .local v1, "next":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 359
    return v2

    .line 361
    :cond_0
    const/4 v4, -0x1

    .line 363
    .local v4, "last":I
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    if-ne v4, v3, :cond_1

    .line 366
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    aput v3, v2, v0

    goto :goto_1

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v2, v4

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    invoke-static {v5, v6, v3}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 372
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(I)V

    .line 373
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 374
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 375
    return v3

    .line 377
    :cond_2
    move v4, v1

    .line 378
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 379
    if-ne v1, v3, :cond_3

    .line 380
    return v2

    .line 379
    :cond_3
    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 284
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v0

    .line 285
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 286
    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 287
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 288
    const v1, 0x7fffffff

    .line 290
    :cond_0
    if-eq v1, v0, :cond_1

    .line 291
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 294
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 16
    .param p1, "newCapacity"    # I

    .line 312
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v1

    .line 313
    .local v1, "newTable":[I
    iget-object v2, v0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 315
    .local v2, "entries":[J
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 316
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, v0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v4, v5, :cond_0

    .line 317
    aget-wide v5, v2, v4

    .line 318
    .local v5, "oldEntry":J
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v7

    .line 319
    .local v7, "hash":I
    and-int v8, v7, v3

    .line 320
    .local v8, "tableIndex":I
    aget v9, v1, v8

    .line 321
    .local v9, "next":I
    aput v4, v1, v8

    .line 322
    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide v12, 0xffffffffL

    int-to-long v14, v9

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    aput-wide v10, v2, v4

    .line 316
    .end local v5    # "oldEntry":J
    .end local v7    # "hash":I
    .end local v8    # "tableIndex":I
    .end local v9    # "next":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "i":I
    :cond_0
    iput-object v1, v0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 326
    return-void
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .line 228
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

    .line 543
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 544
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 545
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 238
    .local v0, "entries":[J
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 240
    .local v1, "elements":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 241
    .local v2, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    .line 242
    .local v3, "tableIndex":I
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 243
    .local v4, "newEntryIndex":I
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v6, v5, v3

    .line 244
    .local v6, "next":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 245
    aput v4, v5, v3

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    move v5, v6

    .line 251
    .local v5, "last":I
    aget-wide v8, v0, v6

    .line 252
    .local v8, "entry":J
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v10

    if-ne v10, v2, :cond_2

    aget-object v10, v1, v6

    invoke-static {p1, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 253
    const/4 v7, 0x0

    return v7

    .line 255
    :cond_2
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v6

    .line 256
    if-ne v6, v7, :cond_5

    .line 257
    invoke-static {v8, v9, v4}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v0, v5

    .line 259
    .end local v5    # "last":I
    .end local v8    # "entry":J
    :goto_1
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 262
    add-int/lit8 v5, v4, 0x1

    .line 263
    .local v5, "newSize":I
    invoke-direct {p0, v5}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 264
    invoke-virtual {p0, v4, p1, v2}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 265
    iput v5, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 266
    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v7, v7

    .line 267
    .local v7, "oldCapacity":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v7, v8, v9}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 268
    mul-int/lit8 v8, v7, 0x2

    invoke-direct {p0, v8}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 270
    :cond_3
    iget v8, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 271
    return v9

    .line 260
    .end local v5    # "newSize":I
    .end local v7    # "oldCapacity":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    .local v5, "last":I
    .restart local v8    # "entry":J
    :cond_5
    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 436
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()V
    .locals 3

    .line 191
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 193
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 194
    .local v0, "expectedSize":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 195
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 197
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 198
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public clear()V
    .locals 6

    .line 532
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 539
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 540
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 330
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    return v1

    .line 333
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .local v0, "hash":I
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v0

    aget v2, v2, v3

    .line 335
    .local v2, "next":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v2

    .line 337
    .local v4, "entry":J
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    const/4 v1, 0x1

    return v1

    .line 340
    :cond_1
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v2

    .line 341
    .end local v4    # "entry":J
    goto :goto_0

    .line 342
    :cond_2
    return v1
.end method

.method firstEntryIndex()I
    .locals 1

    .line 423
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 427
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

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

    .line 180
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 181
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 182
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v1, p3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 279
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 280
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 489
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .locals 11
    .param p1, "dstIndex"    # I

    .line 387
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 388
    .local v0, "srcIndex":I
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_1

    .line 390
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 391
    aput-object v3, v4, v0

    .line 394
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v0

    .line 395
    .local v4, "lastEntry":J
    aput-wide v4, v3, p1

    .line 396
    aput-wide v1, v3, v0

    .line 400
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int v6, v1, v2

    .line 401
    .local v6, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v2, v1, v6

    .line 402
    .local v2, "lastNext":I
    if-ne v2, v0, :cond_0

    .line 404
    aput p1, v1, v6

    goto :goto_0

    .line 410
    :cond_0
    move v1, v2

    .line 411
    .local v1, "previous":I
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v7, v3, v2

    move-wide v9, v7

    .local v9, "entry":J
    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v2

    .line 412
    if-ne v2, v0, :cond_0

    .line 414
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v9, v10, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v7

    aput-wide v7, v3, v1

    .line 416
    .end local v1    # "previous":I
    .end local v2    # "lastNext":I
    .end local v4    # "lastEntry":J
    .end local v6    # "tableIndex":I
    .end local v9    # "entry":J
    :goto_0
    goto :goto_1

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v4, p1

    .line 418
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v1, v3, p1

    .line 420
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 186
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 348
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 301
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 303
    .local v0, "entries":[J
    array-length v1, v0

    .line 304
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 305
    if-le p1, v1, :cond_0

    .line 306
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 308
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 309
    return-void
.end method

.method public size()I
    .locals 1

    .line 484
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 494
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 504
    array-length v0, p1

    if-lez v0, :cond_0

    .line 505
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 507
    :cond_0
    return-object p1

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 3

    .line 517
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 521
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 522
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 524
    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 525
    .local v1, "minimumTableSize":I
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 526
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 528
    :cond_2
    return-void
.end method
