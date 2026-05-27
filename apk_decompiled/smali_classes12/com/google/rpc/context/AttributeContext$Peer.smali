.class public final Lcom/google/rpc/context/AttributeContext$Peer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Peer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Peer$Builder;,
        Lcom/google/rpc/context/AttributeContext$Peer$LabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Peer;",
        "Lcom/google/rpc/context/AttributeContext$Peer$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

.field public static final IP_FIELD_NUMBER:I = 0x1

.field public static final LABELS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Peer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final PRINCIPAL_FIELD_NUMBER:I = 0x7

.field public static final REGION_CODE_FIELD_NUMBER:I = 0x8


# instance fields
.field private ip_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port_:J

.field private principal_:Ljava/lang/String;

.field private regionCode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1116
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Peer;-><init>()V

    .line 1119
    .local v0, "defaultInstance":Lcom/google/rpc/context/AttributeContext$Peer;
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 1120
    const-class v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1122
    .end local v0    # "defaultInstance":Lcom/google/rpc/context/AttributeContext$Peer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 304
    nop

    .line 306
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 187
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 178
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setRegionCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 178
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearRegionCode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setRegionCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 178
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearIp()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/context/AttributeContext$Peer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # J

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Peer;->setPort(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 178
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearPort()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 178
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setPrincipal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/context/AttributeContext$Peer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 178
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->clearPrincipal()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/context/AttributeContext$Peer;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->setPrincipalBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearIp()V
    .locals 1

    .line 238
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 239
    return-void
.end method

.method private clearPort()V
    .locals 2

    .line 290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    .line 291
    return-void
.end method

.method private clearPrincipal()V
    .locals 1

    .line 464
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 465
    return-void
.end method

.method private clearRegionCode()V
    .locals 1

    .line 541
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1125
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 635
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 638
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Peer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Peer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 576
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 588
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Peer;",
            ">;"
        }
    .end annotation

    .line 1131
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 228
    return-void
.end method

.method private setIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 250
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Peer;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 251
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    .line 253
    return-void
.end method

.method private setPort(J)V
    .locals 0
    .param p1, "value"    # J

    .line 279
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    .line 280
    return-void
.end method

.method private setPrincipal(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 452
    return-void
.end method

.method private setPrincipalBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 478
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Peer;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 479
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    .line 481
    return-void
.end method

.method private setRegionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 529
    return-void
.end method

.method private setRegionCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 555
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Peer;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 556
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    .line 558
    return-void
.end method


# virtual methods
.method public containsLabels(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1106
    :pswitch_0
    return-object v2

    .line 1103
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1088
    :pswitch_2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1089
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/context/AttributeContext$Peer;>;"
    if-nez v0, :cond_1

    .line 1090
    const-class v1, Lcom/google/rpc/context/AttributeContext$Peer;

    monitor-enter v1

    .line 1091
    :try_start_0
    sget-object v2, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1092
    if-nez v0, :cond_0

    .line 1093
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1096
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1098
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1100
    :cond_1
    :goto_0
    return-object v0

    .line 1085
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/context/AttributeContext$Peer;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object v0

    .line 1070
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ip_"

    aput-object v3, v0, v2

    const-string v2, "port_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "labels_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/rpc/context/AttributeContext$Peer$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "principal_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "regionCode_"

    aput-object v2, v0, v1

    .line 1078
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0008\u0005\u0001\u0000\u0000\u0001\u0208\u0002\u0002\u00062\u0007\u0208\u0008\u0208"

    .line 1081
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/context/AttributeContext$Peer;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/context/AttributeContext$Peer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1067
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    invoke-direct {v0, v2}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object v0

    .line 1064
    :pswitch_6
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Peer;-><init>()V

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

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->ip_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    nop

    .line 356
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 355
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    nop

    .line 372
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 373
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    nop

    .line 388
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 389
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 390
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getPort()J
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->port_:J

    return-wide v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->principal_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer;->regionCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
