.class final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
.super Ljava/lang/Exception;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PolicyException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;

    .line 284
    invoke-direct {p0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;-><init>(Ljava/lang/String;)V

    return-void
.end method
