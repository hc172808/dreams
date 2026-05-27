.class final Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableConcatWithSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle;
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
        "Lio/reactivex/SingleObserver<",
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

.field inSingle:Z

.field other:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "other":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Lio/reactivex/SingleSource;

    .line 57
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 94
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->inSingle:Z

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 86
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Lio/reactivex/SingleSource;

    .line 87
    .local v1, "ss":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Lio/reactivex/SingleSource;

    .line 88
    invoke-interface {v1, p0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

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
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->inSingle:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

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
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 75
    return-void
.end method
