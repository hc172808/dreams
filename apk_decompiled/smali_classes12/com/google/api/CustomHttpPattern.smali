.class public final Lcom/google/api/CustomHttpPattern;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CustomHttpPattern.java"

# interfaces
.implements Lcom/google/api/CustomHttpPatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/CustomHttpPattern$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/CustomHttpPattern;",
        "Lcom/google/api/CustomHttpPattern$Builder;",
        ">;",
        "Lcom/google/api/CustomHttpPatternOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/CustomHttpPattern;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2


# instance fields
.field private kind_:Ljava/lang/String;

.field private path_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 450
    new-instance v0, Lcom/google/api/CustomHttpPattern;

    invoke-direct {v0}, Lcom/google/api/CustomHttpPattern;-><init>()V

    .line 453
    .local v0, "defaultInstance":Lcom/google/api/CustomHttpPattern;
    sput-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    .line 454
    const-class v1, Lcom/google/api/CustomHttpPattern;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 456
    .end local v0    # "defaultInstance":Lcom/google/api/CustomHttpPattern;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setKind(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/CustomHttpPattern;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;

    .line 13
    invoke-direct {p0}, Lcom/google/api/CustomHttpPattern;->clearKind()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setKindBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/CustomHttpPattern;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;

    .line 13
    invoke-direct {p0}, Lcom/google/api/CustomHttpPattern;->clearPath()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/CustomHttpPattern;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearKind()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getKind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 139
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 459
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1

    .line 231
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/CustomHttpPattern;

    .line 234
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0, p0}, Lcom/google/api/CustomHttpPattern;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/api/CustomHttpPattern;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/api/CustomHttpPattern;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/CustomHttpPattern;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private setKindBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-static {p1}, Lcom/google/api/CustomHttpPattern;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private setPathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 151
    invoke-static {p1}, Lcom/google/api/CustomHttpPattern;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/google/api/CustomHttpPattern$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 440
    :pswitch_0
    return-object v2

    .line 437
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 422
    :pswitch_2
    sget-object v0, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    .line 423
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/CustomHttpPattern;>;"
    if-nez v0, :cond_1

    .line 424
    const-class v1, Lcom/google/api/CustomHttpPattern;

    monitor-enter v1

    .line 425
    :try_start_0
    sget-object v2, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 426
    if-nez v0, :cond_0

    .line 427
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 430
    sput-object v0, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    .line 432
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 434
    :cond_1
    :goto_0
    return-object v0

    .line 419
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/CustomHttpPattern;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object v0

    .line 408
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "kind_"

    aput-object v3, v0, v2

    const-string v2, "path_"

    aput-object v2, v0, v1

    .line 412
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 415
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v2, v1, v0}, Lcom/google/api/CustomHttpPattern;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 405
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/CustomHttpPattern$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/CustomHttpPattern$Builder;-><init>(Lcom/google/api/CustomHttpPattern$1;)V

    return-object v0

    .line 402
    :pswitch_6
    new-instance v0, Lcom/google/api/CustomHttpPattern;

    invoke-direct {v0}, Lcom/google/api/CustomHttpPattern;-><init>()V

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

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    return-object v0
.end method

.method public getKindBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
