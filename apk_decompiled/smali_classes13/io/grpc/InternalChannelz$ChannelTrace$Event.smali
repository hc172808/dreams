.class public final Lio/grpc/InternalChannelz$ChannelTrace$Event;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz$ChannelTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;,
        Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;
    }
.end annotation


# instance fields
.field public final channelRef:Lio/grpc/InternalWithLogId;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final description:Ljava/lang/String;

.field public final severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

.field public final subchannelRef:Lio/grpc/InternalWithLogId;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final timestampNanos:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLio/grpc/InternalWithLogId;Lio/grpc/InternalWithLogId;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "severity"    # Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;
    .param p3, "timestampNanos"    # J
    .param p5, "channelRef"    # Lio/grpc/InternalWithLogId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "subchannelRef"    # Lio/grpc/InternalWithLogId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    .line 538
    const-string v0, "severity"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    iput-object v0, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 539
    iput-wide p3, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->timestampNanos:J

    .line 540
    iput-object p5, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->channelRef:Lio/grpc/InternalWithLogId;

    .line 541
    iput-object p6, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->subchannelRef:Lio/grpc/InternalWithLogId;

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLio/grpc/InternalWithLogId;Lio/grpc/InternalWithLogId;Lio/grpc/InternalChannelz$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lio/grpc/InternalWithLogId;
    .param p6, "x4"    # Lio/grpc/InternalWithLogId;
    .param p7, "x5"    # Lio/grpc/InternalChannelz$1;

    .line 521
    invoke-direct/range {p0 .. p6}, Lio/grpc/InternalChannelz$ChannelTrace$Event;-><init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLio/grpc/InternalWithLogId;Lio/grpc/InternalWithLogId;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 551
    instance-of v0, p1, Lio/grpc/InternalChannelz$ChannelTrace$Event;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 552
    move-object v0, p1

    check-cast v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;

    .line 553
    .local v0, "that":Lio/grpc/InternalChannelz$ChannelTrace$Event;
    iget-object v2, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    iget-object v3, v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    iget-object v3, v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 554
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->timestampNanos:J

    iget-wide v4, v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->timestampNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->channelRef:Lio/grpc/InternalWithLogId;

    iget-object v3, v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->channelRef:Lio/grpc/InternalWithLogId;

    .line 556
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->subchannelRef:Lio/grpc/InternalWithLogId;

    iget-object v3, v0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->subchannelRef:Lio/grpc/InternalWithLogId;

    .line 557
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 553
    :goto_0
    return v1

    .line 559
    .end local v0    # "that":Lio/grpc/InternalChannelz$ChannelTrace$Event;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 546
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->timestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->channelRef:Lio/grpc/InternalWithLogId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->subchannelRef:Lio/grpc/InternalWithLogId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 564
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    .line 565
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 566
    const-string v2, "severity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->timestampNanos:J

    .line 567
    const-string v3, "timestampNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->channelRef:Lio/grpc/InternalWithLogId;

    .line 568
    const-string v2, "channelRef"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/InternalChannelz$ChannelTrace$Event;->subchannelRef:Lio/grpc/InternalWithLogId;

    .line 569
    const-string v2, "subchannelRef"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    return-object v0
.end method
