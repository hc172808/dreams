.class public final Lcom/google/rpc/RequestInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RequestInfo.java"

# interfaces
.implements Lcom/google/rpc/RequestInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/RequestInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/RequestInfo;",
        "Lcom/google/rpc/RequestInfo$Builder;",
        ">;",
        "Lcom/google/rpc/RequestInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x1

.field public static final SERVING_DATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private requestId_:Ljava/lang/String;

.field private servingData_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 472
    new-instance v0, Lcom/google/rpc/RequestInfo;

    invoke-direct {v0}, Lcom/google/rpc/RequestInfo;-><init>()V

    .line 475
    .local v0, "defaultInstance":Lcom/google/rpc/RequestInfo;
    sput-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    .line 476
    const-class v1, Lcom/google/rpc/RequestInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 478
    .end local v0    # "defaultInstance":Lcom/google/rpc/RequestInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/RequestInfo;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/RequestInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/RequestInfo;->setRequestId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/RequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/RequestInfo;->clearRequestId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/RequestInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/RequestInfo;->setRequestIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/RequestInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/RequestInfo;->setServingData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/RequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/RequestInfo;->clearServingData()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/RequestInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/RequestInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/RequestInfo;->setServingDataBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearRequestId()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/google/rpc/RequestInfo;->getDefaultInstance()Lcom/google/rpc/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private clearServingData()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/google/rpc/RequestInfo;->getDefaultInstance()Lcom/google/rpc/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getServingData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/RequestInfo;
    .locals 1

    .line 481
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/RequestInfo$Builder;
    .locals 1

    .line 242
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/RequestInfo;)Lcom/google/rpc/RequestInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/RequestInfo;

    .line 245
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0, p0}, Lcom/google/rpc/RequestInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/rpc/RequestInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/RequestInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/RequestInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/RequestInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/RequestInfo;",
            ">;"
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iput-object p1, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private setRequestIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 90
    invoke-static {p1}, Lcom/google/rpc/RequestInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private setServingData(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iput-object p1, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private setServingDataBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 162
    invoke-static {p1}, Lcom/google/rpc/RequestInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/google/rpc/RequestInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 462
    :pswitch_0
    return-object v2

    .line 459
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 444
    :pswitch_2
    sget-object v0, Lcom/google/rpc/RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 445
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/RequestInfo;>;"
    if-nez v0, :cond_1

    .line 446
    const-class v1, Lcom/google/rpc/RequestInfo;

    monitor-enter v1

    .line 447
    :try_start_0
    sget-object v2, Lcom/google/rpc/RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 448
    if-nez v0, :cond_0

    .line 449
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 452
    sput-object v0, Lcom/google/rpc/RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 454
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 456
    :cond_1
    :goto_0
    return-object v0

    .line 441
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/RequestInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    return-object v0

    .line 430
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "requestId_"

    aput-object v3, v0, v2

    const-string v2, "servingData_"

    aput-object v2, v0, v1

    .line 434
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 437
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/RequestInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/RequestInfo;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/RequestInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 427
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/RequestInfo$Builder;

    invoke-direct {v0, v2}, Lcom/google/rpc/RequestInfo$Builder;-><init>(Lcom/google/rpc/RequestInfo$1;)V

    return-object v0

    .line 424
    :pswitch_6
    new-instance v0, Lcom/google/rpc/RequestInfo;

    invoke-direct {v0}, Lcom/google/rpc/RequestInfo;-><init>()V

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

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/rpc/RequestInfo;->requestId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServingData()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    return-object v0
.end method

.method public getServingDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/rpc/RequestInfo;->servingData_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
