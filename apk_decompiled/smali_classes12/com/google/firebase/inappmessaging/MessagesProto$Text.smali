.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Text;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$TextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Text;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$TextOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field public static final HEX_COLOR_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Text;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private hexColor_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5777
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;-><init>()V

    .line 5780
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 5781
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5783
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5350
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    .line 5351
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    .line 5352
    return-void
.end method

.method static synthetic access$8900()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 5344
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5344
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 5344
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->clearText()V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5344
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5344
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->setHexColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 5344
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->clearHexColor()V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5344
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->setHexColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearHexColor()V
    .locals 1

    .line 5470
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    .line 5471
    return-void
.end method

.method private clearText()V
    .locals 1

    .line 5403
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    .line 5404
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 5786
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    .line 5562
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 5565
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5539
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5545
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5503
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5510
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5550
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5557
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5527
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5534
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5490
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5497
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5515
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5522
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Text;",
            ">;"
        }
    .end annotation

    .line 5792
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHexColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 5457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5459
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    .line 5460
    return-void
.end method

.method private setHexColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5482
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5483
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    .line 5485
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 5390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5392
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    .line 5393
    return-void
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5415
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5416
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    .line 5418
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 5727
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5767
    :pswitch_0
    return-object v2

    .line 5764
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5749
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->PARSER:Lcom/google/protobuf/Parser;

    .line 5750
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$Text;>;"
    if-nez v0, :cond_1

    .line 5751
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    monitor-enter v1

    .line 5752
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5753
    if-nez v0, :cond_0

    .line 5754
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5757
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->PARSER:Lcom/google/protobuf/Parser;

    .line 5759
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5761
    :cond_1
    :goto_0
    return-object v0

    .line 5746
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$Text;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-object v0

    .line 5735
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "text_"

    aput-object v3, v0, v2

    const-string v2, "hexColor_"

    aput-object v2, v0, v1

    .line 5739
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 5742
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5732
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object v0

    .line 5729
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;-><init>()V

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

.method public getHexColor()Ljava/lang/String;
    .locals 1

    .line 5432
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5445
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->hexColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 5365
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5378
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
