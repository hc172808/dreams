.class public final Lcom/google/type/Expr;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Expr.java"

# interfaces
.implements Lcom/google/type/ExprOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Expr$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Expr;",
        "Lcom/google/type/Expr$Builder;",
        ">;",
        "Lcom/google/type/ExprOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/Expr;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final EXPRESSION_FIELD_NUMBER:I = 0x1

.field public static final LOCATION_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Expr;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private description_:Ljava/lang/String;

.field private expression_:Ljava/lang/String;

.field private location_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 802
    new-instance v0, Lcom/google/type/Expr;

    invoke-direct {v0}, Lcom/google/type/Expr;-><init>()V

    .line 805
    .local v0, "defaultInstance":Lcom/google/type/Expr;
    sput-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    .line 806
    const-class v1, Lcom/google/type/Expr;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 808
    .end local v0    # "defaultInstance":Lcom/google/type/Expr;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/Expr;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/Expr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setExpression(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/type/Expr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/type/Expr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;

    .line 16
    invoke-direct {p0}, Lcom/google/type/Expr;->clearLocation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setLocationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/Expr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;

    .line 16
    invoke-direct {p0}, Lcom/google/type/Expr;->clearExpression()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setExpressionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/Expr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/Expr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;

    .line 16
    invoke-direct {p0}, Lcom/google/type/Expr;->clearTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/Expr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/Expr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;

    .line 16
    invoke-direct {p0}, Lcom/google/type/Expr;->clearDescription()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Expr;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/type/Expr;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 240
    invoke-static {}, Lcom/google/type/Expr;->getDefaultInstance()Lcom/google/type/Expr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/Expr;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    .line 241
    return-void
.end method

.method private clearExpression()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/google/type/Expr;->getDefaultInstance()Lcom/google/type/Expr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/Expr;->getExpression()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private clearLocation()V
    .locals 1

    .line 312
    invoke-static {}, Lcom/google/type/Expr;->getDefaultInstance()Lcom/google/type/Expr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/Expr;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    .line 313
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/google/type/Expr;->getDefaultInstance()Lcom/google/type/Expr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/Expr;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/Expr;
    .locals 1

    .line 811
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/Expr$Builder;
    .locals 1

    .line 405
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Expr;)Lcom/google/type/Expr$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/Expr;

    .line 408
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-virtual {v0, p0}, Lcom/google/type/Expr;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/type/Expr;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/type/Expr;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Expr;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Expr;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Expr;",
            ">;"
        }
    .end annotation

    .line 817
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    iput-object p1, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 253
    invoke-static {p1}, Lcom/google/type/Expr;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 254
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iput-object p1, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private setExpressionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 104
    invoke-static {p1}, Lcom/google/type/Expr;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    iput-object p1, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private setLocationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 325
    invoke-static {p1}, Lcom/google/type/Expr;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 326
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    .line 328
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    iput-object p1, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 181
    invoke-static {p1}, Lcom/google/type/Expr;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 750
    sget-object v0, Lcom/google/type/Expr$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 795
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 792
    :pswitch_0
    return-object v2

    .line 789
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 774
    :pswitch_2
    sget-object v0, Lcom/google/type/Expr;->PARSER:Lcom/google/protobuf/Parser;

    .line 775
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Expr;>;"
    if-nez v0, :cond_1

    .line 776
    const-class v1, Lcom/google/type/Expr;

    monitor-enter v1

    .line 777
    :try_start_0
    sget-object v2, Lcom/google/type/Expr;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 778
    if-nez v0, :cond_0

    .line 779
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 782
    sput-object v0, Lcom/google/type/Expr;->PARSER:Lcom/google/protobuf/Parser;

    .line 784
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 786
    :cond_1
    :goto_0
    return-object v0

    .line 771
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Expr;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    return-object v0

    .line 758
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "expression_"

    aput-object v3, v0, v2

    const-string v2, "title_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "location_"

    aput-object v2, v0, v1

    .line 764
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 767
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/Expr;->DEFAULT_INSTANCE:Lcom/google/type/Expr;

    invoke-static {v2, v1, v0}, Lcom/google/type/Expr;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 755
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/Expr$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/Expr$Builder;-><init>(Lcom/google/type/Expr$1;)V

    return-object v0

    .line 752
    :pswitch_6
    new-instance v0, Lcom/google/type/Expr;

    invoke-direct {v0}, Lcom/google/type/Expr;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/type/Expr;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpressionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/type/Expr;->expression_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/type/Expr;->location_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/type/Expr;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
