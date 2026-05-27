.class public final Lcom/google/api/Usage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Usage.java"

# interfaces
.implements Lcom/google/api/UsageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Usage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Usage;",
        "Lcom/google/api/Usage$Builder;",
        ">;",
        "Lcom/google/api/UsageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Usage;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Usage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_NOTIFICATION_CHANNEL_FIELD_NUMBER:I = 0x7

.field public static final REQUIREMENTS_FIELD_NUMBER:I = 0x1

.field public static final RULES_FIELD_NUMBER:I = 0x6


# instance fields
.field private producerNotificationChannel_:Ljava/lang/String;

.field private requirements_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 981
    new-instance v0, Lcom/google/api/Usage;

    invoke-direct {v0}, Lcom/google/api/Usage;-><init>()V

    .line 984
    .local v0, "defaultInstance":Lcom/google/api/Usage;
    sput-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    .line 985
    const-class v1, Lcom/google/api/Usage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 987
    .end local v0    # "defaultInstance":Lcom/google/api/Usage;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    invoke-static {}, Lcom/google/api/Usage;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Usage;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Usage;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Usage;->setRequirements(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Usage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;

    .line 13
    invoke-direct {p0}, Lcom/google/api/Usage;->clearRules()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Usage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->removeRules(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Usage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->setProducerNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Usage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;

    .line 13
    invoke-direct {p0}, Lcom/google/api/Usage;->clearProducerNotificationChannel()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Usage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->addRequirements(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Usage;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->addAllRequirements(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Usage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;

    .line 13
    invoke-direct {p0}, Lcom/google/api/Usage;->clearRequirements()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->addRequirementsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/UsageRule;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Usage;->setRules(ILcom/google/api/UsageRule;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Lcom/google/api/UsageRule;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->addRules(Lcom/google/api/UsageRule;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/UsageRule;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Usage;->addRules(ILcom/google/api/UsageRule;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Usage;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Usage;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Usage;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllRequirements(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRequirementsIsMutable()V

    .line 138
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 140
    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/UsageRule;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/UsageRule;>;"
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRulesIsMutable()V

    .line 292
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 294
    return-void
.end method

.method private addRequirements(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRequirementsIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private addRequirementsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 165
    invoke-static {p1}, Lcom/google/api/Usage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 166
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRequirementsIsMutable()V

    .line 167
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method private addRules(ILcom/google/api/UsageRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRulesIsMutable()V

    .line 279
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 280
    return-void
.end method

.method private addRules(Lcom/google/api/UsageRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/UsageRule;

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRulesIsMutable()V

    .line 265
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method private clearProducerNotificationChannel()V
    .locals 1

    .line 393
    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    .line 394
    return-void
.end method

.method private clearRequirements()V
    .locals 1

    .line 151
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 152
    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 304
    invoke-static {}, Lcom/google/api/Usage;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 305
    return-void
.end method

.method private ensureRequirementsIsMutable()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 87
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    nop

    .line 89
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 91
    :cond_0
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 234
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/UsageRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    nop

    .line 236
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 238
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Usage;
    .locals 1

    .line 990
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 491
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Usage;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Usage;

    .line 494
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-virtual {v0, p0}, Lcom/google/api/Usage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/api/Usage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/api/Usage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Usage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Usage;",
            ">;"
        }
    .end annotation

    .line 996
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 315
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRulesIsMutable()V

    .line 316
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method private setProducerNotificationChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    iput-object p1, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    .line 377
    return-void
.end method

.method private setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 411
    invoke-static {p1}, Lcom/google/api/Usage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 412
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    .line 414
    return-void
.end method

.method private setRequirements(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRequirementsIsMutable()V

    .line 107
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method private setRules(ILcom/google/api/UsageRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    invoke-direct {p0}, Lcom/google/api/Usage;->ensureRulesIsMutable()V

    .line 252
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/google/api/Usage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 971
    :pswitch_0
    return-object v2

    .line 968
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 953
    :pswitch_2
    sget-object v0, Lcom/google/api/Usage;->PARSER:Lcom/google/protobuf/Parser;

    .line 954
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Usage;>;"
    if-nez v0, :cond_1

    .line 955
    const-class v1, Lcom/google/api/Usage;

    monitor-enter v1

    .line 956
    :try_start_0
    sget-object v2, Lcom/google/api/Usage;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 957
    if-nez v0, :cond_0

    .line 958
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 961
    sput-object v0, Lcom/google/api/Usage;->PARSER:Lcom/google/protobuf/Parser;

    .line 963
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 965
    :cond_1
    :goto_0
    return-object v0

    .line 950
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Usage;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    return-object v0

    .line 937
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "requirements_"

    aput-object v3, v0, v2

    const-string v2, "rules_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/api/UsageRule;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "producerNotificationChannel_"

    aput-object v2, v0, v1

    .line 943
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0007\u0003\u0000\u0002\u0000\u0001\u021a\u0006\u001b\u0007\u0208"

    .line 946
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Usage;->DEFAULT_INSTANCE:Lcom/google/api/Usage;

    invoke-static {v2, v1, v0}, Lcom/google/api/Usage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 934
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Usage$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Usage$Builder;-><init>(Lcom/google/api/Usage$1;)V

    return-object v0

    .line 931
    :pswitch_6
    new-instance v0, Lcom/google/api/Usage;

    invoke-direct {v0}, Lcom/google/api/Usage;-><init>()V

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

.method public getProducerNotificationChannel()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    return-object v0
.end method

.method public getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/api/Usage;->producerNotificationChannel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirements(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 66
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 82
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 83
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/api/Usage;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/UsageRule;
    .locals 1
    .param p1, "index"    # I

    .line 218
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/UsageRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 230
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRuleOrBuilder;

    return-object v0
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/UsageRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/api/Usage;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
