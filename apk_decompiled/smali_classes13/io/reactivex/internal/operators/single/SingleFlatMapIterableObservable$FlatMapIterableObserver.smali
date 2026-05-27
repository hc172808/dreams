.class final Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SingleFlatMapIterableObservable.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;
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
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TR;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c0d039055ea7eaeL


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

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    .line 71
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    .line 72
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 178
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 156
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 158
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 159
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 163
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 182
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 81
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

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    .line 89
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 96
    .local v2, "has":Z
    nop

    .line 98
    if-nez v2, :cond_0

    .line 99
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 100
    return-void

    .line 103
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    if-eqz v3, :cond_1

    .line 104
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 105
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 146
    return-void

    .line 109
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v3, :cond_2

    .line 110
    return-void

    .line 116
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .local v3, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 123
    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 125
    iget-boolean v4, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v4, :cond_3

    .line 126
    return-void

    .line 133
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .local v4, "b":Z
    nop

    .line 140
    if-nez v4, :cond_4

    .line 141
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 142
    return-void

    .line 144
    .end local v3    # "v":Ljava/lang/Object;, "TR;"
    .end local v4    # "b":Z
    :cond_4
    goto :goto_0

    .line 134
    .restart local v3    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v4

    .line 135
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 136
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 137
    return-void

    .line 117
    .end local v3    # "v":Ljava/lang/Object;, "TR;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 118
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 119
    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 120
    return-void

    .line 92
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .end local v2    # "has":Z
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 94
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 95
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

    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 190
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    .local v2, "v":Ljava/lang/Object;, "TR;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 195
    :cond_0
    return-object v2

    .line 197
    .end local v2    # "v":Ljava/lang/Object;, "TR;"
    :cond_1
    return-object v1
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver<TT;TR;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    .line 170
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
