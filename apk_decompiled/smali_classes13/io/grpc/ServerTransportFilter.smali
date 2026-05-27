.class public abstract Lio/grpc/ServerTransportFilter;
.super Ljava/lang/Object;
.source "ServerTransportFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;

    .line 46
    return-object p1
.end method

.method public transportTerminated(Lio/grpc/Attributes;)V
    .locals 0
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;

    .line 56
    return-void
.end method
