.class public final Lcom/google/longrunning/ListOperationsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListOperationsResponse.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/ListOperationsResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/ListOperationsResponse;",
        "Lcom/google/longrunning/ListOperationsResponse$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

.field public static final NEXT_PAGE_TOKEN_FIELD_NUMBER:I = 0x2

.field public static final OPERATIONS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/ListOperationsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nextPageToken_:Ljava/lang/String;

.field private operations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 603
    new-instance v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-direct {v0}, Lcom/google/longrunning/ListOperationsResponse;-><init>()V

    .line 606
    .local v0, "defaultInstance":Lcom/google/longrunning/ListOperationsResponse;
    sput-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    .line 607
    const-class v1, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 609
    .end local v0    # "defaultInstance":Lcom/google/longrunning/ListOperationsResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/longrunning/ListOperationsResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/longrunning/Operation;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->setOperations(ILcom/google/longrunning/Operation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # Lcom/google/longrunning/Operation;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->addOperations(Lcom/google/longrunning/Operation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/longrunning/Operation;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->addOperations(ILcom/google/longrunning/Operation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->addAllOperations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/longrunning/ListOperationsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->clearOperations()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/longrunning/ListOperationsResponse;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->removeOperations(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->setNextPageToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/longrunning/ListOperationsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->clearNextPageToken()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/ListOperationsResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllOperations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/longrunning/Operation;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/longrunning/Operation;>;"
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->ensureOperationsIsMutable()V

    .line 135
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 137
    return-void
.end method

.method private addOperations(ILcom/google/longrunning/Operation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/longrunning/Operation;

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->ensureOperationsIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method private addOperations(Lcom/google/longrunning/Operation;)V
    .locals 1
    .param p1, "value"    # Lcom/google/longrunning/Operation;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->ensureOperationsIsMutable()V

    .line 110
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method private clearNextPageToken()V
    .locals 1

    .line 210
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->getDefaultInstance()Lcom/google/longrunning/ListOperationsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    .line 211
    return-void
.end method

.method private clearOperations()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 147
    return-void
.end method

.method private ensureOperationsIsMutable()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 81
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/longrunning/Operation;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    nop

    .line 83
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 85
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/ListOperationsResponse;
    .locals 1

    .line 612
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 302
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/longrunning/ListOperationsResponse;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/longrunning/ListOperationsResponse;

    .line 305
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/ListOperationsResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/longrunning/ListOperationsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/ListOperationsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/ListOperationsResponse;",
            ">;"
        }
    .end annotation

    .line 618
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOperations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 156
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->ensureOperationsIsMutable()V

    .line 157
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private setNextPageToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    iput-object p1, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 222
    invoke-static {p1}, Lcom/google/longrunning/ListOperationsResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 223
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    .line 225
    return-void
.end method

.method private setOperations(ILcom/google/longrunning/Operation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/longrunning/Operation;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse;->ensureOperationsIsMutable()V

    .line 98
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 593
    :pswitch_0
    return-object v2

    .line 590
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 575
    :pswitch_2
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 576
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/ListOperationsResponse;>;"
    if-nez v0, :cond_1

    .line 577
    const-class v1, Lcom/google/longrunning/ListOperationsResponse;

    monitor-enter v1

    .line 578
    :try_start_0
    sget-object v2, Lcom/google/longrunning/ListOperationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 579
    if-nez v0, :cond_0

    .line 580
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 583
    sput-object v0, Lcom/google/longrunning/ListOperationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 585
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 587
    :cond_1
    :goto_0
    return-object v0

    .line 572
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/ListOperationsResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    return-object v0

    .line 560
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "operations_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/longrunning/Operation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nextPageToken_"

    aput-object v2, v0, v1

    .line 565
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0208"

    .line 568
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/longrunning/ListOperationsResponse;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v2, v1, v0}, Lcom/google/longrunning/ListOperationsResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 557
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/longrunning/ListOperationsResponse$Builder;

    invoke-direct {v0, v2}, Lcom/google/longrunning/ListOperationsResponse$Builder;-><init>(Lcom/google/longrunning/ListOperationsResponse$1;)V

    return-object v0

    .line 554
    :pswitch_6
    new-instance v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-direct {v0}, Lcom/google/longrunning/ListOperationsResponse;-><init>()V

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

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->nextPageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperations(I)Lcom/google/longrunning/Operation;
    .locals 1
    .param p1, "index"    # I

    .line 66
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public getOperationsCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOperationsOrBuilder(I)Lcom/google/longrunning/OperationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/OperationOrBuilder;

    return-object v0
.end method

.method public getOperationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/longrunning/OperationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
