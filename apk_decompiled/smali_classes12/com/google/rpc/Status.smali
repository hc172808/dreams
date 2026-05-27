.class public final Lcom/google/rpc/Status;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Status.java"

# interfaces
.implements Lcom/google/rpc/StatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/Status$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/Status;",
        "Lcom/google/rpc/Status$Builder;",
        ">;",
        "Lcom/google/rpc/StatusOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/Status;

.field public static final DETAILS_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code_:I

.field private details_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 735
    new-instance v0, Lcom/google/rpc/Status;

    invoke-direct {v0}, Lcom/google/rpc/Status;-><init>()V

    .line 738
    .local v0, "defaultInstance":Lcom/google/rpc/Status;
    sput-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    .line 739
    const-class v1, Lcom/google/rpc/Status;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 741
    .end local v0    # "defaultInstance":Lcom/google/rpc/Status;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/rpc/Status;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 26
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/Status;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/Status;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->setCode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/rpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;

    .line 18
    invoke-direct {p0}, Lcom/google/rpc/Status;->clearDetails()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/rpc/Status;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->removeDetails(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;

    .line 18
    invoke-direct {p0}, Lcom/google/rpc/Status;->clearCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;

    .line 18
    invoke-direct {p0}, Lcom/google/rpc/Status;->clearMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/Status;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Any;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/Status;->setDetails(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/Status;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->addDetails(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Any;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/Status;->addDetails(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/rpc/Status;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/Status;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Status;->addAllDetails(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllDetails(Ljava/lang/Iterable;)V
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

    .line 263
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-direct {p0}, Lcom/google/rpc/Status;->ensureDetailsIsMutable()V

    .line 264
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 266
    return-void
.end method

.method private addDetails(ILcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    invoke-direct {p0}, Lcom/google/rpc/Status;->ensureDetailsIsMutable()V

    .line 251
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 252
    return-void
.end method

.method private addDetails(Lcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-direct {p0}, Lcom/google/rpc/Status;->ensureDetailsIsMutable()V

    .line 237
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method private clearCode()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/rpc/Status;->code_:I

    .line 63
    return-void
.end method

.method private clearDetails()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/google/rpc/Status;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 277
    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private ensureDetailsIsMutable()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 206
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Any;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    nop

    .line 208
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 210
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/Status;
    .locals 1

    .line 744
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 366
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/Status;

    .line 369
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-virtual {v0, p0}, Lcom/google/rpc/Status;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/rpc/Status;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/Status;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Status;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/Status;",
            ">;"
        }
    .end annotation

    .line 750
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDetails(I)V
    .locals 1
    .param p1, "index"    # I

    .line 287
    invoke-direct {p0}, Lcom/google/rpc/Status;->ensureDetailsIsMutable()V

    .line 288
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method private setCode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 51
    iput p1, p0, Lcom/google/rpc/Status;->code_:I

    .line 52
    return-void
.end method

.method private setDetails(ILcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-direct {p0}, Lcom/google/rpc/Status;->ensureDetailsIsMutable()V

    .line 224
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iput-object p1, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 137
    invoke-static {p1}, Lcom/google/rpc/Status;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/google/rpc/Status$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 728
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 725
    :pswitch_0
    return-object v2

    .line 722
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 707
    :pswitch_2
    sget-object v0, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    .line 708
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/Status;>;"
    if-nez v0, :cond_1

    .line 709
    const-class v1, Lcom/google/rpc/Status;

    monitor-enter v1

    .line 710
    :try_start_0
    sget-object v2, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 711
    if-nez v0, :cond_0

    .line 712
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 715
    sput-object v0, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    .line 717
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 719
    :cond_1
    :goto_0
    return-object v0

    .line 704
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/Status;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object v0

    .line 691
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "code_"

    aput-object v3, v0, v2

    const-string v2, "message_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "details_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/protobuf/Any;

    aput-object v2, v0, v1

    .line 697
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u001b"

    .line 700
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/Status;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 688
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/Status$Builder;

    invoke-direct {v0, v2}, Lcom/google/rpc/Status$Builder;-><init>(Lcom/google/rpc/Status$1;)V

    return-object v0

    .line 685
    :pswitch_6
    new-instance v0, Lcom/google/rpc/Status;

    invoke-direct {v0}, Lcom/google/rpc/Status;-><init>()V

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

.method public getCode()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/rpc/Status;->code_:I

    return v0
.end method

.method public getDetails(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 190
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0
.end method

.method public getDetailsCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDetailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDetailsOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 202
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AnyOrBuilder;

    return-object v0
.end method

.method public getDetailsOrBuilderList()Ljava/util/List;
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

    .line 166
    iget-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
