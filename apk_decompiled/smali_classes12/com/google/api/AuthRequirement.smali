.class public final Lcom/google/api/AuthRequirement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AuthRequirement.java"

# interfaces
.implements Lcom/google/api/AuthRequirementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/AuthRequirement$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/AuthRequirement;",
        "Lcom/google/api/AuthRequirement$Builder;",
        ">;",
        "Lcom/google/api/AuthRequirementOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIENCES_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private audiences_:Ljava/lang/String;

.field private providerId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 594
    new-instance v0, Lcom/google/api/AuthRequirement;

    invoke-direct {v0}, Lcom/google/api/AuthRequirement;-><init>()V

    .line 597
    .local v0, "defaultInstance":Lcom/google/api/AuthRequirement;
    sput-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    .line 598
    const-class v1, Lcom/google/api/AuthRequirement;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 600
    .end local v0    # "defaultInstance":Lcom/google/api/AuthRequirement;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/AuthRequirement;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/AuthRequirement;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/AuthRequirement;->setProviderId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/AuthRequirement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;

    .line 15
    invoke-direct {p0}, Lcom/google/api/AuthRequirement;->clearProviderId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/AuthRequirement;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/AuthRequirement;->setProviderIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/AuthRequirement;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/AuthRequirement;->setAudiences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/AuthRequirement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;

    .line 15
    invoke-direct {p0}, Lcom/google/api/AuthRequirement;->clearAudiences()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/AuthRequirement;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthRequirement;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/AuthRequirement;->setAudiencesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAudiences()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/google/api/AuthRequirement;->getDefaultInstance()Lcom/google/api/AuthRequirement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getAudiences()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private clearProviderId()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/google/api/AuthRequirement;->getDefaultInstance()Lcom/google/api/AuthRequirement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/AuthRequirement;
    .locals 1

    .line 603
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 303
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/AuthRequirement;)Lcom/google/api/AuthRequirement$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/AuthRequirement;

    .line 306
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-virtual {v0, p0}, Lcom/google/api/AuthRequirement;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/api/AuthRequirement;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/api/AuthRequirement;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAudiences(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    iput-object p1, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private setAudiencesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 223
    invoke-static {p1}, Lcom/google/api/AuthRequirement;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 224
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    .line 226
    return-void
.end method

.method private setProviderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iput-object p1, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private setProviderIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 96
    invoke-static {p1}, Lcom/google/api/AuthRequirement;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/google/api/AuthRequirement$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 584
    :pswitch_0
    return-object v2

    .line 581
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 566
    :pswitch_2
    sget-object v0, Lcom/google/api/AuthRequirement;->PARSER:Lcom/google/protobuf/Parser;

    .line 567
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/AuthRequirement;>;"
    if-nez v0, :cond_1

    .line 568
    const-class v1, Lcom/google/api/AuthRequirement;

    monitor-enter v1

    .line 569
    :try_start_0
    sget-object v2, Lcom/google/api/AuthRequirement;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 570
    if-nez v0, :cond_0

    .line 571
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 574
    sput-object v0, Lcom/google/api/AuthRequirement;->PARSER:Lcom/google/protobuf/Parser;

    .line 576
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 578
    :cond_1
    :goto_0
    return-object v0

    .line 563
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/AuthRequirement;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    return-object v0

    .line 552
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "providerId_"

    aput-object v3, v0, v2

    const-string v2, "audiences_"

    aput-object v2, v0, v1

    .line 556
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 559
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/AuthRequirement;->DEFAULT_INSTANCE:Lcom/google/api/AuthRequirement;

    invoke-static {v2, v1, v0}, Lcom/google/api/AuthRequirement;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 549
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/AuthRequirement$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/AuthRequirement$Builder;-><init>(Lcom/google/api/AuthRequirement$1;)V

    return-object v0

    .line 546
    :pswitch_6
    new-instance v0, Lcom/google/api/AuthRequirement;

    invoke-direct {v0}, Lcom/google/api/AuthRequirement;-><init>()V

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

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    return-object v0
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/AuthRequirement;->audiences_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/api/AuthRequirement;->providerId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
