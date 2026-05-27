.class final Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableConcatWithMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatWithObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1b1d064eff7fbe78L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field inMaybe:Z

.field other:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/MaybeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "other":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->other:Lio/reactivex/MaybeSource;

    .line 57
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 98
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->inMaybe:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->inMaybe:Z

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 89
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->other:Lio/reactivex/MaybeSource;

    .line 90
    .local v1, "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->other:Lio/reactivex/MaybeSource;

    .line 91
    invoke-interface {v1, p0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 93
    .end local v1    # "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->inMaybe:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 64
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

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 75
    return-void
.end method
