.class public final Lcom/google/api/Documentation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Documentation.java"

# interfaces
.implements Lcom/google/api/DocumentationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Documentation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Documentation;",
        "Lcom/google/api/Documentation$Builder;",
        ">;",
        "Lcom/google/api/DocumentationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Documentation;

.field public static final DOCUMENTATION_ROOT_URL_FIELD_NUMBER:I = 0x4

.field public static final OVERVIEW_FIELD_NUMBER:I = 0x2

.field public static final PAGES_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Documentation;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x3

.field public static final SUMMARY_FIELD_NUMBER:I = 0x1


# instance fields
.field private documentationRootUrl_:Ljava/lang/String;

.field private overview_:Ljava/lang/String;

.field private pages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation
.end field

.field private summary_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1421
    new-instance v0, Lcom/google/api/Documentation;

    invoke-direct {v0}, Lcom/google/api/Documentation;-><init>()V

    .line 1424
    .local v0, "defaultInstance":Lcom/google/api/Documentation;
    sput-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    .line 1425
    const-class v1, Lcom/google/api/Documentation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1427
    .end local v0    # "defaultInstance":Lcom/google/api/Documentation;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/google/api/Documentation;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 70
    invoke-static {}, Lcom/google/api/Documentation;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 71
    iput-object v0, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Documentation;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Documentation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/DocumentationRule;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Documentation;->setRules(ILcom/google/api/DocumentationRule;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Documentation;Lcom/google/api/DocumentationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Lcom/google/api/DocumentationRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->addRules(Lcom/google/api/DocumentationRule;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/DocumentationRule;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Documentation;->addRules(ILcom/google/api/DocumentationRule;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Documentation;->clearRules()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Documentation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->removeRules(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Documentation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setDocumentationRootUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Documentation;->clearDocumentationRootUrl()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setDocumentationRootUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/Documentation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setOverview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Documentation;->clearSummary()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Documentation;->clearOverview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setOverviewBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->setSummaryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Documentation;ILcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Page;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Documentation;->setPages(ILcom/google/api/Page;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Documentation;Lcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Lcom/google/api/Page;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->addPages(Lcom/google/api/Page;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Documentation;ILcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Page;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Documentation;->addPages(ILcom/google/api/Page;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->addAllPages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Documentation;->clearPages()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Documentation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Documentation;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Documentation;->removePages(I)V

    return-void
.end method

.method private addAllPages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Page;>;"
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensurePagesIsMutable()V

    .line 259
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 261
    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/DocumentationRule;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/DocumentationRule;>;"
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensureRulesIsMutable()V

    .line 406
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 408
    return-void
.end method

.method private addPages(ILcom/google/api/Page;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensurePagesIsMutable()V

    .line 247
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method private addPages(Lcom/google/api/Page;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Page;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensurePagesIsMutable()V

    .line 234
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private addRules(ILcom/google/api/DocumentationRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/DocumentationRule;

    .line 391
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensureRulesIsMutable()V

    .line 393
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 394
    return-void
.end method

.method private addRules(Lcom/google/api/DocumentationRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/DocumentationRule;

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensureRulesIsMutable()V

    .line 379
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method private clearDocumentationRootUrl()V
    .locals 1

    .line 483
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getDocumentationRootUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    .line 484
    return-void
.end method

.method private clearOverview()V
    .locals 1

    .line 598
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getOverview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    .line 599
    return-void
.end method

.method private clearPages()V
    .locals 1

    .line 270
    invoke-static {}, Lcom/google/api/Documentation;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 271
    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 418
    invoke-static {}, Lcom/google/api/Documentation;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 419
    return-void
.end method

.method private clearSummary()V
    .locals 1

    .line 128
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private ensurePagesIsMutable()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 205
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Page;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    nop

    .line 207
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 209
    :cond_0
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 348
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/DocumentationRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    nop

    .line 350
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 352
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Documentation;
    .locals 1

    .line 1430
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 702
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Documentation;

    .line 705
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-virtual {v0, p0}, Lcom/google/api/Documentation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/api/Documentation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/api/Documentation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 650
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 637
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 655
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Documentation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 662
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Documentation;",
            ">;"
        }
    .end annotation

    .line 1436
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePages(I)V
    .locals 1
    .param p1, "index"    # I

    .line 280
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensurePagesIsMutable()V

    .line 281
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private removeRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 429
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensureRulesIsMutable()V

    .line 430
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method private setDocumentationRootUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    iput-object p1, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    .line 473
    return-void
.end method

.method private setDocumentationRootUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 495
    invoke-static {p1}, Lcom/google/api/Documentation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 496
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    .line 498
    return-void
.end method

.method private setOverview(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    iput-object p1, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    .line 576
    return-void
.end method

.method private setOverviewBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 622
    invoke-static {p1}, Lcom/google/api/Documentation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 623
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    .line 625
    return-void
.end method

.method private setPages(ILcom/google/api/Page;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensurePagesIsMutable()V

    .line 222
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method private setRules(ILcom/google/api/DocumentationRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/DocumentationRule;

    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    invoke-direct {p0}, Lcom/google/api/Documentation;->ensureRulesIsMutable()V

    .line 366
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method private setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object p1, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private setSummaryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 141
    invoke-static {p1}, Lcom/google/api/Documentation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 142
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1366
    sget-object v0, Lcom/google/api/Documentation$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1411
    :pswitch_0
    return-object v2

    .line 1408
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1393
    :pswitch_2
    sget-object v0, Lcom/google/api/Documentation;->PARSER:Lcom/google/protobuf/Parser;

    .line 1394
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Documentation;>;"
    if-nez v0, :cond_1

    .line 1395
    const-class v1, Lcom/google/api/Documentation;

    monitor-enter v1

    .line 1396
    :try_start_0
    sget-object v2, Lcom/google/api/Documentation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1397
    if-nez v0, :cond_0

    .line 1398
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1401
    sput-object v0, Lcom/google/api/Documentation;->PARSER:Lcom/google/protobuf/Parser;

    .line 1403
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1405
    :cond_1
    :goto_0
    return-object v0

    .line 1390
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Documentation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    return-object v0

    .line 1374
    :pswitch_4
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "summary_"

    aput-object v3, v0, v2

    const-string v2, "overview_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rules_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/api/DocumentationRule;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "documentationRootUrl_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pages_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/google/api/Page;

    aput-object v2, v0, v1

    .line 1383
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\u0208\u0005\u001b"

    .line 1386
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Documentation;->DEFAULT_INSTANCE:Lcom/google/api/Documentation;

    invoke-static {v2, v1, v0}, Lcom/google/api/Documentation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1371
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Documentation$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Documentation$Builder;-><init>(Lcom/google/api/Documentation$1;)V

    return-object v0

    .line 1368
    :pswitch_6
    new-instance v0, Lcom/google/api/Documentation;

    invoke-direct {v0}, Lcom/google/api/Documentation;-><init>()V

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

.method public getDocumentationRootUrl()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/api/Documentation;->documentationRootUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    return-object v0
.end method

.method public getOverviewBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/api/Documentation;->overview_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPages(I)Lcom/google/api/Page;
    .locals 1
    .param p1, "index"    # I

    .line 190
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPagesOrBuilder(I)Lcom/google/api/PageOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 201
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/PageOrBuilder;

    return-object v0
.end method

.method public getPagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/PageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/api/Documentation;->pages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/DocumentationRule;
    .locals 1
    .param p1, "index"    # I

    .line 332
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/DocumentationRule;

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/DocumentationRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 344
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/DocumentationRuleOrBuilder;

    return-object v0
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/DocumentationRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/api/Documentation;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/api/Documentation;->summary_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
