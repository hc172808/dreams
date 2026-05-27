.class final Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;
.super Lio/reactivex/Observable;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastReplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final connectableFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TU;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TU;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TU;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1030
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;, "Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay<TR;TU;>;"
    .local p1, "connectableFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Lio/reactivex/observables/ConnectableObservable<TU;>;>;"
    .local p2, "selector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable<TU;>;+Lio/reactivex/ObservableSource<TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 1031
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->connectableFactory:Ljava/util/concurrent/Callable;

    .line 1032
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->selector:Lio/reactivex/functions/Function;

    .line 1033
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1040
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;, "Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay<TR;TU;>;"
    .local p1, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->connectableFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned a null ConnectableObservable"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/observables/ConnectableObservable;

    .line 1041
    .local v0, "co":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TU;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->selector:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    .local v1, "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TR;>;"
    nop

    .line 1048
    new-instance v2, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;-><init>(Lio/reactivex/Observer;)V

    .line 1050
    .local v2, "srw":Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;, "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<TR;>;"
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 1052
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;

    invoke-direct {v3, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;-><init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V

    invoke-virtual {v0, v3}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    .line 1053
    return-void

    .line 1042
    .end local v0    # "co":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TU;>;"
    .end local v1    # "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TR;>;"
    .end local v2    # "srw":Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;, "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<TR;>;"
    :catchall_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1044
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 1045
    return-void
.end method
