.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final TRIGGER_PARAMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private name_:Ljava/lang/String;

.field private previousTimestampMillis_:J

.field private timestampMillis_:J

.field private triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2557
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;-><init>()V

    .line 2560
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2561
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2563
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1711
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1712
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    .line 1714
    return-void
.end method

.method static synthetic access$2000()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 1706
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addAllTriggerParams(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 1706
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearTriggerParams()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # I

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->removeTriggerParams(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 1706
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearName()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # J

    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setTimestampMillis(J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 1706
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearTimestampMillis()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # J

    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setPreviousTimestampMillis(J)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 1706
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearPreviousTimestampMillis()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .param p1, "x1"    # I

    .line 1706
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setCount(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 1706
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearCount()V

    return-void
.end method

.method private addAllTriggerParams(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;)V"
        }
    .end annotation

    .line 1827
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;>;"
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 1828
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1830
    return-void
.end method

.method private addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1814
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1815
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 1816
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1817
    return-void
.end method

.method private addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1801
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1802
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 1803
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1804
    return-void
.end method

.method private clearCount()V
    .locals 1

    .line 2045
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    .line 2046
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1907
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    .line 1908
    return-void
.end method

.method private clearPreviousTimestampMillis()V
    .locals 2

    .line 1998
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    .line 1999
    return-void
.end method

.method private clearTimestampMillis()V
    .locals 2

    .line 1960
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    .line 1961
    return-void
.end method

.method private clearTriggerParams()V
    .locals 1

    .line 1839
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1840
    return-void
.end method

.method private ensureTriggerParamsIsMutable()V
    .locals 2

    .line 1773
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1774
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1775
    nop

    .line 1776
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1778
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 2566
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2123
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2126
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2100
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2106
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2064
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2071
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2111
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2118
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2088
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2095
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2051
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2058
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2076
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2083
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
            ">;"
        }
    .end annotation

    .line 2572
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTriggerParams(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1849
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 1850
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1851
    return-void
.end method

.method private setCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2031
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    .line 2032
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1895
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    .line 1896
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1920
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1921
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    .line 1923
    return-void
.end method

.method private setPreviousTimestampMillis(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1987
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    .line 1988
    return-void
.end method

.method private setTimestampMillis(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1949
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    .line 1950
    return-void
.end method

.method private setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 1789
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1790
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 1791
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1792
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2503
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2550
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2547
    :pswitch_0
    return-object v2

    .line 2544
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2529
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lcom/google/protobuf/Parser;

    .line 2530
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;>;"
    if-nez v0, :cond_1

    .line 2531
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    monitor-enter v1

    .line 2532
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2533
    if-nez v0, :cond_0

    .line 2534
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2537
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lcom/google/protobuf/Parser;

    .line 2539
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2541
    :cond_1
    :goto_0
    return-object v0

    .line 2526
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0

    .line 2511
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "triggerParams_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timestampMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "previousTimestampMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count_"

    aput-object v2, v0, v1

    .line 2519
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0004"

    .line 2522
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2508
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object v0

    .line 2505
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 2016
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousTimestampMillis()J
    .locals 2

    .line 1975
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 1937
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    return-wide v0
.end method

.method public getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p1, "index"    # I

    .line 1759
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public getTriggerParamsCount()I
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTriggerParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    .line 1726
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTriggerParamsOrBuilder(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1770
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;

    return-object v0
.end method

.method public getTriggerParamsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
