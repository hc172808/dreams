.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 88
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 89
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 92
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IZ)V

    .line 93
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "accessOrder"    # Z

    .line 96
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    .line 97
    iput-boolean p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 98
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 116
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 v0, 0x20

    ushr-long v0, v1, v0

    long-to-int v1, v0

    return v1
.end method

.method private setPredecessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 130
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, -0x100000000L

    .line 131
    .local v0, "predMask":J
    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 132
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 135
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 136
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    .line 141
    :goto_0
    if-ne p2, v0, :cond_1

    .line 142
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 144
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    .line 146
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 7
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 125
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, 0xffffffffL

    .line 126
    .local v0, "succMask":J
    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 127
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 157
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 161
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 162
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 163
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    .line 165
    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 197
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method allocArrays()V
    .locals 4

    .line 109
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()V

    .line 110
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    .line 111
    .local v0, "expectedSize":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 112
    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 113
    return-void
.end method

.method public clear()V
    .locals 5

    .line 202
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 206
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 208
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 209
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 192
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 121
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int v0, v1

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 102
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 103
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 104
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 105
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 151
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 152
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 153
    return-void
.end method

.method moveLastEntry(I)V
    .locals 4
    .param p1, "dstIndex"    # I

    .line 169
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 170
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 172
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 173
    if-ge p1, v0, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 178
    return-void
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 182
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 183
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    array-length v1, v0

    .line 184
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 185
    if-ge v1, p1, :cond_0

    .line 186
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 188
    :cond_0
    return-void
.end method
