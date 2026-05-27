.class public final Lio/grpc/InternalChannelz$TransportStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransportStats"
.end annotation


# instance fields
.field public final keepAlivesSent:J

.field public final lastLocalStreamCreatedTimeNanos:J

.field public final lastMessageReceivedTimeNanos:J

.field public final lastMessageSentTimeNanos:J

.field public final lastRemoteStreamCreatedTimeNanos:J

.field public final localFlowControlWindow:J

.field public final messagesReceived:J

.field public final messagesSent:J

.field public final remoteFlowControlWindow:J

.field public final streamsFailed:J

.field public final streamsStarted:J

.field public final streamsSucceeded:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJ)V
    .locals 15
    .param p1, "streamsStarted"    # J
    .param p3, "lastLocalStreamCreatedTimeNanos"    # J
    .param p5, "lastRemoteStreamCreatedTimeNanos"    # J
    .param p7, "streamsSucceeded"    # J
    .param p9, "streamsFailed"    # J
    .param p11, "messagesSent"    # J
    .param p13, "messagesReceived"    # J
    .param p15, "keepAlivesSent"    # J
    .param p17, "lastMessageSentTimeNanos"    # J
    .param p19, "lastMessageReceivedTimeNanos"    # J
    .param p21, "localFlowControlWindow"    # J
    .param p23, "remoteFlowControlWindow"    # J

    .line 1079
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsStarted:J

    .line 1081
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lio/grpc/InternalChannelz$TransportStats;->lastLocalStreamCreatedTimeNanos:J

    .line 1082
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lio/grpc/InternalChannelz$TransportStats;->lastRemoteStreamCreatedTimeNanos:J

    .line 1083
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsSucceeded:J

    .line 1084
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsFailed:J

    .line 1085
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lio/grpc/InternalChannelz$TransportStats;->messagesSent:J

    .line 1086
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lio/grpc/InternalChannelz$TransportStats;->messagesReceived:J

    .line 1087
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->keepAlivesSent:J

    .line 1088
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageSentTimeNanos:J

    .line 1089
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageReceivedTimeNanos:J

    .line 1090
    move-wide/from16 v1, p21

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->localFlowControlWindow:J

    .line 1091
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->remoteFlowControlWindow:J

    .line 1092
    return-void
.end method
