.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient successor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    .line 119
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 122
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    .line 123
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 63
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 76
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 143
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v0, v0, p1

    return v0
.end method

.method private setPredecessor(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 156
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p2, v0, p1

    .line 157
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 160
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 161
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashSet;->setSuccessor(II)V

    .line 166
    :goto_0
    if-ne p2, v0, :cond_1

    .line 167
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 169
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setPredecessor(II)V

    .line 171
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 152
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v0, p1

    .line 153
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 213
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

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
    .locals 3

    .line 134
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()V

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 136
    .local v0, "expectedSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 137
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 138
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 139
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 140
    return-void
.end method

.method public clear()V
    .locals 4

    .line 228
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 232
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 234
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 235
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    .line 236
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 208
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 148
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 127
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 128
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 129
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 130
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 176
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 177
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 178
    return-void
.end method

.method moveLastEntry(I)V
    .locals 3
    .param p1, "dstIndex"    # I

    .line 182
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 183
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(I)V

    .line 185
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 186
    if-ge p1, v0, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 191
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v2, v1, v0

    .line 192
    return-void
.end method

.method resizeEntries(I)V
    .locals 3
    .param p1, "newCapacity"    # I

    .line 196
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 197
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 198
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 200
    if-ge v1, p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 202
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 204
    :cond_0
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 218
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
