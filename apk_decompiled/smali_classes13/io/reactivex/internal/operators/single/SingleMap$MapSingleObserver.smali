.class final Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;
.super Ljava/lang/Object;
.source "SingleMap.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final t:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver<TT;TR;>;"
    .local p1, "t":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    .line 46
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 64
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 65
    return-void

    .line 58
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
