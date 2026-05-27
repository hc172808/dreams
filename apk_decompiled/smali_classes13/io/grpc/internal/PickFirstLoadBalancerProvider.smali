.class public final Lio/grpc/internal/PickFirstLoadBalancerProvider;
.super Lio/grpc/LoadBalancerProvider;
.source "PickFirstLoadBalancerProvider.java"


# static fields
.field private static final NO_CONFIG:Ljava/lang/String; = "no service config"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/grpc/LoadBalancerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "pick_first"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 40
    const/4 v0, 0x5

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 50
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer;

    invoke-direct {v0, p1}, Lio/grpc/internal/PickFirstLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    return-object v0
.end method

.method public parseLoadBalancingPolicyConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 56
    .local p1, "rawLoadBalancingPolicyConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "no service config"

    invoke-static {v0}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    return-object v0
.end method
