.class final Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableMergeWithSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final OTHER_STATE_CONSUMED_OR_EMPTY:I = 0x2

.field static final OTHER_STATE_HAS_VALUE:I = 0x1

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile disposed:Z

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field volatile mainDone:Z

.field final otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile otherState:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field singleItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->actual:Lio/reactivex/Observer;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;

    .line 81
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 82
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->disposed:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 134
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 136
    :cond_0
    return-void
.end method

.method drain()V
    .locals 1

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 174
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 9

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->actual:Lio/reactivex/Observer;

    .line 178
    .local v0, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v1, 0x1

    .line 182
    .local v1, "missed":I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->disposed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 183
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 184
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 185
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 189
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 190
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 191
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 192
    return-void

    .line 195
    :cond_2
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 196
    .local v2, "os":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 197
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 198
    .local v6, "v":Ljava/lang/Object;, "TT;"
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 199
    iput v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 200
    const/4 v2, 0x2

    .line 201
    invoke-interface {v0, v6}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 204
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDone:Z

    .line 205
    .local v6, "d":Z
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 206
    .local v7, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v3

    .line 207
    .local v8, "v":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 209
    .local v5, "empty":Z
    :goto_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    if-ne v2, v4, :cond_6

    .line 210
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 211
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 212
    return-void

    .line 215
    :cond_6
    if-eqz v5, :cond_7

    .line 216
    nop

    .line 222
    .end local v2    # "os":I
    .end local v5    # "empty":Z
    .end local v6    # "d":Z
    .end local v7    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TT;"
    neg-int v2, v1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->addAndGet(I)I

    move-result v1

    .line 223
    if-nez v1, :cond_0

    .line 224
    nop

    .line 227
    return-void

    .line 219
    .restart local v2    # "os":I
    .restart local v5    # "empty":Z
    .restart local v6    # "d":Z
    .restart local v7    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .restart local v8    # "v":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-interface {v0, v8}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 220
    .end local v2    # "os":I
    .end local v5    # "empty":Z
    .end local v6    # "d":Z
    .end local v7    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 163
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-nez v0, :cond_0

    .line 164
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v2

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 165
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 167
    :cond_0
    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 118
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDone:Z

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drain()V

    .line 120
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 98
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    return-void

    .line 103
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 104
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 87
    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 153
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 155
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 159
    :goto_0
    return-void
.end method

.method otherSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherState:I

    goto :goto_0

    .line 143
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 144
    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->otherState:I

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    return-void

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver;->drainLoop()V

    .line 150
    return-void
.end method
