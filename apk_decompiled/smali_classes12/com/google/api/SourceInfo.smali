.class public final Lcom/google/api/SourceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceInfo.java"

# interfaces
.implements Lcom/google/api/SourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SourceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SourceInfo;",
        "Lcom/google/api/SourceInfo$Builder;",
        ">;",
        "Lcom/google/api/SourceInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FILES_FIELD_NUMBER:I = 0x1


# instance fields
.field private sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 464
    new-instance v0, Lcom/google/api/SourceInfo;

    invoke-direct {v0}, Lcom/google/api/SourceInfo;-><init>()V

    .line 467
    .local v0, "defaultInstance":Lcom/google/api/SourceInfo;
    sput-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    .line 468
    const-class v1, Lcom/google/api/SourceInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 470
    .end local v0    # "defaultInstance":Lcom/google/api/SourceInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/api/SourceInfo;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SourceInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Any;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/SourceInfo;->setSourceFiles(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->addSourceFiles(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Any;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/SourceInfo;->addSourceFiles(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SourceInfo;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->addAllSourceFiles(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;

    .line 13
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->clearSourceFiles()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SourceInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SourceInfo;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->removeSourceFiles(I)V

    return-void
.end method

.method private addAllSourceFiles(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 134
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method private addSourceFiles(ILcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 122
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method private addSourceFiles(Lcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private clearSourceFiles()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/google/api/SourceInfo;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 146
    return-void
.end method

.method private ensureSourceFilesIsMutable()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 80
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Any;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    nop

    .line 82
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 84
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SourceInfo;
    .locals 1

    .line 473
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 234
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/SourceInfo;

    .line 237
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0, p0}, Lcom/google/api/SourceInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/api/SourceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/api/SourceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SourceInfo;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSourceFiles(I)V
    .locals 1
    .param p1, "index"    # I

    .line 155
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 156
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method private setSourceFiles(ILcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 97
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/google/api/SourceInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 454
    :pswitch_0
    return-object v2

    .line 451
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 436
    :pswitch_2
    sget-object v0, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 437
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SourceInfo;>;"
    if-nez v0, :cond_1

    .line 438
    const-class v1, Lcom/google/api/SourceInfo;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v2, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 440
    if-nez v0, :cond_0

    .line 441
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 444
    sput-object v0, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 446
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 448
    :cond_1
    :goto_0
    return-object v0

    .line 433
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SourceInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object v0

    .line 423
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sourceFiles_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/protobuf/Any;

    aput-object v2, v0, v1

    .line 427
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 429
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v2, v1, v0}, Lcom/google/api/SourceInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 420
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/SourceInfo$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/SourceInfo$Builder;-><init>(Lcom/google/api/SourceInfo$1;)V

    return-object v0

    .line 417
    :pswitch_6
    new-instance v0, Lcom/google/api/SourceInfo;

    invoke-direct {v0}, Lcom/google/api/SourceInfo;-><init>()V

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

.method public getSourceFiles(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0
.end method

.method public getSourceFilesCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSourceFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceFilesOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 76
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AnyOrBuilder;

    return-object v0
.end method

.method public getSourceFilesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
