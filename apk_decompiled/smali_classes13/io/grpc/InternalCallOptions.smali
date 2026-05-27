.class public final Lio/grpc/InternalCallOptions;
.super Ljava/lang/Object;
.source "InternalCallOptions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWaitForReady(Lio/grpc/CallOptions;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "callOptions"    # Lio/grpc/CallOptions;

    .line 30
    invoke-virtual {p0}, Lio/grpc/CallOptions;->getWaitForReady()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
