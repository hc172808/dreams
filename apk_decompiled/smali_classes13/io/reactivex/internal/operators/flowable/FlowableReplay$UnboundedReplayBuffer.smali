.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .line 625
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 626
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 641
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 642
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 643
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 635
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 636
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 637
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 629
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 630
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 631
    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 647
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<TT;>;"
    monitor-enter p1

    .line 648
    :try_start_0
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 649
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 650
    monitor-exit p1

    return-void

    .line 652
    :cond_0
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 653
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 654
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/reactivestreams/Subscriber;

    .line 657
    .local v0, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    return-void

    .line 660
    :cond_1
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 662
    .local v1, "sourceIndex":I
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 663
    .local v2, "destinationIndexObject":Ljava/lang/Integer;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 665
    .local v4, "destinationIndex":I
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->get()J

    move-result-wide v5

    .line 666
    .local v5, "r":J
    move-wide v7, v5

    .line 667
    .local v7, "r0":J
    const-wide/16 v9, 0x0

    .line 669
    .local v9, "e":J
    :goto_2
    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-eqz v13, :cond_6

    if-ge v4, v1, :cond_6

    .line 670
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 672
    .local v11, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v11, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    .line 673
    return-void

    .line 682
    :cond_3
    nop

    .line 683
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 684
    return-void

    .line 686
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 687
    const-wide/16 v12, 0x1

    sub-long/2addr v5, v12

    .line 688
    add-long/2addr v9, v12

    .line 689
    .end local v11    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 675
    .restart local v11    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 676
    .local v3, "err":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 677
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->dispose()V

    .line 678
    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 679
    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 681
    :cond_5
    return-void

    .line 690
    .end local v3    # "err":Ljava/lang/Throwable;
    .end local v11    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v13, v9, v11

    if-eqz v13, :cond_7

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    .line 692
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v13, v7, v11

    if-eqz v13, :cond_7

    .line 693
    invoke-virtual {p1, v9, v10}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->produced(J)J

    .line 697
    :cond_7
    monitor-enter p1

    .line 698
    :try_start_2
    iget-boolean v11, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    if-nez v11, :cond_8

    .line 699
    iput-boolean v3, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 700
    monitor-exit p1

    return-void

    .line 702
    :cond_8
    iput-boolean v3, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 703
    monitor-exit p1

    .line 704
    .end local v1    # "sourceIndex":I
    .end local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v4    # "destinationIndex":I
    .end local v5    # "r":J
    .end local v7    # "r0":J
    .end local v9    # "e":J
    goto :goto_0

    .line 703
    .restart local v1    # "sourceIndex":I
    .restart local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .restart local v4    # "destinationIndex":I
    .restart local v5    # "r":J
    .restart local v7    # "r0":J
    .restart local v9    # "e":J
    :catchall_1
    move-exception v3

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 653
    .end local v0    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .end local v1    # "sourceIndex":I
    .end local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v4    # "destinationIndex":I
    .end local v5    # "r":J
    .end local v7    # "r0":J
    .end local v9    # "e":J
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
