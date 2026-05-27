.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;
.super Ljava/lang/Object;
.source "FlowableGroupBy.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EvictionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final evictedGroups:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 424
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction<TK;TV;>;"
    .local p1, "evictedGroups":Ljava/util/Queue;, "Ljava/util/Queue<Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->evictedGroups:Ljava/util/Queue;

    .line 426
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 430
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction<TK;TV;>;"
    .local p1, "value":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->evictedGroups:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction<TK;TV;>;"
    check-cast p1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->accept(Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;)V

    return-void
.end method
