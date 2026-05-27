.class final Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf5f291fe2c1030bL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 841
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 842
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    .line 843
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    .line 844
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 845
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 846
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 858
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    .line 859
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 861
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 862
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    .line 863
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->set(Ljava/lang/Object;)V

    .line 865
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->trim()V

    .line 866
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 870
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    .line 871
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 873
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 874
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    .line 875
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->lazySet(Ljava/lang/Object;)V

    .line 877
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->trimHead()V

    .line 878
    iput-boolean v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    .line 879
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 899
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 900
    .local v0, "prev":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 903
    .local v1, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$Node;

    .line 904
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 905
    nop

    .line 911
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v2, v1, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    .line 912
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 913
    const/4 v3, 0x0

    return-object v3

    .line 915
    :cond_0
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 919
    :cond_1
    return-object v2

    .line 916
    :cond_2
    :goto_1
    iget-object v3, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    return-object v3

    .line 907
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :cond_3
    move-object v0, v1

    .line 908
    move-object v1, v2

    .line 909
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 925
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 926
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size()I

    move-result v1

    .line 928
    .local v1, "s":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 929
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 930
    const/4 v3, 0x0

    aput-object v2, p1, v3

    goto :goto_1

    .line 933
    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 934
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 937
    :cond_1
    const/4 v3, 0x0

    .line 938
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 939
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/ReplaySubject$Node;

    .line 940
    .local v4, "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v5, v4, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 941
    add-int/lit8 v3, v3, 0x1

    .line 942
    move-object v0, v4

    .line 943
    .end local v4    # "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    goto :goto_0

    .line 944
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 945
    aput-object v2, p1, v1

    .line 949
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 955
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    return-void

    .line 959
    :cond_0
    const/4 v0, 0x1

    .line 960
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->actual:Lio/reactivex/Observer;

    .line 962
    .local v1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$Node;

    .line 963
    .local v2, "index":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 964
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 970
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 971
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 972
    return-void

    .line 975
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$Node;

    .line 977
    .local v3, "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    if-nez v3, :cond_4

    .line 978
    nop

    .line 1002
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1003
    goto :goto_0

    .line 1006
    :cond_3
    iput-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1008
    neg-int v3, v0

    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v0

    .line 1009
    if-nez v0, :cond_1

    .line 1010
    nop

    .line 1013
    return-void

    .line 981
    .restart local v3    # "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :cond_4
    iget-object v5, v3, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    .line 983
    .local v5, "o":Ljava/lang/Object;
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    if-eqz v6, :cond_6

    .line 984
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 986
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 987
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_1

    .line 989
    :cond_5
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface {v1, v6}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 991
    :goto_1
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 992
    const/4 v4, 0x1

    iput-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    .line 993
    return-void

    .line 997
    :cond_6
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 999
    move-object v2, v3

    .line 1000
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_0
.end method

.method public size()I
    .locals 5

    .line 1017
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 1018
    .local v0, "s":I
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 1019
    .local v1, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :goto_0
    const v2, 0x7fffffff

    if-eq v0, v2, :cond_2

    .line 1020
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$Node;

    .line 1021
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 1022
    iget-object v3, v1, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    .line 1023
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1024
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1028
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1029
    move-object v1, v2

    .line 1030
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1032
    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 2

    .line 849
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 850
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    .line 851
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 852
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 854
    .end local v0    # "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public trimHead()V
    .locals 3

    .line 887
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 888
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 889
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    .line 890
    .local v1, "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/ReplaySubject$Node;->lazySet(Ljava/lang/Object;)V

    .line 891
    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    .line 893
    .end local v1    # "n":Lio/reactivex/subjects/ReplaySubject$Node;, "Lio/reactivex/subjects/ReplaySubject$Node<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
