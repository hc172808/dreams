.class public final Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableMergeWithCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Lio/reactivex/CompletableSource;)V
    .locals 0
    .param p2, "other"    # Lio/reactivex/CompletableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/CompletableSource;",
            ")V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable<TT;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;->other:Lio/reactivex/CompletableSource;

    .line 37
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;-><init>(Lio/reactivex/Observer;)V

    .line 42
    .local v0, "parent":Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;, "Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 43
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 44
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;->other:Lio/reactivex/CompletableSource;

    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;

    invoke-interface {v1, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 45
    return-void
.end method
