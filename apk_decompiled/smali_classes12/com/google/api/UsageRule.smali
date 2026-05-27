.class public final Lcom/google/api/UsageRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UsageRule.java"

# interfaces
.implements Lcom/google/api/UsageRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/UsageRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/UsageRule;",
        "Lcom/google/api/UsageRule$Builder;",
        ">;",
        "Lcom/google/api/UsageRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_UNREGISTERED_CALLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1

.field public static final SKIP_SERVICE_CONTROL_FIELD_NUMBER:I = 0x3


# instance fields
.field private allowUnregisteredCalls_:Z

.field private selector_:Ljava/lang/String;

.field private skipServiceControl_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 548
    new-instance v0, Lcom/google/api/UsageRule;

    invoke-direct {v0}, Lcom/google/api/UsageRule;-><init>()V

    .line 551
    .local v0, "defaultInstance":Lcom/google/api/UsageRule;
    sput-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 552
    const-class v1, Lcom/google/api/UsageRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 554
    .end local v0    # "defaultInstance":Lcom/google/api/UsageRule;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/UsageRule;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/UsageRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/UsageRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/UsageRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;
    .param p1, "x1"    # Z

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setAllowUnregisteredCalls(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearAllowUnregisteredCalls()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/UsageRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;
    .param p1, "x1"    # Z

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSkipServiceControl(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/UsageRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/UsageRule;

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSkipServiceControl()V

    return-void
.end method

.method private clearAllowUnregisteredCalls()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    .line 154
    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/google/api/UsageRule;->getDefaultInstance()Lcom/google/api/UsageRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private clearSkipServiceControl()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    .line 201
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/UsageRule;
    .locals 1

    .line 557
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 278
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/UsageRule;)Lcom/google/api/UsageRule$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/UsageRule;

    .line 281
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0, p0}, Lcom/google/api/UsageRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/api/UsageRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/UsageRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowUnregisteredCalls(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    .line 142
    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iput-object p1, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 110
    invoke-static {p1}, Lcom/google/api/UsageRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 111
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private setSkipServiceControl(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    .line 187
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/google/api/UsageRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 538
    :pswitch_0
    return-object v2

    .line 535
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 520
    :pswitch_2
    sget-object v0, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 521
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/UsageRule;>;"
    if-nez v0, :cond_1

    .line 522
    const-class v1, Lcom/google/api/UsageRule;

    monitor-enter v1

    .line 523
    :try_start_0
    sget-object v2, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 524
    if-nez v0, :cond_0

    .line 525
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 528
    sput-object v0, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 530
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 532
    :cond_1
    :goto_0
    return-object v0

    .line 517
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/UsageRule;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object v0

    .line 505
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "selector_"

    aput-object v3, v0, v2

    const-string v2, "allowUnregisteredCalls_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "skipServiceControl_"

    aput-object v2, v0, v1

    .line 510
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0007\u0003\u0007"

    .line 513
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v2, v1, v0}, Lcom/google/api/UsageRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 502
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/UsageRule$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/UsageRule$Builder;-><init>(Lcom/google/api/UsageRule$1;)V

    return-object v0

    .line 499
    :pswitch_6
    new-instance v0, Lcom/google/api/UsageRule;

    invoke-direct {v0}, Lcom/google/api/UsageRule;-><init>()V

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

.method public getAllowUnregisteredCalls()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    return v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSkipServiceControl()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    return v0
.end method
