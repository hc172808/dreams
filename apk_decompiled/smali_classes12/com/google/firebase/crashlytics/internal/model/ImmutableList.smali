.class public final Lcom/google/firebase/crashlytics/internal/model/ImmutableList;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final immutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "mutableList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 37
    .local p0, "mutableList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs from([Ljava/lang/Object;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 32
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 115
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 125
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    .line 64
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 48
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 70
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

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

    .line 75
    .local p0, "this":Lcom/google/firebase/crashlytics/internal/model/ImmutableList;, "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->immutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
