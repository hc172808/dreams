.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;
.super Ljava/lang/Object;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final arbiter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "arbiter":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/disposables/Disposable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->actual:Lio/reactivex/Observer;

    .line 283
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->arbiter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 284
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 303
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 304
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 298
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 299
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 288
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->arbiter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 289
    return-void
.end method
