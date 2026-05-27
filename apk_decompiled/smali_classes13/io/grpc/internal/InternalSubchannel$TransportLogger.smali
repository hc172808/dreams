.class final Lio/grpc/internal/InternalSubchannel$TransportLogger;
.super Lio/grpc/ChannelLogger;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransportLogger"
.end annotation


# instance fields
.field logId:Lio/grpc/InternalLogId;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 747
    invoke-direct {p0}, Lio/grpc/ChannelLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "message"    # Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportLogger;->logId:Lio/grpc/InternalLogId;

    invoke-static {v0, p1, p2}, Lio/grpc/internal/ChannelLoggerImpl;->logOnly(Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public varargs log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "messageFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportLogger;->logId:Lio/grpc/InternalLogId;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/ChannelLoggerImpl;->logOnly(Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    return-void
.end method
