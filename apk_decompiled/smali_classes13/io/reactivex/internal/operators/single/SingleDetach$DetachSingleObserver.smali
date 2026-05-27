.class final Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;
.super Ljava/lang/Object;
.source "SingleDetach.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;


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

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 49
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 55
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 56
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 86
    .local v0, "a":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 88
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;, "Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 76
    .local v0, "a":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->actual:Lio/reactivex/SingleObserver;

    .line 78
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method
