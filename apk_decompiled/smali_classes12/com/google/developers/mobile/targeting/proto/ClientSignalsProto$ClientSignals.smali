.class public final Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientSignalsProto.java"

# interfaces
.implements Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignalsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientSignals"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;",
        ">;",
        "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignalsOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x4


# instance fields
.field private appVersion_:Ljava/lang/String;

.field private languageCode_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private timeZone_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 977
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-direct {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;-><init>()V

    .line 980
    .local v0, "defaultInstance":Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    sput-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 981
    const-class v1, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 983
    .end local v0    # "defaultInstance":Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic access$000()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 131
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->clearTimeZone()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setTimeZoneBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 131
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->clearAppVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setAppVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setPlatformVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 131
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->clearPlatformVersion()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setPlatformVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setLanguageCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 131
    invoke-direct {p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->clearLanguageCode()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAppVersion()V
    .locals 1

    .line 204
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    .line 205
    return-void
.end method

.method private clearLanguageCode()V
    .locals 1

    .line 372
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    .line 373
    return-void
.end method

.method private clearPlatformVersion()V
    .locals 1

    .line 286
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    .line 287
    return-void
.end method

.method private clearTimeZone()V
    .locals 1

    .line 455
    invoke-static {}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1

    .line 986
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;
    .locals 1

    .line 550
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    .line 553
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-virtual {v0, p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;",
            ">;"
        }
    .end annotation

    .line 992
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-virtual {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private setAppVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 219
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 220
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private setLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    .line 358
    return-void
.end method

.method private setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 388
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 389
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    .line 391
    return-void
.end method

.method private setPlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    .line 273
    return-void
.end method

.method private setPlatformVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 301
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 302
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    .line 304
    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    iput-object p1, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    .line 442
    return-void
.end method

.method private setTimeZoneBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 470
    invoke-static {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 471
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    .line 473
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 970
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 967
    :pswitch_0
    return-object v2

    .line 964
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 949
    :pswitch_2
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->PARSER:Lcom/google/protobuf/Parser;

    .line 950
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;>;"
    if-nez v0, :cond_1

    .line 951
    const-class v1, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    monitor-enter v1

    .line 952
    :try_start_0
    sget-object v2, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 953
    if-nez v0, :cond_0

    .line 954
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 957
    sput-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->PARSER:Lcom/google/protobuf/Parser;

    .line 959
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 961
    :cond_1
    :goto_0
    return-object v0

    .line 946
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;>;"
    :pswitch_3
    sget-object v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    return-object v0

    .line 933
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appVersion_"

    aput-object v3, v0, v2

    const-string v2, "platformVersion_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "languageCode_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timeZone_"

    aput-object v2, v0, v1

    .line 939
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 942
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->DEFAULT_INSTANCE:Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v2, v1, v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 930
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;

    invoke-direct {v0, v2}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;-><init>(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$1;)V

    return-object v0

    .line 927
    :pswitch_6
    new-instance v0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-direct {v0}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;-><init>()V

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

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->appVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->languageCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->platformVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;->timeZone_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
