.class public final Lio/grpc/internal/TransportTracer$FlowControlWindows;
.super Ljava/lang/Object;
.source "TransportTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowControlWindows"
.end annotation


# instance fields
.field public final localBytes:J

.field public final remoteBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "localBytes"    # J
    .param p3, "remoteBytes"    # J

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide p1, p0, Lio/grpc/internal/TransportTracer$FlowControlWindows;->localBytes:J

    .line 148
    iput-wide p3, p0, Lio/grpc/internal/TransportTracer$FlowControlWindows;->remoteBytes:J

    .line 149
    return-void
.end method
