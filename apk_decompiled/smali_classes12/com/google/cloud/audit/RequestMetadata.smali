.class public final Lcom/google/cloud/audit/RequestMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RequestMetadata.java"

# interfaces
.implements Lcom/google/cloud/audit/RequestMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/audit/RequestMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/cloud/audit/RequestMetadata;",
        "Lcom/google/cloud/audit/RequestMetadata$Builder;",
        ">;",
        "Lcom/google/cloud/audit/RequestMetadataOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALLER_IP_FIELD_NUMBER:I = 0x1

.field public static final CALLER_SUPPLIED_USER_AGENT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cloud/audit/RequestMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callerIp_:Ljava/lang/String;

.field private callerSuppliedUserAgent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 540
    new-instance v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-direct {v0}, Lcom/google/cloud/audit/RequestMetadata;-><init>()V

    .line 543
    .local v0, "defaultInstance":Lcom/google/cloud/audit/RequestMetadata;
    sput-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    .line 544
    const-class v1, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 546
    .end local v0    # "defaultInstance":Lcom/google/cloud/audit/RequestMetadata;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/RequestMetadata;->setCallerIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata;->clearCallerIp()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/RequestMetadata;->setCallerIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/RequestMetadata;->setCallerSuppliedUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata;->clearCallerSuppliedUserAgent()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/cloud/audit/RequestMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/RequestMetadata;->setCallerSuppliedUserAgentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCallerIp()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private clearCallerSuppliedUserAgent()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerSuppliedUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 549
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 276
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/cloud/audit/RequestMetadata;

    .line 279
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/RequestMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/cloud/audit/RequestMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/cloud/audit/RequestMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cloud/audit/RequestMetadata;",
            ">;"
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCallerIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private setCallerIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private setCallerSuppliedUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private setCallerSuppliedUserAgentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 196
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 197
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 530
    :pswitch_0
    return-object v2

    .line 527
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 512
    :pswitch_2
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 513
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/cloud/audit/RequestMetadata;>;"
    if-nez v0, :cond_1

    .line 514
    const-class v1, Lcom/google/cloud/audit/RequestMetadata;

    monitor-enter v1

    .line 515
    :try_start_0
    sget-object v2, Lcom/google/cloud/audit/RequestMetadata;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 516
    if-nez v0, :cond_0

    .line 517
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 520
    sput-object v0, Lcom/google/cloud/audit/RequestMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 522
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 524
    :cond_1
    :goto_0
    return-object v0

    .line 509
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/cloud/audit/RequestMetadata;>;"
    :pswitch_3
    sget-object v0, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    return-object v0

    .line 498
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "callerIp_"

    aput-object v3, v0, v2

    const-string v2, "callerSuppliedUserAgent_"

    aput-object v2, v0, v1

    .line 502
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 505
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/cloud/audit/RequestMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v2, v1, v0}, Lcom/google/cloud/audit/RequestMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 495
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/cloud/audit/RequestMetadata$Builder;

    invoke-direct {v0, v2}, Lcom/google/cloud/audit/RequestMetadata$Builder;-><init>(Lcom/google/cloud/audit/RequestMetadata$1;)V

    return-object v0

    .line 492
    :pswitch_6
    new-instance v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-direct {v0}, Lcom/google/cloud/audit/RequestMetadata;-><init>()V

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

.method public getCallerIp()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCallerSuppliedUserAgent()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerSuppliedUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata;->callerSuppliedUserAgent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
