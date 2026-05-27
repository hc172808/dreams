.class public final Lcom/google/api/ResourceDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/ResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ResourceDescriptor$Builder;,
        Lcom/google/api/ResourceDescriptor$History;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ResourceDescriptor;",
        "Lcom/google/api/ResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/ResourceDescriptorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

.field public static final HISTORY_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_FIELD_NUMBER:I = 0x2

.field public static final PLURAL_FIELD_NUMBER:I = 0x5

.field public static final SINGULAR_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private history_:I

.field private nameField_:Ljava/lang/String;

.field private pattern_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private plural_:Ljava/lang/String;

.field private singular_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1915
    new-instance v0, Lcom/google/api/ResourceDescriptor;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor;-><init>()V

    .line 1918
    .local v0, "defaultInstance":Lcom/google/api/ResourceDescriptor;
    sput-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    .line 1919
    const-class v1, Lcom/google/api/ResourceDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1921
    .end local v0    # "defaultInstance":Lcom/google/api/ResourceDescriptor;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 113
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ResourceDescriptor;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearNameField()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setNameFieldBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ResourceDescriptor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setHistoryValue(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ResourceDescriptor;Lcom/google/api/ResourceDescriptor$History;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/api/ResourceDescriptor$History;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setHistory(Lcom/google/api/ResourceDescriptor$History;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearHistory()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setPlural(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearPlural()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setPluralBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setSingular(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearSingular()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setSingularBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ResourceDescriptor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/api/ResourceDescriptor;->setPattern(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addPattern(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ResourceDescriptor;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addAllPattern(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;

    .line 105
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearPattern()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addPatternBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ResourceDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setNameField(Ljava/lang/String;)V

    return-void
.end method

.method private addAllPattern(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 544
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 546
    return-void
.end method

.method private addPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 518
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method private addPatternBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 593
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 594
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 595
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method private clearHistory()V
    .locals 1

    .line 789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    .line 790
    return-void
.end method

.method private clearNameField()V
    .locals 1

    .line 652
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    .line 653
    return-void
.end method

.method private clearPattern()V
    .locals 1

    .line 568
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 569
    return-void
.end method

.method private clearPlural()V
    .locals 1

    .line 854
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    .line 855
    return-void
.end method

.method private clearSingular()V
    .locals 1

    .line 932
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    .line 933
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 328
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    .line 329
    return-void
.end method

.method private ensurePatternIsMutable()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 460
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    nop

    .line 462
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 464
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ResourceDescriptor;
    .locals 1

    .line 1924
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1026
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/ResourceDescriptor;

    .line 1029
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p0}, Lcom/google/api/ResourceDescriptor;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/api/ResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/api/ResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 967
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 974
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 954
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 961
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 979
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 986
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 1930
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHistory(Lcom/google/api/ResourceDescriptor$History;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/ResourceDescriptor$History;

    .line 765
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor$History;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    .line 767
    return-void
.end method

.method private setHistoryValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 742
    iput p1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    .line 743
    return-void
.end method

.method private setNameField(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    .line 641
    return-void
.end method

.method private setNameFieldBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 665
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 666
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    .line 668
    return-void
.end method

.method private setPattern(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 489
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 491
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-void
.end method

.method private setPlural(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    .line 841
    return-void
.end method

.method private setPluralBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 869
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 870
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    .line 872
    return-void
.end method

.method private setSingular(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    .line 920
    return-void
.end method

.method private setSingularBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 946
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 947
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    .line 949
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    .line 311
    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 347
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    .line 350
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1861
    sget-object v0, Lcom/google/api/ResourceDescriptor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1908
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1905
    :pswitch_0
    return-object v2

    .line 1902
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1887
    :pswitch_2
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 1888
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/ResourceDescriptor;>;"
    if-nez v0, :cond_1

    .line 1889
    const-class v1, Lcom/google/api/ResourceDescriptor;

    monitor-enter v1

    .line 1890
    :try_start_0
    sget-object v2, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1891
    if-nez v0, :cond_0

    .line 1892
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1895
    sput-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 1897
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1899
    :cond_1
    :goto_0
    return-object v0

    .line 1884
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/ResourceDescriptor;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0

    .line 1869
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "type_"

    aput-object v3, v0, v2

    const-string v2, "pattern_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nameField_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "history_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "plural_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "singular_"

    aput-object v2, v0, v1

    .line 1877
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u021a\u0003\u0208\u0004\u000c\u0005\u0208\u0006\u0208"

    .line 1880
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v2, v1, v0}, Lcom/google/api/ResourceDescriptor;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1866
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/ResourceDescriptor$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/ResourceDescriptor$Builder;-><init>(Lcom/google/api/ResourceDescriptor$1;)V

    return-object v0

    .line 1863
    :pswitch_6
    new-instance v0, Lcom/google/api/ResourceDescriptor;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor;-><init>()V

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

.method public getHistory()Lcom/google/api/ResourceDescriptor$History;
    .locals 2

    .line 718
    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor$History;->forNumber(I)Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    .line 719
    .local v0, "result":Lcom/google/api/ResourceDescriptor$History;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getHistoryValue()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return v0
.end method

.method public getNameField()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 428
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPatternBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 455
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 456
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatternCount()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPatternList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPlural()Ljava/lang/String;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSingular()Ljava/lang/String;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-object v0
.end method

.method public getSingularBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
