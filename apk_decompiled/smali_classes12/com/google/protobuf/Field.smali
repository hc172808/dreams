.class public final Lcom/google/protobuf/Field;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Field.java"

# interfaces
.implements Lcom/google/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Field$Builder;,
        Lcom/google/protobuf/Field$Cardinality;,
        Lcom/google/protobuf/Field$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/Field;",
        "Lcom/google/protobuf/Field$Builder;",
        ">;",
        "Lcom/google/protobuf/FieldOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0xb

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x7

.field public static final OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x6


# instance fields
.field private cardinality_:I

.field private defaultValue_:Ljava/lang/String;

.field private jsonName_:Ljava/lang/String;

.field private kind_:I

.field private name_:Ljava/lang/String;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packed_:Z

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2069
    new-instance v0, Lcom/google/protobuf/Field;

    invoke-direct {v0}, Lcom/google/protobuf/Field;-><init>()V

    .line 2072
    .local v0, "defaultInstance":Lcom/google/protobuf/Field;
    sput-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    .line 2073
    const-class v1, Lcom/google/protobuf/Field;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2075
    .end local v0    # "defaultInstance":Lcom/google/protobuf/Field;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/protobuf/Field;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Field;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setKindValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearName()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Field;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearTypeUrl()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Field;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setTypeUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setOneofIndex(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearOneofIndex()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/Field;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setPacked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearPacked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/Field;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Field;->setOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/Field;Lcom/google/protobuf/Field$Kind;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/Field$Kind;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setKind(Lcom/google/protobuf/Field$Kind;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/protobuf/Field;Lcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/Option;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->addOptions(Lcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/Field;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Field;->addOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/Field;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearOptions()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setJsonName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearJsonName()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/Field;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setJsonNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearDefaultValue()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearKind()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/Field;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setDefaultValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setCardinalityValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/Field;Lcom/google/protobuf/Field$Cardinality;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Lcom/google/protobuf/Field$Cardinality;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setCardinality(Lcom/google/protobuf/Field$Cardinality;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearCardinality()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setNumber(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/Field;->clearNumber()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;->setName(Ljava/lang/String;)V

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

    .line 1058
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Option;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Field;->ensureOptionsIsMutable()V

    .line 1059
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1061
    return-void
.end method

.method private addOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 1045
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    invoke-direct {p0}, Lcom/google/protobuf/Field;->ensureOptionsIsMutable()V

    .line 1047
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1048
    return-void
.end method

