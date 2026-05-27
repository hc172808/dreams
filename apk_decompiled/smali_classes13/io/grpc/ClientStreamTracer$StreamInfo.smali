.class public final Lio/grpc/ClientStreamTracer$StreamInfo;
.super Ljava/lang/Object;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientStreamTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    }
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final transportAttrs:Lio/grpc/Attributes;


# direct methods
.method constructor <init>(Lio/grpc/Attributes;Lio/grpc/CallOptions;)V
    .locals 1
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "transportAttrs"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->transportAttrs:Lio/grpc/Attributes;

    .line 104
    const-string v0, "callOptions"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    .line 105
    return-void
.end method

.method public static newBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 1

    .line 140
    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    invoke-direct {v0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public getTransportAttrs()Lio/grpc/Attributes;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->transportAttrs:Lio/grpc/Attributes;

    return-object v0
.end method

.method public toBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 2

    .line 128
    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    invoke-direct {v0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;-><init>()V

    .line 129
    .local v0, "builder":Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->transportAttrs:Lio/grpc/Attributes;

    invoke-virtual {v0, v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setTransportAttrs(Lio/grpc/Attributes;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    .line 130
    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    .line 131
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->transportAttrs:Lio/grpc/Attributes;

    .line 146
    const-string v2, "transportAttrs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    .line 147
    const-string v2, "callOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method
