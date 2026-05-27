.class public final Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientSignalsProto.java"

# interfaces
.implements Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaimOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppInstanceClaim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;",
        ">;",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaimOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x1

.field public static final APP_INSTANCE_TOKEN_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

.field public static final GMP_APP_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appInstanceId_:Ljava/lang/String;

.field private appInstanceToken_:Ljava/lang/String;

.field private gmpAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1678
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-direct {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;-><init>()V

    .line 1681
    .local v0, "defaultInstance":Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    sput-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    .line 1682
    const-class v1, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1684
    .end local v0    # "defaultInstance":Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1078
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    .line 1080
    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    .line 1081
    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    .line 1082
    return-void
.end method

.method static synthetic access$1400()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1

    .line 1073
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setAppInstanceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    .line 1073
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->clearAppInstanceId()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setAppInstanceToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    .line 1073
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->clearAppInstanceToken()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setAppInstanceTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setGmpAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    .line 1073
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->clearGmpAppId()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->setGmpAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAppInstanceId()V
    .locals 1

    .line 1133
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    .line 1134
    return-void
.end method

.method private clearAppInstanceToken()V
    .locals 1

    .line 1208
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getAppInstanceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    .line 1209
    return-void
.end method

.method private clearGmpAppId()V
    .locals 1

    .line 1281
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    .line 1282
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1

    .line 1687
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;
    .locals 1

    .line 1374
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    .line 1377
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-virtual {v0, p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1315
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1322
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1362
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1302
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1309
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1327
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1334
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;",
            ">;"
        }
    .end annotation

    .line 1693
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    .line 1123
    return-void
.end method

.method private setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1145
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1146
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    .line 1148
    return-void
.end method

.method private setAppInstanceToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    .line 1196
    return-void
.end method

.method private setAppInstanceTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1222
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1223
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    .line 1225
    return-void
.end method

.method private setGmpAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method private setGmpAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1294
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1295
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    .line 1297
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1627
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1668
    :pswitch_0
    return-object v2

    .line 1665
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1650
    :pswitch_2
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->PARSER:Lcom/google/protobuf/Parser;

    .line 1651
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;>;"
    if-nez v0, :cond_1

    .line 1652
    const-class v1, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    monitor-enter v1

    .line 1653
    :try_start_0
    sget-object v2, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1654
    if-nez v0, :cond_0

    .line 1655
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1658
    sput-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->PARSER:Lcom/google/protobuf/Parser;

    .line 1660
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1662
    :cond_1
    :goto_0
    return-object v0

    .line 1647
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;>;"
    :pswitch_3
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    return-object v0

    .line 1635
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appInstanceId_"

    aput-object v3, v0, v2

    const-string v2, "appInstanceToken_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gmpAppId_"

    aput-object v2, v0, v1

    .line 1640
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 1643
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-static {v2, v1, v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1632
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;

    invoke-direct {v0, v2}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim$Builder;-><init>(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$1;)V

    return-object v0

    .line 1629
    :pswitch_6
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;

    invoke-direct {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;-><init>()V

    return-object v0

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

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceToken()Ljava/lang/String;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstanceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->appInstanceToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGmpAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$AppInstanceClaim;->gmpAppId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
