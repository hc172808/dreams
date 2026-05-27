.class final Lio/reactivex/internal/operators/single/SingleCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleCreate.java"

# interfaces
.implements Lio/reactivex/SingleEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleEmitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    .line 54
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 120
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    .line 62
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 63
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    .line 65
    if-nez p1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_1

    .line 71
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    throw v1

    .line 77
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_2
    :goto_1
    return-void
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .locals 1
    .param p1, "c"    # Lio/reactivex/functions/Cancellable;

    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 115
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 109
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCreate$Emitter;, "Lio/reactivex/internal/operators/single/SingleCreate$Emitter<TT;>;"
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_3

    .line 92
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 93
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_3

    .line 95
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 101
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 97
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    throw v1

    .line 104
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
