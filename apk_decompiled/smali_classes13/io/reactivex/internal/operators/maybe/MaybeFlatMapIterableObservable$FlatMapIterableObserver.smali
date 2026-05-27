.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;
.super Lio/reactivex/internal/observers/BasicQueueDisposable;
.source "MaybeFlatMapIterableObservable.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapIterableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicQueueDisposable<",
        "TR;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field d:Lio/reactivex/disposables/Disposable;

.field volatile it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field outputFused:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicQueueDisposable;-><init>()V

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    .line 69
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 183
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 184
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 164
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 165
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 169
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 158
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 151
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    .line 88
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    .local v2, "has":Z
    nop

    .line 97
    if-nez v2, :cond_0

    .line 98
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 99
    return-void

    .line 102
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 104
    iget-boolean v3, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    if-eqz v3, :cond_1

    .line 105
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 107
    return-void

    .line 111
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v3, :cond_2

    .line 112
    return-void

    .line 118
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .local v3, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 125
    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 127
    iget-boolean v4, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v4, :cond_3

    .line 128
    return-void

    .line 135
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .local v4, "b":Z
    nop

    .line 142
    if-nez v4, :cond_4

    .line 143
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 144
    return-void

    .line 146
    .end local v3    # "v":Ljava/lang/Object;, "TR;"
    .end local v4    # "b":Z
    :cond_4
    goto :goto_0

    .line 136
    .restart local v3    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v4

    .line 137
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 138
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 139
    return-void

    .line 119
    .end local v3    # "v":Ljava/lang/Object;, "TR;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 120
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void

    .line 91
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .end local v2    # "has":Z
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 93
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 196
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "v":Ljava/lang/Object;, "TR;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 201
    :cond_0
    return-object v2

    .line 203
    .end local v2    # "v":Ljava/lang/Object;, "TR;"
    :cond_1
    return-object v1
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 174
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    .line 176
    const/4 v0, 0x2

    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
