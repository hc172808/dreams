.class public final Lio/reactivex/internal/operators/flowable/FlowableZipIterable;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field final other:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Ljava/lang/Iterable;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable<TT;TU;TV;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TU;>;"
    .local p3, "zipper":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TV;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable;->other:Ljava/lang/Iterable;

    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    .line 37
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable<TT;TU;TV;>;"
    .local p1, "t":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TV;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable;->other:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned by other is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    nop

    .line 54
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .local v1, "b":Z
    nop

    .line 61
    if-nez v1, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable;->source:Lio/reactivex/Flowable;

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    invoke-direct {v3, p1, v0, v4}, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;Lio/reactivex/functions/BiFunction;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 67
    return-void

    .line 55
    .end local v1    # "b":Z
    :catchall_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 57
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 58
    return-void

    .line 45
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 48
    return-void
.end method
