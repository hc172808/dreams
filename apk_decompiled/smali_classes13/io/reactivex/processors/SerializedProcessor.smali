.class final Lio/reactivex/processors/SerializedProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "SerializedProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/FlowableProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    .local p1, "actual":Lio/reactivex/processors/FlowableProcessor;, "Lio/reactivex/processors/FlowableProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    .line 44
    return-void
.end method


# virtual methods
.method emitLoop()V
    .locals 2

    .line 167
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    :goto_0
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 169
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lorg/reactivestreams/Subscriber;)Z

    .line 177
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 193
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    .line 198
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasComplete()Z

    move-result v0

    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 182
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasSubscribers()Z

    move-result v0

    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 187
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 141
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_1

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    .line 149
    iget-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    if-eqz v1, :cond_3

    .line 150
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 151
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 152
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    move-object v0, v1

    .line 153
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 155
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 156
    monitor-exit p0

    return-void

    .line 158
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_3
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->onComplete()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 109
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 111
    return-void

    .line 114
    :cond_0
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x1

    .local v0, "reportError":Z
    goto :goto_0

    .line 118
    .end local v0    # "reportError":Z
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    .line 119
    iget-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    if-eqz v1, :cond_3

    .line 120
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 121
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 122
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    move-object v0, v1

    .line 123
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 125
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    .line 126
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_3
    const/4 v1, 0x0

    .line 129
    .local v1, "reportError":Z
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    move v0, v1

    .line 131
    .end local v1    # "reportError":Z
    .local v0, "reportError":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 134
    return-void

    .line 136
    :cond_4
    iget-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v1, p1}, Lio/reactivex/processors/FlowableProcessor;->onError(Ljava/lang/Throwable;)V

    .line 137
    return-void

    .line 131
    .end local v0    # "reportError":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_1

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 94
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 95
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    move-object v0, v1

    .line 96
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 98
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 99
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lio/reactivex/processors/SerializedProcessor;->emitLoop()V

    .line 105
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 54
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-nez v0, :cond_3

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .local v0, "cancel":Z
    goto :goto_0

    .line 59
    .end local v0    # "cancel":Z
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 61
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 62
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    move-object v0, v1

    .line 63
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 65
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->subscription(Lorg/reactivestreams/Subscription;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 66
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "cancel":Z
    :goto_0
    monitor-exit p0

    goto :goto_1

    .end local v0    # "cancel":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_3
    const/4 v0, 0x1

    .line 75
    .restart local v0    # "cancel":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 76
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_2

    .line 78
    :cond_4
    iget-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v1, p1}, Lio/reactivex/processors/FlowableProcessor;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 79
    invoke-virtual {p0}, Lio/reactivex/processors/SerializedProcessor;->emitLoop()V

    .line 81
    :goto_2
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/reactivex/processors/SerializedProcessor;, "Lio/reactivex/processors/SerializedProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 49
    return-void
.end method
