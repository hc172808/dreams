.class public final Lcom/google/api/SystemParameter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SystemParameter.java"

# interfaces
.implements Lcom/google/api/SystemParameterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SystemParameter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SystemParameter;",
        "Lcom/google/api/SystemParameter$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

.field public static final HTTP_HEADER_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_QUERY_PARAMETER_FIELD_NUMBER:I = 0x3


# instance fields
.field private httpHeader_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private urlQueryParameter_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 612
    new-instance v0, Lcom/google/api/SystemParameter;

    invoke-direct {v0}, Lcom/google/api/SystemParameter;-><init>()V

    .line 615
    .local v0, "defaultInstance":Lcom/google/api/SystemParameter;
    sput-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    .line 616
    const-class v1, Lcom/google/api/SystemParameter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 618
    .end local v0    # "defaultInstance":Lcom/google/api/SystemParameter;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SystemParameter;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SystemParameter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SystemParameter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearHttpHeader()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/SystemParameter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearUrlQueryParameter()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameter;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearHttpHeader()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getHttpHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private clearUrlQueryParameter()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getUrlQueryParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SystemParameter;
    .locals 1

    .line 621
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SystemParameter$Builder;
    .locals 1

    .line 311
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameter$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/SystemParameter;

    .line 314
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0, p0}, Lcom/google/api/SystemParameter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iput-object p1, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 159
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 160
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 87
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private setUrlQueryParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    iput-object p1, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 231
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/google/api/SystemParameter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 602
    :pswitch_0
    return-object v2

    .line 599
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 584
    :pswitch_2
    sget-object v0, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    .line 585
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SystemParameter;>;"
    if-nez v0, :cond_1

    .line 586
    const-class v1, Lcom/google/api/SystemParameter;

    monitor-enter v1

    .line 587
    :try_start_0
    sget-object v2, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 588
    if-nez v0, :cond_0

    .line 589
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 592
    sput-object v0, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    .line 594
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 596
    :cond_1
    :goto_0
    return-object v0

    .line 581
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SystemParameter;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0

    .line 569
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name_"

    aput-object v3, v0, v2

    const-string v2, "httpHeader_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "urlQueryParameter_"

    aput-object v2, v0, v1

    .line 574
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 577
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v2, v1, v0}, Lcom/google/api/SystemParameter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 566
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/SystemParameter$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/SystemParameter$Builder;-><init>(Lcom/google/api/SystemParameter$1;)V

    return-object v0

    .line 563
    :pswitch_6
    new-instance v0, Lcom/google/api/SystemParameter;

    invoke-direct {v0}, Lcom/google/api/SystemParameter;-><init>()V

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

.method public getHttpHeader()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUrlQueryParameter()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlQueryParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
