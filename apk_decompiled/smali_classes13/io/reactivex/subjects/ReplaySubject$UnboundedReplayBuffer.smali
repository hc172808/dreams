.class final Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;
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
    name = "UnboundedReplayBuffer"
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
.field private static final serialVersionUID:J = -0xa2f4068c73be4b3L


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile done:Z

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacityHint"    # I

    .line 638
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 640
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 646
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 650
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->trimHead()V

    .line 652
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 653
    iput-boolean v1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->done:Z

    .line 654
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 665
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 666
    .local v0, "s":I
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 667
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 668
    .local v2, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 669
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    return-object v3

    .line 670
    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 671
    return-object v1

    .line 673
    :cond_2
    add-int/lit8 v1, v0, -0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 677
    .end local v2    # "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 684
    .local v0, "s":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 685
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 686
    aput-object v2, p1, v1

    .line 688
    :cond_0
    return-object p1

    .line 690
    :cond_1
    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 691
    .local v3, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 693
    .local v4, "o":Ljava/lang/Object;
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 694
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 695
    if-nez v0, :cond_4

    .line 696
    array-length v5, p1

    if-eqz v5, :cond_3

    .line 697
    aput-object v2, p1, v1

    .line 699
    :cond_3
    return-object p1

    .line 704
    :cond_4
    array-length v1, p1

    if-ge v1, v0, :cond_5

    .line 705
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 707
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 708
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v1

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v1    # "i":I
    :cond_6
    array-length v1, p1

    if-le v1, v0, :cond_7

    .line 711
    aput-object v2, p1, v0

    .line 714
    :cond_7
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 720
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x1

    .line 725
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 726
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->actual:Lio/reactivex/Observer;

    .line 728
    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 730
    .local v3, "indexObject":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 731
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "index":I
    goto :goto_0

    .line 733
    .end local v4    # "index":I
    :cond_1
    const/4 v4, 0x0

    .line 734
    .restart local v4    # "index":I
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 739
    :goto_0
    iget-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 740
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 741
    return-void

    .line 744
    :cond_2
    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 746
    .local v5, "s":I
    :goto_1
    if-eq v5, v4, :cond_6

    .line 748
    iget-boolean v7, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v7, :cond_3

    .line 749
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 750
    return-void

    .line 753
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 755
    .local v7, "o":Ljava/lang/Object;
    iget-boolean v8, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->done:Z

    if-eqz v8, :cond_5

    .line 756
    add-int/lit8 v8, v4, 0x1

    if-ne v8, v5, :cond_5

    .line 757
    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 758
    add-int/lit8 v8, v4, 0x1

    if-ne v8, v5, :cond_5

    .line 759
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 760
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_2

    .line 762
    :cond_4
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v2, v8}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 764
    :goto_2
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 765
    const/4 v6, 0x1

    iput-boolean v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    .line 766
    return-void

    .line 771
    :cond_5
    invoke-interface {v2, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 772
    nop

    .end local v7    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 773
    goto :goto_1

    .line 775
    :cond_6
    iget v6, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    if-eq v4, v6, :cond_7

    .line 776
    goto :goto_0

    .line 779
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 781
    neg-int v6, v0

    invoke-virtual {p1, v6}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v0

    .line 782
    if-nez v0, :cond_8

    .line 783
    nop

    .line 786
    .end local v5    # "s":I
    return-void

    .line 785
    :cond_8
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .line 790
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    .line 791
    .local v0, "s":I
    if-eqz v0, :cond_2

    .line 792
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 793
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    return v0

    .line 794
    :cond_1
    :goto_0
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 798
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public trimHead()V
    .locals 0

    .line 659
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer<TT;>;"
    return-void
.end method
