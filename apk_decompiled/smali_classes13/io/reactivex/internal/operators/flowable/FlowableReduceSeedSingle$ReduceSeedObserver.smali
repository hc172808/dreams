.class final Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;
.super Ljava/lang/Object;
.source "FlowableReduceSeedSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSeedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    .local p2, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    .local p3, "value":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    .line 66
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 117
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    .line 118
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 107
    .local v0, "v":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 109
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    .line 110
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 97
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 82
    .local v0, "v":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The reducer returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 88
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->onError(Ljava/lang/Throwable;)V

    .line 91
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->s:Lorg/reactivestreams/Subscription;

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 75
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 77
    :cond_0
    return-void
.end method
