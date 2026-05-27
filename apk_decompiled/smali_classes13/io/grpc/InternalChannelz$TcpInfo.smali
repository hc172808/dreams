.class public final Lio/grpc/InternalChannelz$TcpInfo;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TcpInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$TcpInfo$Builder;
    }
.end annotation


# instance fields
.field public final advmss:I

.field public final ato:I

.field public final backoff:I

.field public final caState:I

.field public final fackets:I

.field public final lastAckRecv:I

.field public final lastAckSent:I

.field public final lastDataRecv:I

.field public final lastDataSent:I

.field public final lost:I

.field public final options:I

.field public final pmtu:I

.field public final probes:I

.field public final rcvMss:I

.field public final rcvSsthresh:I

.field public final rcvWscale:I

.field public final reordering:I

.field public final retrans:I

.field public final retransmits:I

.field public final rto:I

.field public final rtt:I

.field public final rttvar:I

.field public final sacked:I

.field public final sndCwnd:I

.field public final sndMss:I

.field public final sndSsthresh:I

.field public final sndWscale:I

.field public final state:I

.field public final unacked:I


# direct methods
.method constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 16
    .param p1, "state"    # I
    .param p2, "caState"    # I
    .param p3, "retransmits"    # I
    .param p4, "probes"    # I
    .param p5, "backoff"    # I
    .param p6, "options"    # I
    .param p7, "sndWscale"    # I
    .param p8, "rcvWscale"    # I
    .param p9, "rto"    # I
    .param p10, "ato"    # I
    .param p11, "sndMss"    # I
    .param p12, "rcvMss"    # I
    .param p13, "unacked"    # I
    .param p14, "sacked"    # I
    .param p15, "lost"    # I
    .param p16, "retrans"    # I
    .param p17, "fackets"    # I
    .param p18, "lastDataSent"    # I
    .param p19, "lastAckSent"    # I
    .param p20, "lastDataRecv"    # I
    .param p21, "lastAckRecv"    # I
    .param p22, "pmtu"    # I
    .param p23, "rcvSsthresh"    # I
    .param p24, "rtt"    # I
    .param p25, "rttvar"    # I
    .param p26, "sndSsthresh"    # I
    .param p27, "sndCwnd"    # I
    .param p28, "advmss"    # I
    .param p29, "reordering"    # I

    .line 759
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 760
    move/from16 v1, p1

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->state:I

    .line 761
    move/from16 v2, p2

    iput v2, v0, Lio/grpc/InternalChannelz$TcpInfo;->caState:I

    .line 762
    move/from16 v3, p3

    iput v3, v0, Lio/grpc/InternalChannelz$TcpInfo;->retransmits:I

    .line 763
    move/from16 v4, p4

    iput v4, v0, Lio/grpc/InternalChannelz$TcpInfo;->probes:I

    .line 764
    move/from16 v5, p5

    iput v5, v0, Lio/grpc/InternalChannelz$TcpInfo;->backoff:I

    .line 765
    move/from16 v6, p6

    iput v6, v0, Lio/grpc/InternalChannelz$TcpInfo;->options:I

    .line 766
    move/from16 v7, p7

    iput v7, v0, Lio/grpc/InternalChannelz$TcpInfo;->sndWscale:I

    .line 767
    move/from16 v8, p8

    iput v8, v0, Lio/grpc/InternalChannelz$TcpInfo;->rcvWscale:I

    .line 768
    move/from16 v9, p9

    iput v9, v0, Lio/grpc/InternalChannelz$TcpInfo;->rto:I

    .line 769
    move/from16 v10, p10

    iput v10, v0, Lio/grpc/InternalChannelz$TcpInfo;->ato:I

    .line 770
    move/from16 v11, p11

    iput v11, v0, Lio/grpc/InternalChannelz$TcpInfo;->sndMss:I

    .line 771
    move/from16 v12, p12

    iput v12, v0, Lio/grpc/InternalChannelz$TcpInfo;->rcvMss:I

    .line 772
    move/from16 v13, p13

    iput v13, v0, Lio/grpc/InternalChannelz$TcpInfo;->unacked:I

    .line 773
    move/from16 v14, p14

    iput v14, v0, Lio/grpc/InternalChannelz$TcpInfo;->sacked:I

    .line 774
    move/from16 v15, p15

    iput v15, v0, Lio/grpc/InternalChannelz$TcpInfo;->lost:I

    .line 775
    move/from16 v1, p16

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->retrans:I

    .line 776
    move/from16 v1, p17

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->fackets:I

    .line 777
    move/from16 v1, p18

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->lastDataSent:I

    .line 778
    move/from16 v1, p19

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->lastAckSent:I

    .line 779
    move/from16 v1, p20

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->lastDataRecv:I

    .line 780
    move/from16 v1, p21

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->lastAckRecv:I

    .line 781
    move/from16 v1, p22

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->pmtu:I

    .line 782
    move/from16 v1, p23

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->rcvSsthresh:I

    .line 783
    move/from16 v1, p24

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->rtt:I

    .line 784
    move/from16 v1, p25

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->rttvar:I

    .line 785
    move/from16 v1, p26

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->sndSsthresh:I

    .line 786
    move/from16 v1, p27

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->sndCwnd:I

    .line 787
    move/from16 v1, p28

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->advmss:I

    .line 788
    move/from16 v1, p29

    iput v1, v0, Lio/grpc/InternalChannelz$TcpInfo;->reordering:I

    .line 789
    return-void
.end method
