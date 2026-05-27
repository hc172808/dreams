.class public abstract Lio/grpc/LoadBalancer;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$Factory;,
        Lio/grpc/LoadBalancer$SubchannelStateListener;,
        Lio/grpc/LoadBalancer$Subchannel;,
        Lio/grpc/LoadBalancer$Helper;,
        Lio/grpc/LoadBalancer$CreateSubchannelArgs;,
        Lio/grpc/LoadBalancer$PickResult;,
        Lio/grpc/LoadBalancer$PickSubchannelArgs;,
        Lio/grpc/LoadBalancer$SubchannelPicker;,
        Lio/grpc/LoadBalancer$ResolvedAddresses;
    }
.end annotation


# static fields
.field public static final ATTR_LOAD_BALANCING_CONFIG:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private recursionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    nop

    .line 122
    const-string v0, "io.grpc.LoadBalancer.loadBalancingConfig"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/LoadBalancer;->ATTR_LOAD_BALANCING_CONFIG:Lio/grpc/Attributes$Key;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandleEmptyAddressListFromNameResolution()Z
    .locals 1

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public abstract handleNameResolutionError(Lio/grpc/Status;)V
.end method

.method public handleResolvedAddressGroups(Ljava/util/List;Lio/grpc/Attributes;)V
    .locals 2
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    .local p1, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    if-nez v0, :cond_0

    .line 143
    nop

    .line 144
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lio/grpc/LoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    .line 147
    return-void
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 2
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 161
    iget v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    if-nez v0, :cond_0

    .line 162
    nop

    .line 163
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    .line 162
    invoke-virtual {p0, v0, v1}, Lio/grpc/LoadBalancer;->handleResolvedAddressGroups(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    .line 166
    return-void
.end method

.method public handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    return-void
.end method

.method public requestConnection()V
    .locals 0

    .line 397
    return-void
.end method

.method public abstract shutdown()V
.end method
