.class public final Lcom/google/protobuf/Api;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api.java"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Api$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/Api;",
        "Lcom/google/protobuf/Api$Builder;",
        ">;",
        "Lcom/google/protobuf/ApiOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

.field public static final METHODS_FIELD_NUMBER:I = 0x2

.field public static final MIXINS_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private methods_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/google/protobuf/SourceContext;

.field private syntax_:I

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1785
    new-instance v0, Lcom/google/protobuf/Api;

    invoke-direct {v0}, Lcom/google/protobuf/Api;-><init>()V

    .line 1788
    .local v0, "defaultInstance":Lcom/google/protobuf/Api;
    sput-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    .line 1789
    const-class v1, Lcom/google/protobuf/Api;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1791
    .end local v0    # "defaultInstance":Lcom/google/protobuf/Api;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 28
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 29
    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 31
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Api;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Option;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addOptions(Lcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearOptions()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearVersion()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSourceContext(Lcom/google/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->mergeSourceContext(Lcom/google/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearSourceContext()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Mixin;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setMixins(ILcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Mixin;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addMixins(Lcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Mixin;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addMixins(ILcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllMixins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearMixins()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeMixins(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/Api;Lcom/google/protobuf/Syntax;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Syntax;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSyntax(Lcom/google/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearSyntax()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Method;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setMethods(ILcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Method;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addMethods(Lcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Method;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addMethods(ILcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllMethods(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearMethods()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeMethods(I)V

    return-void
.end method

.method private addAllMethods(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Method;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Method;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 217
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 219
    return-void
.end method

.method private addAllMixins(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Mixin;",
            ">;)V"
        }
    .end annotation

    .line 710
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Mixin;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 711
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 713
    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Option;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 355
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 357
    return-void
.end method

.method private addMethods(ILcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;

    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 205
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method private addMethods(Lcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Method;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 192
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private addMixins(ILcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;

    .line 697
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 699
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method private addMixins(Lcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Mixin;

    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 686
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method private addOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 341
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 343
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 344
    return-void
.end method

.method private addOptions(Lcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Option;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 330
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method private clearMethods()V
    .locals 1

    .line 228
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 229
    return-void
.end method

.method private clearMixins()V
    .locals 1

    .line 722
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 723
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/google/protobuf/Api;->getDefaultInstance()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 366
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 367
    return-void
.end method

.method private clearSourceContext()V
    .locals 1

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 596
    return-void
.end method

.method private clearSyntax()V
    .locals 1

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 796
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 494
    invoke-static {}, Lcom/google/protobuf/Api;->getDefaultInstance()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 495
    return-void
.end method

.method private ensureMethodsIsMutable()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 163
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Method;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    nop

    .line 165
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 167
    :cond_0
    return-void
.end method

.method private ensureMixinsIsMutable()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 657
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Mixin;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    nop

    .line 659
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 661
    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 301
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Option;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    nop

    .line 303
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 305
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Api;
    .locals 1

    .line 1794
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method private mergeSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 580
    invoke-static {v0}, Lcom/google/protobuf/SourceContext;->newBuilder(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext;

    iput-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_0

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 585
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 873
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Api;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Api;

    .line 876
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Api;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 814
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 821
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 801
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 826
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 833
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 1800
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMethods(I)V
    .locals 1
    .param p1, "index"    # I

    .line 238
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 239
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private removeMixins(I)V
    .locals 1
    .param p1, "index"    # I

    .line 732
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 733
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 734
    return-void
.end method

.method private removeOptions(I)V
    .locals 1
    .param p1, "index"    # I

    .line 376
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 377
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method private setMethods(ILcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;

    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 180
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private setMixins(ILcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;

    .line 672
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 674
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iput-object p1, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 99
    invoke-static {p1}, Lcom/google/protobuf/Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private setOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 316
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 318
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method private setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    iput-object p1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 565
    return-void
.end method

.method private setSyntax(Lcom/google/protobuf/Syntax;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Syntax;

    .line 783
    invoke-virtual {p1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 785
    return-void
.end method

.method private setSyntaxValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 772
    iput p1, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 773
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    iput-object p1, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 468
    return-void
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 522
    invoke-static {p1}, Lcom/google/protobuf/Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 523
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 525
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1727
    sget-object v0, Lcom/google/protobuf/Api$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1775
    :pswitch_0
    return-object v2

    .line 1772
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1757
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 1758
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Api;>;"
    if-nez v0, :cond_1

    .line 1759
    const-class v1, Lcom/google/protobuf/Api;

    monitor-enter v1

    .line 1760
    :try_start_0
    sget-object v2, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1761
    if-nez v0, :cond_0

    .line 1762
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1765
    sput-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 1767
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1769
    :cond_1
    :goto_0
    return-object v0

    .line 1754
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Api;>;"
    :pswitch_3
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0

    .line 1735
    :pswitch_4
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name_"

    aput-object v3, v0, v2

    const-string v2, "methods_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/protobuf/Method;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "options_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/google/protobuf/Option;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "version_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceContext_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mixins_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/google/protobuf/Mixin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syntax_"

    aput-object v2, v0, v1

    .line 1747
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0003\u0000\u0001\u0208\u0002\u001b\u0003\u001b\u0004\u0208\u0005\t\u0006\u001b\u0007\u000c"

    .line 1750
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/Api;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1732
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/protobuf/Api$Builder;

    invoke-direct {v0, v2}, Lcom/google/protobuf/Api$Builder;-><init>(Lcom/google/protobuf/Api$1;)V

    return-object v0

    .line 1729
    :pswitch_6
    new-instance v0, Lcom/google/protobuf/Api;

    invoke-direct {v0}, Lcom/google/protobuf/Api;-><init>()V

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

.method public getMethods(I)Lcom/google/protobuf/Method;
    .locals 1
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMethodsOrBuilder(I)Lcom/google/protobuf/MethodOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MethodOrBuilder;

    return-object v0
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixins(I)Lcom/google/protobuf/Mixin;
    .locals 1
    .param p1, "index"    # I

    .line 642
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixinsOrBuilder(I)Lcom/google/protobuf/MixinOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 653
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MixinOrBuilder;

    return-object v0
.end method

.method public getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 286
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 297
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .line 760
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->forNumber(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 761
    .local v0, "result":Lcom/google/protobuf/Syntax;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
