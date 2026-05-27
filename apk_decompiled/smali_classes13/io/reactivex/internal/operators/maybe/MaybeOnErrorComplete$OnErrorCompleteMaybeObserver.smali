.class final Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeOnErrorComplete.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorCompleteMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 54
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 97
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 101
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 92
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "b":Z
    nop

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 87
    :goto_0
    return-void

    .line 76
    .end local v0    # "b":Z
    :catchall_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