.method private addOptions(Lcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Option;

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    invoke-direct {p0}, Lcom/google/protobuf/Field;->ensureOptionsIsMutable()V

    .line 1034
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1035
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 687
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 688
    return-void
.end method

.method private clearDefaultValue()V
    .locals 1

    .line 1201
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 1202
    return-void
.end method

.method private clearJsonName()V
    .locals 1

    .line 1134
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method private clearKind()V
    .locals 1

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 626
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 778
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    .line 779
    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field;->number_:I

    .line 726
    return-void
.end method

.method private clearOneofIndex()V
    .locals 1

    .line 905
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    .line 906
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 1070
    invoke-static {}, Lcom/google/protobuf/Field;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1071
    return-void
.end method

.method private clearPacked()V
    .locals 1

    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    .line 944
    return-void
.end method

.method private clearTypeUrl()V
    .locals 1

    .line 849
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 850
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1005
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Option;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    nop

    .line 1007
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1009
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Field;
    .locals 1

    .line 2078
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 1

    .line 1293
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Field;

    .line 1296
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Field;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/Field;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/Field;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1241
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1288
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1258
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1221
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1246
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1253
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2084
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1080
    invoke-direct {p0}, Lcom/google/protobuf/Field;->ensureOptionsIsMutable()V

    .line 1081
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method private setCardinality(Lcom/google/protobuf/Field$Cardinality;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Field$Cardinality;

    .line 675
    invoke-virtual {p1}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 677
    return-void
.end method

.method private setCardinalityValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 664
    iput p1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 665
    return-void
.end method

.method private setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    iput-object p1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 1191
    return-void
.end method

.method private setDefaultValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1213
    invoke-static {p1}, Lcom/google/protobuf/Field;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1214
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 1216
    return-void
.end method

.method private setJsonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    iput-object p1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 1124
    return-void
.end method

.method private setJsonNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1146
    invoke-static {p1}, Lcom/google/protobuf/Field;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1147
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 1149
    return-void
.end method

.method private setKind(Lcom/google/protobuf/Field$Kind;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Field$Kind;

    .line 613
    invoke-virtual {p1}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 615
    return-void
.end method

.method private setKindValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 602
    iput p1, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 603
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    iput-object p1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    .line 768
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 790
    invoke-static {p1}, Lcom/google/protobuf/Field;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 791
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    .line 793
    return-void
.end method

.method private setNumber(I)V
    .locals 0
    .param p1, "value"    # I

    .line 714
    iput p1, p0, Lcom/google/protobuf/Field;->number_:I

    .line 715
    return-void
.end method

.method private setOneofIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .line 893
    iput p1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    .line 894
    return-void
.end method

.method private setOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 1020
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    invoke-direct {p0}, Lcom/google/protobuf/Field;->ensureOptionsIsMutable()V

    .line 1022
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1023
    return-void
.end method

.method private setPacked(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 932
    iput-boolean p1, p0, Lcom/google/protobuf/Field;->packed_:Z

    .line 933
    return-void
.end method

.method private setTypeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    iput-object p1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 838
    return-void
.end method

.method private setTypeUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 862
    invoke-static {p1}, Lcom/google/protobuf/Field;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 863
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 865
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2010
    sget-object v0, Lcom/google/protobuf/Field$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2062
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2059
    :pswitch_0
    return-object v2

    .line 2056
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2041
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 2042
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Field;>;"
    if-nez v0, :cond_1

    .line 2043
    const-class v1, Lcom/google/protobuf/Field;

    monitor-enter v1

    .line 2044
    :try_start_0
    sget-object v2, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2045
    if-nez v0, :cond_0

    .line 2046
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2049
    sput-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 2051
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2053
    :cond_1
    :goto_0
    return-object v0

    .line 2038
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Field;>;"
    :pswitch_3
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0

    .line 2018
    :pswitch_4
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "kind_"

    aput-object v3, v0, v2

    const-string v2, "cardinality_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "typeUrl_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oneofIndex_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "packed_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "options_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/google/protobuf/Option;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jsonName_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "defaultValue_"

    aput-object v2, v0, v1

    .line 2031
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\n\u0000\u0000\u0001\u000b\n\u0000\u0001\u0000\u0001\u000c\u0002\u000c\u0003\u0004\u0004\u0208\u0006\u0208\u0007\u0004\u0008\u0007\t\u001b\n\u0208\u000b\u0208"

    .line 2034
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/Field;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2015
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/protobuf/Field$Builder;

    invoke-direct {v0, v2}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/Field$1;)V

    return-object v0

    .line 2012
    :pswitch_6
    new-instance v0, Lcom/google/protobuf/Field;

    invoke-direct {v0}, Lcom/google/protobuf/Field;-><init>()V

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

.method public getCardinality()Lcom/google/protobuf/Field$Cardinality;
    .locals 2

    .line 652
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Cardinality;->forNumber(I)Lcom/google/protobuf/Field$Cardinality;

    move-result-object v0

    .line 653
    .local v0, "result":Lcom/google/protobuf/Field$Cardinality;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/protobuf/Field$Cardinality;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getCardinalityValue()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/google/protobuf/Field$Kind;
    .locals 2

    .line 590
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Kind;->forNumber(I)Lcom/google/protobuf/Field$Kind;

    move-result-object v0

    .line 591
    .local v0, "result":Lcom/google/protobuf/Field$Kind;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/google/protobuf/Field$Kind;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getKindValue()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/google/protobuf/Field;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .line 880
    iget v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 990
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 957
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1001
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 968
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .line 920
    iget-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
