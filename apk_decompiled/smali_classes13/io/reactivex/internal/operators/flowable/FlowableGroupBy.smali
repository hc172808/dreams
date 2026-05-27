.class public final Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Lio/reactivex/flowables/GroupedFlowable<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final mapFactory:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZLio/reactivex/functions/Function;)V
    .locals 0
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;IZ",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy<TT;TK;TV;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "keySelector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TK;>;"
    .local p3, "valueSelector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TV;>;"
    .local p6, "mapFactory":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/functions/Consumer<Ljava/lang/Object;>;+Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->keySelector:Lio/reactivex/functions/Function;

    .line 48
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->valueSelector:Lio/reactivex/functions/Function;

    .line 49
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->bufferSize:I

    .line 50
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->delayError:Z

    .line 51
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->mapFactory:Lio/reactivex/functions/Function;

    .line 52
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/flowables/GroupedFlowable<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy<TT;TK;TV;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/flowables/GroupedFlowable<TK;TV;>;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->mapFactory:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "evictedGroups":Ljava/util/Queue;, "Ljava/util/Queue<Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    goto :goto_0

    .line 66
    .end local v0    # "evictedGroups":Ljava/util/Queue;, "Ljava/util/Queue<Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    .end local v1    # "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 67
    .restart local v0    # "evictedGroups":Ljava/util/Queue;, "Ljava/util/Queue<Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;-><init>(Ljava/util/Queue;)V

    .line 68
    .local v1, "evictionAction":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->mapFactory:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 75
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    :goto_0
    nop

    .line 76
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->keySelector:Lio/reactivex/functions/Function;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->valueSelector:Lio/reactivex/functions/Function;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->bufferSize:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->delayError:Z

    move-object v3, v2

    move-object v4, p1

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZLjava/util/Map;Ljava/util/Queue;)V

    .line 78
    .local v2, "subscriber":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->source:Lio/reactivex/Flowable;

    invoke-virtual {v3, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 79
    return-void

    .line 70
    .end local v0    # "evictedGroups":Ljava/util/Queue;, "Ljava/util/Queue<Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    .end local v1    # "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    .end local v2    # "subscriber":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 73
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method
