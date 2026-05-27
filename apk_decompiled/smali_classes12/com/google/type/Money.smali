.class public final Lcom/google/type/Money;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Money.java"

# interfaces
.implements Lcom/google/type/MoneyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Money$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Money;",
        "Lcom/google/type/Money$Builder;",
        ">;",
        "Lcom/google/type/MoneyOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURRENCY_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/type/Money;

.field public static final NANOS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Money;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNITS_FIELD_NUMBER:I = 0x2


# instance fields
.field private currencyCode_:Ljava/lang/String;

.field private nanos_:I

.field private units_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 506
    new-instance v0, Lcom/google/type/Money;

    invoke-direct {v0}, Lcom/google/type/Money;-><init>()V

    .line 509
    .local v0, "defaultInstance":Lcom/google/type/Money;
    sput-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    .line 510
    const-class v1, Lcom/google/type/Money;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 512
    .end local v0    # "defaultInstance":Lcom/google/type/Money;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/Money;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/Money;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/type/Money;->setCurrencyCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/Money;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;

    .line 13
    invoke-direct {p0}, Lcom/google/type/Money;->clearCurrencyCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/Money;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/type/Money;->setCurrencyCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/Money;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/type/Money;->setUnits(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/Money;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;

    .line 13
    invoke-direct {p0}, Lcom/google/type/Money;->clearUnits()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/Money;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/type/Money;->setNanos(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/Money;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Money;

    .line 13
    invoke-direct {p0}, Lcom/google/type/Money;->clearNanos()V

    return-void
.end method

.method private clearCurrencyCode()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/type/Money;->getDefaultInstance()Lcom/google/type/Money;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private clearNanos()V
    .locals 1

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/Money;->nanos_:I

    .line 180
    return-void
.end method

.method private clearUnits()V
    .locals 2

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Money;->units_:J

    .line 127
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/Money;
    .locals 1

    .line 515
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/Money$Builder;
    .locals 1

    .line 257
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Money;)Lcom/google/type/Money$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/Money;

    .line 260
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-virtual {v0, p0}, Lcom/google/type/Money;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/type/Money;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/type/Money;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Money;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Money;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Money;",
            ">;"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-object p1, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private setCurrencyCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 83
    invoke-static {p1}, Lcom/google/type/Money;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private setNanos(I)V
    .locals 0
    .param p1, "value"    # I

    .line 163
    iput p1, p0, Lcom/google/type/Money;->nanos_:I

    .line 164
    return-void
.end method

.method private setUnits(J)V
    .locals 0
    .param p1, "value"    # J

    .line 114
    iput-wide p1, p0, Lcom/google/type/Money;->units_:J

    .line 115
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/google/type/Money$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 496
    :pswitch_0
    return-object v2

    .line 493
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_2
    sget-object v0, Lcom/google/type/Money;->PARSER:Lcom/google/protobuf/Parser;

    .line 479
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Money;>;"
    if-nez v0, :cond_1

    .line 480
    const-class v1, Lcom/google/type/Money;

    monitor-enter v1

    .line 481
    :try_start_0
    sget-object v2, Lcom/google/type/Money;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 482
    if-nez v0, :cond_0

    .line 483
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 486
    sput-object v0, Lcom/google/type/Money;->PARSER:Lcom/google/protobuf/Parser;

    .line 488
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 490
    :cond_1
    :goto_0
    return-object v0

    .line 475
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Money;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    return-object v0

    .line 463
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "currencyCode_"

    aput-object v3, v0, v2

    const-string v2, "units_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nanos_"

    aput-object v2, v0, v1

    .line 468
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0004"

    .line 471
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/Money;->DEFAULT_INSTANCE:Lcom/google/type/Money;

    invoke-static {v2, v1, v0}, Lcom/google/type/Money;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 460
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/Money$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/Money$Builder;-><init>(Lcom/google/type/Money$1;)V

    return-object v0

    .line 457
    :pswitch_6
    new-instance v0, Lcom/google/type/Money;

    invoke-direct {v0}, Lcom/google/type/Money;-><init>()V

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

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/type/Money;->currencyCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNanos()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/google/type/Money;->nanos_:I

    return v0
.end method

.method public getUnits()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/google/type/Money;->units_:J

    return-wide v0
.end method
