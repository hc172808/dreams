.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectableFlowableReplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/ConnectableFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cf:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observable:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/Flowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;",
            "Lio/reactivex/Flowable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay<TT;>;"
    .local p1, "cf":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<TT;>;"
    .local p2, "observable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

    .line 1147
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->cf:Lio/reactivex/flowables/ConnectableFlowable;

    .line 1148
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->observable:Lio/reactivex/Flowable;

    .line 1149
    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 1153
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay<TT;>;"
    .local p1, "connection":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/disposables/Disposable;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->cf:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-virtual {v0, p1}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    .line 1154
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1158
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->observable:Lio/reactivex/Flowable;

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 1159
    return-void
.end method
