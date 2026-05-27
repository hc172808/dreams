.class public final Lcom/google/api/Monitoring$MonitoringDestination;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Monitoring$MonitoringDestination;",
        "Lcom/google/api/Monitoring$MonitoringDestination$Builder;",
        ">;",
        "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

.field public static final METRICS_FIELD_NUMBER:I = 0x2

.field public static final MONITORED_RESOURCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metrics_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 722
    new-instance v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {v0}, Lcom/google/api/Monitoring$MonitoringDestination;-><init>()V

    .line 725
    .local v0, "defaultInstance":Lcom/google/api/Monitoring$MonitoringDestination;
    sput-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    .line 726
    const-class v1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 728
    .end local v0    # "defaultInstance":Lcom/google/api/Monitoring$MonitoringDestination;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 143
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->setMonitoredResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 135
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->clearMonitoredResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Monitoring$MonitoringDestination;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring$MonitoringDestination;->setMetrics(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addMetrics(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addAllMetrics(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 135
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->clearMetrics()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Monitoring$MonitoringDestination;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addMetricsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllMetrics(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 324
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 326
    return-void
.end method

.method private addMetrics(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 310
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method private addMetricsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 349
    invoke-static {p1}, Lcom/google/api/Monitoring$MonitoringDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 350
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 351
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method private clearMetrics()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 337
    return-void
.end method

.method private clearMonitoredResource()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/google/api/Monitoring$MonitoringDestination;->getDefaultInstance()Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 276
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    nop

    .line 278
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 280
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 731
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 429
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 432
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p0}, Lcom/google/api/Monitoring$MonitoringDestination;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/api/Monitoring$MonitoringDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 737
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMetrics(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 295
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method private setMonitoredResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iput-object p1, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 211
    invoke-static {p1}, Lcom/google/api/Monitoring$MonitoringDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/google/api/Monitoring$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 715
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 712
    :pswitch_0
    return-object v2

    .line 709
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 694
    :pswitch_2
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 695
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Monitoring$MonitoringDestination;>;"
    if-nez v0, :cond_1

    .line 696
    const-class v1, Lcom/google/api/Monitoring$MonitoringDestination;

    monitor-enter v1

    .line 697
    :try_start_0
    sget-object v2, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 698
    if-nez v0, :cond_0

    .line 699
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 702
    sput-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 704
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 706
    :cond_1
    :goto_0
    return-object v0

    .line 691
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Monitoring$MonitoringDestination;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0

    .line 680
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "monitoredResource_"

    aput-object v3, v0, v2

    const-string v2, "metrics_"

    aput-object v2, v0, v1

    .line 684
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u021a"

    .line 687
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v2, v1, v0}, Lcom/google/api/Monitoring$MonitoringDestination;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 677
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;-><init>(Lcom/google/api/Monitoring$1;)V

    return-object v0

    .line 674
    :pswitch_6
    new-instance v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {v0}, Lcom/google/api/Monitoring$MonitoringDestination;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetrics(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 256
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 271
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 272
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
