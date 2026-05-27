.class Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
.super Lio/grpc/LoadBalancer$Helper;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LbHelperImpl"
.end annotation


# instance fields
.field lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$Helper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 1095
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method

.method private createSubchannelInternal(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;
    .locals 2
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 1136
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3700(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1137
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {v0, v1, p1, p0}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    return-object v0
.end method


# virtual methods
.method public createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 27
    .param p1, "addressGroup"    # Lio/grpc/EquivalentAddressGroup;
    .param p2, "authority"    # Ljava/lang/String;

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$3700(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Channel is terminated"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1193
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$4500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v9

    .line 1194
    .local v9, "oobChannelCreationTime":J
    const/4 v2, 0x0

    const-string v3, "OobChannel"

    invoke-static {v3, v2}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v2

    .line 1195
    .local v2, "oobLogId":Lio/grpc/InternalLogId;
    nop

    .line 1196
    const-string v3, "Subchannel-OOB"

    move-object/from16 v15, p2

    invoke-static {v3, v15}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v26

    .line 1197
    .local v26, "subchannelLogId":Lio/grpc/InternalLogId;
    new-instance v11, Lio/grpc/internal/ChannelTracer;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1199
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OobChannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v11

    move-object v4, v2

    move-wide v6, v9

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    move-object v8, v11

    .line 1201
    .local v8, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    new-instance v3, Lio/grpc/internal/OobChannel;

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1202
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$4700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ObjectPool;

    move-result-object v13

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1203
    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$4800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v16

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v18

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$4500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v19

    move-object v11, v3

    move-object/from16 v12, p2

    move-object v15, v4

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Lio/grpc/internal/OobChannel;-><init>(Ljava/lang/String;Lio/grpc/internal/ObjectPool;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/SynchronizationContext;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalChannelz;Lio/grpc/internal/TimeProvider;)V

    move-object v15, v3

    .line 1204
    .local v15, "oobChannel":Lio/grpc/internal/OobChannel;
    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ChannelTracer;

    move-result-object v3

    new-instance v4, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 1205
    const-string v5, "Child OobChannel created"

    invoke-virtual {v4, v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v4

    sget-object v5, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 1206
    invoke-virtual {v4, v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v4

    .line 1207
    invoke-virtual {v4, v9, v10}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v4

    .line 1208
    invoke-virtual {v4, v15}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setChannelRef(Lio/grpc/InternalWithLogId;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v4

    .line 1209
    invoke-virtual {v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v4

    .line 1204
    invoke-virtual {v3, v4}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 1210
    new-instance v11, Lio/grpc/internal/ChannelTracer;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1211
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subchannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v3, v11

    move-object/from16 v4, v26

    move-object v14, v8

    .end local v8    # "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v14, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    .line 1213
    .local v3, "subchannelTracer":Lio/grpc/internal/ChannelTracer;
    new-instance v4, Lio/grpc/internal/ChannelLoggerImpl;

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$4500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lio/grpc/internal/ChannelLoggerImpl;-><init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V

    move-object/from16 v25, v4

    .line 1230
    .local v25, "subchannelLogger":Lio/grpc/ChannelLogger;
    new-instance v4, Lio/grpc/internal/InternalSubchannel;

    .line 1231
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1232
    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$5200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;

    move-result-object v6

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v16

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1233
    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v7

    invoke-interface {v7}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v17

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$5400(Lio/grpc/internal/ManagedChannelImpl;)Lcom/google/common/base/Supplier;

    move-result-object v18

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v8, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;

    invoke-direct {v8, v0, v15}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/OobChannel;)V

    iget-object v11, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1236
    invoke-static {v11}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v21

    iget-object v11, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1237
    invoke-static {v11}, Lio/grpc/internal/ManagedChannelImpl;->access$4800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v11

    invoke-interface {v11}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v22

    move-object v11, v4

    move-object/from16 v13, p2

    move-object v1, v14

    .end local v14    # "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v1, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    move-object v14, v5

    move-object v5, v15

    .end local v15    # "oobChannel":Lio/grpc/internal/OobChannel;
    .local v5, "oobChannel":Lio/grpc/internal/OobChannel;
    move-object v15, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v3

    move-object/from16 v24, v26

    invoke-direct/range {v11 .. v25}, Lio/grpc/internal/InternalSubchannel;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lio/grpc/SynchronizationContext;Lio/grpc/internal/InternalSubchannel$Callback;Lio/grpc/InternalChannelz;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger;)V

    .line 1241
    .local v4, "internalSubchannel":Lio/grpc/internal/InternalSubchannel;
    new-instance v6, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v6}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 1242
    const-string v7, "Child Subchannel created"

    invoke-virtual {v6, v7}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v6

    sget-object v7, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 1243
    invoke-virtual {v6, v7}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v6

    .line 1244
    invoke-virtual {v6, v9, v10}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v6

    .line 1245
    invoke-virtual {v6, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSubchannelRef(Lio/grpc/InternalWithLogId;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v6

    .line 1246
    invoke-virtual {v6}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v6

    .line 1241
    invoke-virtual {v1, v6}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 1247
    iget-object v6, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1248
    iget-object v6, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1249
    invoke-virtual {v5, v4}, Lio/grpc/internal/OobChannel;->setSubchannel(Lio/grpc/internal/InternalSubchannel;)V

    .line 1264
    iget-object v6, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v7, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1AddOobChannel;

    invoke-direct {v7, v0, v5}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1AddOobChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/OobChannel;)V

    invoke-virtual {v6, v7}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1265
    return-object v5
.end method

.method public bridge synthetic createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 0

    .line 1095
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/AbstractSubchannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/internal/AbstractSubchannel;

    move-result-object p1

    return-object p1
.end method

.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/AbstractSubchannel;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 1130
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 1131
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannelInternal(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    move-result-object v0

    return-object v0
.end method

.method public createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/internal/AbstractSubchannel;
    .locals 2
    .param p2, "attrs"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            ")",
            "Lio/grpc/internal/AbstractSubchannel;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1102
    .local p1, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const-string v1, "createSubchannel()"

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V

    .line 1104
    const-string v0, "addressGroups"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v0, "attrs"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    nop

    .line 1107
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    .line 1109
    invoke-virtual {v0, p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v0

    .line 1106
    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannelInternal(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    move-result-object v0

    .line 1112
    .local v0, "subchannel":Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V

    .line 1124
    .local v1, "listener":Lio/grpc/LoadBalancer$SubchannelStateListener;
    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->access$4300(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 1125
    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1277
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 1298
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverArgs()Lio/grpc/NameResolver$Args;
    .locals 1

    .line 1303
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverFactory()Lio/grpc/NameResolver$Factory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1283
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Factory;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverRegistry()Lio/grpc/NameResolverRegistry;
    .locals 1

    .line 1308
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolverRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1293
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronizationContext()Lio/grpc/SynchronizationContext;
    .locals 1

    .line 1288
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method public refreshNameResolution()V
    .locals 2

    .line 1168
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const-string v1, "refreshNameResolution()"

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1177
    return-void
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 2
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
    .param p2, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 1143
    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v0, "newPicker"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const-string v1, "updateBalancingState()"

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/ConnectivityState;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1164
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V
    .locals 2
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .param p2, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 1270
    instance-of v0, p1, Lio/grpc/internal/OobChannel;

    const-string v1, "channel must have been returned from createOobChannel"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1272
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/OobChannel;

    invoke-virtual {v0, p2}, Lio/grpc/internal/OobChannel;->updateAddresses(Lio/grpc/EquivalentAddressGroup;)V

    .line 1273
    return-void
.end method

.method public updateSubchannelAddresses(Lio/grpc/LoadBalancer$Subchannel;Ljava/util/List;)V
    .locals 2
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$Subchannel;",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    instance-of v0, p1, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    const-string v1, "subchannel must have been returned from createSubchannel"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1185
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const-string v1, "updateSubchannelAddresses()"

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getInternalSubchannel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, p2}, Lio/grpc/internal/InternalSubchannel;->updateAddresses(Ljava/util/List;)V

    .line 1187
    return-void
.end method
