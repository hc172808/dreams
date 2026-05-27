.class final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailingPicker"
.end annotation


# instance fields
.field private final failure:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 0
    .param p1, "failure"    # Lio/grpc/Status;

    .line 352
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 353
    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;->failure:Lio/grpc/Status;

    .line 354
    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 358
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;->failure:Lio/grpc/Status;

    invoke-static {v0}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method
