.class final Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableSequenceEqual.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/functions/BiPredicate;)V
    .locals 1
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Boolean;>;"
    .local p3, "comparer":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TT;-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 81
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {v0, p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    .line 84
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {v0, p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    .line 85
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 86
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 102
    :cond_0
    return-void
.end method

.method cancelAndClear()V
    .locals 1

    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 109
    return-void
.end method

.method public drain()V
    .locals 13

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 120
    .local v0, "missed":I
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 121
    .local v1, "q1":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 123
    .local v2, "q2":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 125
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 127
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 128
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 132
    .local v3, "ex":Ljava/lang/Throwable;
    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 135
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 136
    return-void

    .line 139
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v4, v4, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    .line 141
    .local v4, "d1":Z
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 142
    .local v5, "a":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_3

    .line 144
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 151
    nop

    .line 152
    iput-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v6

    .line 146
    .local v6, "exc":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 148
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 149
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v8}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 150
    return-void

    .line 154
    .end local v6    # "exc":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 156
    .local v8, "e1":Z
    :goto_3
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v9, v9, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    .line 157
    .local v9, "d2":Z
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 158
    .local v10, "b":Ljava/lang/Object;, "TT;"
    if-nez v10, :cond_5

    .line 160
    :try_start_1
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    .line 167
    nop

    .line 168
    iput-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_4

    .line 161
    :catchall_1
    move-exception v6

    .line 162
    .restart local v6    # "exc":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 164
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 165
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v11

    invoke-interface {v7, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 166
    return-void

    .line 171
    .end local v6    # "exc":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    if-nez v10, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    .line 173
    .local v11, "e2":Z
    :goto_5
    if-eqz v4, :cond_7

    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    if-eqz v11, :cond_7

    .line 174
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->complete(Ljava/lang/Object;)V

    .line 175
    return-void

    .line 177
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v9, :cond_8

    if-eq v8, v11, :cond_8

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 179
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->complete(Ljava/lang/Object;)V

    .line 180
    return-void

    .line 183
    :cond_8
    if-nez v8, :cond_d

    if-eqz v11, :cond_9

    .line 184
    goto :goto_6

    .line 190
    :cond_9
    :try_start_2
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-interface {v6, v5, v10}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    .local v6, "c":Z
    nop

    .line 199
    if-nez v6, :cond_a

    .line 200
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 201
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->complete(Ljava/lang/Object;)V

    .line 202
    return-void

    .line 205
    :cond_a
    const/4 v7, 0x0

    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 206
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 208
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    .line 209
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    .line 210
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v4    # "d1":Z
    .end local v5    # "a":Ljava/lang/Object;, "TT;"
    .end local v6    # "c":Z
    .end local v8    # "e1":Z
    .end local v9    # "d2":Z
    .end local v10    # "b":Ljava/lang/Object;, "TT;"
    .end local v11    # "e2":Z
    goto/16 :goto_1

    .line 191
    .restart local v3    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "d1":Z
    .restart local v5    # "a":Ljava/lang/Object;, "TT;"
    .restart local v8    # "e1":Z
    .restart local v9    # "d2":Z
    .restart local v10    # "b":Ljava/lang/Object;, "TT;"
    .restart local v11    # "e2":Z
    :catchall_2
    move-exception v6

    .line 192
    .local v6, "exc":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 194
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 195
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v12

    invoke-interface {v7, v12}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 196
    return-void

    .line 213
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v4    # "d1":Z
    .end local v5    # "a":Ljava/lang/Object;, "TT;"
    .end local v6    # "exc":Ljava/lang/Throwable;
    .end local v8    # "e1":Z
    .end local v9    # "d2":Z
    .end local v10    # "b":Ljava/lang/Object;, "TT;"
    .end local v11    # "e2":Z
    :cond_b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 214
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 215
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 216
    return-void

    .line 219
    :cond_c
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 220
    .restart local v3    # "ex":Ljava/lang/Throwable;
    if-eqz v3, :cond_d

    .line 221
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->cancelAndClear()V

    .line 223
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 224
    return-void

    .line 228
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_d
    :goto_6
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 229
    if-nez v0, :cond_e

    .line 230
    nop

    .line 233
    .end local v1    # "q1":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v2    # "q2":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    return-void

    .line 232
    :cond_e
    goto/16 :goto_0
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 237
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->drain()V

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 242
    :goto_0
    return-void
.end method

.method subscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    .local p1, "source1":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    .local p2, "source2":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p2, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 91
    return-void
.end method
