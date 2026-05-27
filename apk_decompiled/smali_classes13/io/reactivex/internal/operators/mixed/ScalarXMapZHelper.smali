.class final Lio/reactivex/internal/operators/mixed/ScalarXMapZHelper;
.super Ljava/lang/Object;
.source "ScalarXMapZHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static tryAsCompletable(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/CompletableObserver;)Z
    .locals 6
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "observer"    # Lio/reactivex/CompletableObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/CompletableObserver;",
            ")Z"
        }
    .end annotation

    .line 54
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/CompletableSource;>;"
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 57
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v1, 0x0

    .line 59
    .local v1, "cs":Lio/reactivex/CompletableSource;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 61
    invoke-interface {p1, v3}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/CompletableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 67
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    nop

    .line 69
    if-nez v1, :cond_1

    .line 70
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v1, p2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 74
    :goto_0
    return v2

    .line 63
    :catchall_0
    move-exception v3

    .line 64
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 65
    invoke-static {v3, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 66
    return v2

    .line 76
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v1    # "cs":Lio/reactivex/CompletableSource;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static tryAsMaybe(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z
    .locals 6
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/Observer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 93
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/MaybeSource<+TR;>;>;"
    .local p2, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 95
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 96
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v1, 0x0

    .line 98
    .local v1, "cs":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 100
    invoke-interface {p1, v3}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null MaybeSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/MaybeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 106
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    nop

    .line 108
    if-nez v1, :cond_1

    .line 109
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p2}, Lio/reactivex/internal/operators/maybe/MaybeToObservable;->create(Lio/reactivex/Observer;)Lio/reactivex/MaybeObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 113
    :goto_0
    return v2

    .line 102
    :catchall_0
    move-exception v3

    .line 103
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 104
    invoke-static {v3, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 105
    return v2

    .line 115
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v1    # "cs":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static tryAsSingle(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z
    .locals 6
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;",
            "Lio/reactivex/Observer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 132
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/SingleSource<+TR;>;>;"
    .local p2, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 134
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 135
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "cs":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 139
    invoke-interface {p1, v3}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null SingleSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 145
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    nop

    .line 147
    if-nez v1, :cond_1

    .line 148
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p2}, Lio/reactivex/internal/operators/single/SingleToObservable;->create(Lio/reactivex/Observer;)Lio/reactivex/SingleObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 152
    :goto_0
    return v2

    .line 141
    :catchall_0
    move-exception v3

    .line 142
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 143
    invoke-static {v3, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 144
    return v2

    .line 154
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v1    # "cs":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
