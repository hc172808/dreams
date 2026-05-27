.class public final Lcom/google/api/Service;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Service.java"

# interfaces
.implements Lcom/google/api/ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Service$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Service;",
        "Lcom/google/api/Service$Builder;",
        ">;",
        "Lcom/google/api/ServiceOrBuilder;"
    }
.end annotation


# static fields
.field public static final APIS_FIELD_NUMBER:I = 0x3

.field public static final AUTHENTICATION_FIELD_NUMBER:I = 0xb

.field public static final BACKEND_FIELD_NUMBER:I = 0x8

.field public static final BILLING_FIELD_NUMBER:I = 0x1a

.field public static final CONFIG_VERSION_FIELD_NUMBER:I = 0x14

.field public static final CONTEXT_FIELD_NUMBER:I = 0xc

.field public static final CONTROL_FIELD_NUMBER:I = 0x15

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Service;

.field public static final DOCUMENTATION_FIELD_NUMBER:I = 0x6

.field public static final ENDPOINTS_FIELD_NUMBER:I = 0x12

.field public static final ENUMS_FIELD_NUMBER:I = 0x5

.field public static final HTTP_FIELD_NUMBER:I = 0x9

.field public static final ID_FIELD_NUMBER:I = 0x21

.field public static final LOGGING_FIELD_NUMBER:I = 0x1b

.field public static final LOGS_FIELD_NUMBER:I = 0x17

.field public static final METRICS_FIELD_NUMBER:I = 0x18

.field public static final MONITORED_RESOURCES_FIELD_NUMBER:I = 0x19

.field public static final MONITORING_FIELD_NUMBER:I = 0x1c

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_PROJECT_ID_FIELD_NUMBER:I = 0x16

.field public static final QUOTA_FIELD_NUMBER:I = 0xa

.field public static final SOURCE_INFO_FIELD_NUMBER:I = 0x25

.field public static final SYSTEM_PARAMETERS_FIELD_NUMBER:I = 0x1d

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TYPES_FIELD_NUMBER:I = 0x4

.field public static final USAGE_FIELD_NUMBER:I = 0xf


# instance fields
.field private apis_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field private authentication_:Lcom/google/api/Authentication;

.field private backend_:Lcom/google/api/Backend;

.field private billing_:Lcom/google/api/Billing;

.field private configVersion_:Lcom/google/protobuf/UInt32Value;

.field private context_:Lcom/google/api/Context;

.field private control_:Lcom/google/api/Control;

.field private documentation_:Lcom/google/api/Documentation;

.field private endpoints_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private enums_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private http_:Lcom/google/api/Http;

.field private id_:Ljava/lang/String;

.field private logging_:Lcom/google/api/Logging;

.field private logs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private metrics_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoring_:Lcom/google/api/Monitoring;

.field private name_:Ljava/lang/String;

.field private producerProjectId_:Ljava/lang/String;

.field private quota_:Lcom/google/api/Quota;

.field private sourceInfo_:Lcom/google/api/SourceInfo;

.field private systemParameters_:Lcom/google/api/SystemParameters;

.field private title_:Ljava/lang/String;

.field private types_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field private usage_:Lcom/google/api/Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5234
    new-instance v0, Lcom/google/api/Service;

    invoke-direct {v0}, Lcom/google/api/Service;-><init>()V

    .line 5237
    .local v0, "defaultInstance":Lcom/google/api/Service;
    sput-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    .line 5238
    const-class v1, Lcom/google/api/Service;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5240
    .end local v0    # "defaultInstance":Lcom/google/api/Service;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 44
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 45
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 46
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 47
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 48
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 49
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 50
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Service;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/UInt32Value;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setConfigVersion(Lcom/google/protobuf/UInt32Value;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearTitle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setProducerProjectId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearProducerProjectId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Api;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setApis(ILcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/Api;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addApis(Lcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Api;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addApis(ILcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllApis(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/UInt32Value;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearApis()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeApis(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Type;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setTypes(ILcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/Type;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addTypes(Lcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Type;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addTypes(ILcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllTypes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearTypes()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeTypes(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Enum;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setEnums(ILcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/Enum;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addEnums(Lcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearConfigVersion()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Enum;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addEnums(ILcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllEnums(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearEnums()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeEnums(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Documentation;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setDocumentation(Lcom/google/api/Documentation;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/api/Service;Lcom/google/api/Documentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Documentation;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeDocumentation(Lcom/google/api/Documentation;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearDocumentation()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Backend;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setBackend(Lcom/google/api/Backend;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/api/Service;Lcom/google/api/Backend;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Backend;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeBackend(Lcom/google/api/Backend;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearBackend()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Http;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setHttp(Lcom/google/api/Http;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/api/Service;Lcom/google/api/Http;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Http;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeHttp(Lcom/google/api/Http;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearHttp()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Quota;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setQuota(Lcom/google/api/Quota;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/api/Service;Lcom/google/api/Quota;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Quota;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeQuota(Lcom/google/api/Quota;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearQuota()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Authentication;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setAuthentication(Lcom/google/api/Authentication;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/api/Service;Lcom/google/api/Authentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Authentication;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeAuthentication(Lcom/google/api/Authentication;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearAuthentication()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setContext(Lcom/google/api/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearName()V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/api/Service;Lcom/google/api/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeContext(Lcom/google/api/Context;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearContext()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Usage;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setUsage(Lcom/google/api/Usage;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/api/Service;Lcom/google/api/Usage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Usage;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeUsage(Lcom/google/api/Usage;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearUsage()V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Endpoint;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setEndpoints(ILcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Endpoint;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addEndpoints(Lcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Endpoint;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addEndpoints(ILcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllEndpoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearEndpoints()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeEndpoints(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Control;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setControl(Lcom/google/api/Control;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/api/Service;Lcom/google/api/Control;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Control;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeControl(Lcom/google/api/Control;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearControl()V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/LogDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setLogs(ILcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/LogDescriptor;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addLogs(Lcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/LogDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addLogs(ILcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllLogs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearLogs()V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeLogs(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MetricDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setMetrics(ILcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/MetricDescriptor;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addMetrics(Lcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MetricDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addMetrics(ILcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllMetrics(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearMetrics()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeMetrics(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllMonitoredResources(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearId()V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearMonitoredResources()V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/api/Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeMonitoredResources(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Billing;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setBilling(Lcom/google/api/Billing;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/api/Service;Lcom/google/api/Billing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Billing;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeBilling(Lcom/google/api/Billing;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearBilling()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Logging;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setLogging(Lcom/google/api/Logging;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/api/Service;Lcom/google/api/Logging;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Logging;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeLogging(Lcom/google/api/Logging;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearLogging()V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Monitoring;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setMonitoring(Lcom/google/api/Monitoring;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/Monitoring;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeMonitoring(Lcom/google/api/Monitoring;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearMonitoring()V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/SystemParameters;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setSystemParameters(Lcom/google/api/SystemParameters;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/SystemParameters;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeSystemParameters(Lcom/google/api/SystemParameters;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearSystemParameters()V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/SourceInfo;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setSourceInfo(Lcom/google/api/SourceInfo;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;
    .param p1, "x1"    # Lcom/google/api/SourceInfo;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeSourceInfo(Lcom/google/api/SourceInfo;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/api/Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Service;

    .line 33
    invoke-direct {p0}, Lcom/google/api/Service;->clearSourceInfo()V

    return-void
.end method

.method private addAllApis(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Api;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Api;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 574
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 576
    return-void
.end method

.method private addAllEndpoints(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Endpoint;",
            ">;)V"
        }
    .end annotation

    .line 1596
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Endpoint;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1597
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1599
    return-void
.end method

.method private addAllEnums(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Enum;",
            ">;)V"
        }
    .end annotation

    .line 968
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Enum;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 969
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 971
    return-void
.end method

.method private addAllLogs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LogDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1804
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/LogDescriptor;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1805
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1807
    return-void
.end method

.method private addAllMetrics(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1942
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MetricDescriptor;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1943
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1945
    return-void
.end method

.method private addAllMonitoredResources(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 2089
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MonitoredResourceDescriptor;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2090
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2092
    return-void
.end method

.method private addAllTypes(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Type;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Type;>;"
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 774
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 776
    return-void
.end method

.method private addApis(ILcom/google/protobuf/Api;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 556
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 558
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 559
    return-void
.end method

.method private addApis(Lcom/google/protobuf/Api;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Api;

    .line 539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 541
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 542
    return-void
.end method

.method private addEndpoints(ILcom/google/api/Endpoint;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 1581
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1582
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1583
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1584
    return-void
.end method

.method private addEndpoints(Lcom/google/api/Endpoint;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Endpoint;

    .line 1566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1567
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1568
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1569
    return-void
.end method

.method private addEnums(ILcom/google/protobuf/Enum;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 950
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 952
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 953
    return-void
.end method

.method private addEnums(Lcom/google/protobuf/Enum;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Enum;

    .line 932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 934
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 935
    return-void
.end method

.method private addLogs(ILcom/google/api/LogDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 1791
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1792
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1793
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1794
    return-void
.end method

.method private addLogs(Lcom/google/api/LogDescriptor;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/LogDescriptor;

    .line 1778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1779
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1780
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1781
    return-void
.end method

.method private addMetrics(ILcom/google/api/MetricDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 1929
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1930
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1931
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1932
    return-void
.end method

.method private addMetrics(Lcom/google/api/MetricDescriptor;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/MetricDescriptor;

    .line 1916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1917
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1918
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1919
    return-void
.end method

.method private addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 2075
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2076
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2077
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2078
    return-void
.end method

.method private addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 2061
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2062
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2063
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2064
    return-void
.end method

.method private addTypes(ILcom/google/protobuf/Type;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 754
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 756
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 757
    return-void
.end method

.method private addTypes(Lcom/google/protobuf/Type;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Type;

    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 737
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method private clearApis()V
    .locals 1

    .line 589
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 590
    return-void
.end method

.method private clearAuthentication()V
    .locals 1

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1332
    return-void
.end method

.method private clearBackend()V
    .locals 1

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1134
    return-void
.end method

.method private clearBilling()V
    .locals 1

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2181
    return-void
.end method

.method private clearConfigVersion()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 130
    return-void
.end method

.method private clearContext()V
    .locals 1

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1398
    return-void
.end method

.method private clearControl()V
    .locals 1

    .line 1688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1690
    return-void
.end method

.method private clearDocumentation()V
    .locals 1

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1068
    return-void
.end method

.method private clearEndpoints()V
    .locals 1

    .line 1610
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1611
    return-void
.end method

.method private clearEnums()V
    .locals 1

    .line 985
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 986
    return-void
.end method

.method private clearHttp()V
    .locals 1

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1200
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 272
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    .line 273
    return-void
.end method

.method private clearLogging()V
    .locals 1

    .line 2245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2247
    return-void
.end method

.method private clearLogs()V
    .locals 1

    .line 1816
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1817
    return-void
.end method

.method private clearMetrics()V
    .locals 1

    .line 1954
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1955
    return-void
.end method

.method private clearMonitoredResources()V
    .locals 1

    .line 2102
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2103
    return-void
.end method

.method private clearMonitoring()V
    .locals 1

    .line 2311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2313
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    .line 195
    return-void
.end method

.method private clearProducerProjectId()V
    .locals 1

    .line 408
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    .line 409
    return-void
.end method

.method private clearQuota()V
    .locals 1

    .line 1264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1266
    return-void
.end method

.method private clearSourceInfo()V
    .locals 1

    .line 2443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2445
    return-void
.end method

.method private clearSystemParameters()V
    .locals 1

    .line 2377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2379
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 341
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    .line 342
    return-void
.end method

.method private clearTypes()V
    .locals 1

    .line 791
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 792
    return-void
.end method

.method private clearUsage()V
    .locals 1

    .line 1462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1464
    return-void
.end method

.method private ensureApisIsMutable()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 504
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Api;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    nop

    .line 506
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 508
    :cond_0
    return-void
.end method

.method private ensureEndpointsIsMutable()V
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1535
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Endpoint;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1536
    nop

    .line 1537
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1539
    :cond_0
    return-void
.end method

.method private ensureEnumsIsMutable()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 895
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Enum;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    nop

    .line 897
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 899
    :cond_0
    return-void
.end method

.method private ensureLogsIsMutable()V
    .locals 2

    .line 1750
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1751
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/LogDescriptor;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    nop

    .line 1753
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1755
    :cond_0
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 1888
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1889
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/MetricDescriptor;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1890
    nop

    .line 1891
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1893
    :cond_0
    return-void
.end method

.method private ensureMonitoredResourcesIsMutable()V
    .locals 2

    .line 2031
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2032
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/MonitoredResourceDescriptor;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2033
    nop

    .line 2034
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2036
    :cond_0
    return-void
.end method

.method private ensureTypesIsMutable()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 696
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Type;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    nop

    .line 698
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 700
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Service;
    .locals 1

    .line 5243
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method private mergeAuthentication(Lcom/google/api/Authentication;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v0, :cond_0

    .line 1315
    invoke-static {}, Lcom/google/api/Authentication;->getDefaultInstance()Lcom/google/api/Authentication;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1317
    invoke-static {v0}, Lcom/google/api/Authentication;->newBuilder(Lcom/google/api/Authentication;)Lcom/google/api/Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication$Builder;

    invoke-virtual {v0}, Lcom/google/api/Authentication$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    iput-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    goto :goto_0

    .line 1319
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1322
    :goto_0
    return-void
.end method

.method private mergeBackend(Lcom/google/api/Backend;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 1115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v0, :cond_0

    .line 1117
    invoke-static {}, Lcom/google/api/Backend;->getDefaultInstance()Lcom/google/api/Backend;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1119
    invoke-static {v0}, Lcom/google/api/Backend;->newBuilder(Lcom/google/api/Backend;)Lcom/google/api/Backend$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Backend$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend$Builder;

    invoke-virtual {v0}, Lcom/google/api/Backend$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    iput-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    goto :goto_0

    .line 1121
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1124
    :goto_0
    return-void
.end method

.method private mergeBilling(Lcom/google/api/Billing;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 2162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2163
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v0, :cond_0

    .line 2164
    invoke-static {}, Lcom/google/api/Billing;->getDefaultInstance()Lcom/google/api/Billing;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2166
    invoke-static {v0}, Lcom/google/api/Billing;->newBuilder(Lcom/google/api/Billing;)Lcom/google/api/Billing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Billing$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$Builder;

    invoke-virtual {v0}, Lcom/google/api/Billing$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing;

    iput-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    goto :goto_0

    .line 2168
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2171
    :goto_0
    return-void
.end method

.method private mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 112
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt32Value;

    iput-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 117
    :goto_0
    return-void
.end method

.method private mergeContext(Lcom/google/api/Context;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Context;

    .line 1379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v0, :cond_0

    .line 1381
    invoke-static {}, Lcom/google/api/Context;->getDefaultInstance()Lcom/google/api/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1383
    invoke-static {v0}, Lcom/google/api/Context;->newBuilder(Lcom/google/api/Context;)Lcom/google/api/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Context$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Context$Builder;

    invoke-virtual {v0}, Lcom/google/api/Context$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Context;

    iput-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    goto :goto_0

    .line 1385
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1388
    :goto_0
    return-void
.end method

.method private mergeControl(Lcom/google/api/Control;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Control;

    .line 1671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1672
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v0, :cond_0

    .line 1673
    invoke-static {}, Lcom/google/api/Control;->getDefaultInstance()Lcom/google/api/Control;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1675
    invoke-static {v0}, Lcom/google/api/Control;->newBuilder(Lcom/google/api/Control;)Lcom/google/api/Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Control$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Control$Builder;

    invoke-virtual {v0}, Lcom/google/api/Control$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Control;

    iput-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    goto :goto_0

    .line 1677
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1680
    :goto_0
    return-void
.end method

.method private mergeDocumentation(Lcom/google/api/Documentation;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 1049
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1053
    invoke-static {v0}, Lcom/google/api/Documentation;->newBuilder(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation$Builder;

    invoke-virtual {v0}, Lcom/google/api/Documentation$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation;

    iput-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    goto :goto_0

    .line 1055
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1058
    :goto_0
    return-void
.end method

.method private mergeHttp(Lcom/google/api/Http;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Http;

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v0, :cond_0

    .line 1183
    invoke-static {}, Lcom/google/api/Http;->getDefaultInstance()Lcom/google/api/Http;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1185
    invoke-static {v0}, Lcom/google/api/Http;->newBuilder(Lcom/google/api/Http;)Lcom/google/api/Http$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Http$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Http$Builder;

    invoke-virtual {v0}, Lcom/google/api/Http$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Http;

    iput-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    goto :goto_0

    .line 1187
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1190
    :goto_0
    return-void
.end method

.method private mergeLogging(Lcom/google/api/Logging;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 2228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2229
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v0, :cond_0

    .line 2230
    invoke-static {}, Lcom/google/api/Logging;->getDefaultInstance()Lcom/google/api/Logging;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2232
    invoke-static {v0}, Lcom/google/api/Logging;->newBuilder(Lcom/google/api/Logging;)Lcom/google/api/Logging$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Logging$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$Builder;

    invoke-virtual {v0}, Lcom/google/api/Logging$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    iput-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    goto :goto_0

    .line 2234
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2237
    :goto_0
    return-void
.end method

.method private mergeMonitoring(Lcom/google/api/Monitoring;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 2294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2295
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v0, :cond_0

    .line 2296
    invoke-static {}, Lcom/google/api/Monitoring;->getDefaultInstance()Lcom/google/api/Monitoring;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2298
    invoke-static {v0}, Lcom/google/api/Monitoring;->newBuilder(Lcom/google/api/Monitoring;)Lcom/google/api/Monitoring$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$Builder;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring;

    iput-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    goto :goto_0

    .line 2300
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2303
    :goto_0
    return-void
.end method

.method private mergeQuota(Lcom/google/api/Quota;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 1247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1248
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/google/api/Quota;->getDefaultInstance()Lcom/google/api/Quota;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1251
    invoke-static {v0}, Lcom/google/api/Quota;->newBuilder(Lcom/google/api/Quota;)Lcom/google/api/Quota$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Quota$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota$Builder;

    invoke-virtual {v0}, Lcom/google/api/Quota$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    iput-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    goto :goto_0

    .line 1253
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1256
    :goto_0
    return-void
.end method

.method private mergeSourceInfo(Lcom/google/api/SourceInfo;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 2426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2427
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v0, :cond_0

    .line 2428
    invoke-static {}, Lcom/google/api/SourceInfo;->getDefaultInstance()Lcom/google/api/SourceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2430
    invoke-static {v0}, Lcom/google/api/SourceInfo;->newBuilder(Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/SourceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo$Builder;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo;

    iput-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    goto :goto_0

    .line 2432
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2435
    :goto_0
    return-void
.end method

.method private mergeSystemParameters(Lcom/google/api/SystemParameters;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 2360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2361
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v0, :cond_0

    .line 2362
    invoke-static {}, Lcom/google/api/SystemParameters;->getDefaultInstance()Lcom/google/api/SystemParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2364
    invoke-static {v0}, Lcom/google/api/SystemParameters;->newBuilder(Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters$Builder;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    iput-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    goto :goto_0

    .line 2366
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2369
    :goto_0
    return-void
.end method

.method private mergeUsage(Lcom/google/api/Usage;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1446
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v0, :cond_0

    .line 1447
    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1449
    invoke-static {v0}, Lcom/google/api/Usage;->newBuilder(Lcom/google/api/Usage;)Lcom/google/api/Usage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Usage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage$Builder;

    invoke-virtual {v0}, Lcom/google/api/Usage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Usage;

    iput-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    goto :goto_0

    .line 1451
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1454
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2522
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Service;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Service;

    .line 2525
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0, p0}, Lcom/google/api/Service;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2499
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/api/Service;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2505
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/api/Service;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2463
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2470
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2510
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2517
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2487
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2450
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2457
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2475
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2482
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation

    .line 5249
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeApis(I)V
    .locals 1
    .param p1, "index"    # I

    .line 603
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 604
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 605
    return-void
.end method

.method private removeEndpoints(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1622
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1623
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1624
    return-void
.end method

.method private removeEnums(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1000
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 1001
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1002
    return-void
.end method

.method private removeLogs(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1826
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1827
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1828
    return-void
.end method

.method private removeMetrics(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1964
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1965
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1966
    return-void
.end method

.method private removeMonitoredResources(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2113
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2114
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 2115
    return-void
.end method

.method private removeTypes(I)V
    .locals 1
    .param p1, "index"    # I

    .line 807
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 808
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 809
    return-void
.end method

.method private setApis(ILcom/google/protobuf/Api;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 523
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 525
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method private setAuthentication(Lcom/google/api/Authentication;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 1300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1301
    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1303
    return-void
.end method

.method private setBackend(Lcom/google/api/Backend;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1103
    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1105
    return-void
.end method

.method private setBilling(Lcom/google/api/Billing;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 2149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2150
    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2152
    return-void
.end method

.method private setConfigVersion(Lcom/google/protobuf/UInt32Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 95
    return-void
.end method

.method private setContext(Lcom/google/api/Context;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Context;

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1369
    return-void
.end method

.method private setControl(Lcom/google/api/Control;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Control;

    .line 1658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1659
    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1661
    return-void
.end method

.method private setDocumentation(Lcom/google/api/Documentation;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1039
    return-void
.end method

.method private setEndpoints(ILcom/google/api/Endpoint;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 1552
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1553
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1554
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1555
    return-void
.end method

.method private setEnums(ILcom/google/protobuf/Enum;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 915
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 917
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 918
    return-void
.end method

.method private setHttp(Lcom/google/api/Http;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Http;

    .line 1168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1171
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iput-object p1, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 286
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 287
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    .line 289
    return-void
.end method

.method private setLogging(Lcom/google/api/Logging;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 2215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2216
    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2218
    return-void
.end method

.method private setLogs(ILcom/google/api/LogDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 1766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1768
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1769
    return-void
.end method

.method private setMetrics(ILcom/google/api/MetricDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 1904
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1905
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1906
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1907
    return-void
.end method

.method private setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 2048
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2049
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2050
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2051
    return-void
.end method

.method private setMonitoring(Lcom/google/api/Monitoring;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 2281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2282
    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2284
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    iput-object p1, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 209
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 210
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    .line 212
    return-void
.end method

.method private setProducerProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    iput-object p1, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    .line 398
    return-void
.end method

.method private setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 420
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 421
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    .line 423
    return-void
.end method

.method private setQuota(Lcom/google/api/Quota;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 1234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1237
    return-void
.end method

.method private setSourceInfo(Lcom/google/api/SourceInfo;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 2413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2414
    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2416
    return-void
.end method

.method private setSystemParameters(Lcom/google/api/SystemParameters;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 2347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2348
    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2350
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    iput-object p1, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    .line 331
    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 353
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 354
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    .line 356
    return-void
.end method

.method private setTypes(ILcom/google/protobuf/Type;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 717
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 719
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method private setUsage(Lcom/google/api/Usage;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 1432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1435
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 5152
    sget-object v0, Lcom/google/api/Service$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5224
    :pswitch_0
    return-object v2

    .line 5221
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5206
    :pswitch_2
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 5207
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Service;>;"
    if-nez v0, :cond_1

    .line 5208
    const-class v1, Lcom/google/api/Service;

    monitor-enter v1

    .line 5209
    :try_start_0
    sget-object v2, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5210
    if-nez v0, :cond_0

    .line 5211
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5214
    sput-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 5216
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5218
    :cond_1
    :goto_0
    return-object v0

    .line 5203
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Service;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0

    .line 5160
    :pswitch_4
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name_"

    aput-object v3, v0, v2

    const-string v2, "title_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apis_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/protobuf/Api;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "types_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/protobuf/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "enums_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/google/protobuf/Enum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "documentation_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "backend_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http_"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "quota_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "authentication_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "context_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "usage_"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "endpoints_"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/google/api/Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "configVersion_"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "control_"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "producerProjectId_"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "logs_"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/google/api/LogDescriptor;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "metrics_"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/google/api/MetricDescriptor;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "monitoredResources_"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/google/api/MonitoredResourceDescriptor;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "billing_"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "logging_"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "monitoring_"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "systemParameters_"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "id_"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sourceInfo_"

    aput-object v2, v0, v1

    .line 5194
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0019\u0000\u0000\u0001%\u0019\u0000\u0007\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\u001b\u0005\u001b\u0006\t\u0008\t\t\t\n\t\u000b\t\u000c\t\u000f\t\u0012\u001b\u0014\t\u0015\t\u0016\u0208\u0017\u001b\u0018\u001b\u0019\u001b\u001a\t\u001b\t\u001c\t\u001d\t!\u0208%\t"

    .line 5199
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v2, v1, v0}, Lcom/google/api/Service;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5157
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Service$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Service$Builder;-><init>(Lcom/google/api/Service$1;)V

    return-object v0

    .line 5154
    :pswitch_6
    new-instance v0, Lcom/google/api/Service;

    invoke-direct {v0}, Lcom/google/api/Service;-><init>()V

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

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1
    .param p1, "index"    # I

    .line 485
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public getApisCount()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getApisOrBuilder(I)Lcom/google/protobuf/ApiOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 500
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ApiOrBuilder;

    return-object v0
.end method

.method public getApisOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/ApiOrBuilder;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Authentication;->getDefaultInstance()Lcom/google/api/Authentication;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Backend;->getDefaultInstance()Lcom/google/api/Backend;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Billing;->getDefaultInstance()Lcom/google/api/Billing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Context;->getDefaultInstance()Lcom/google/api/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Control;->getDefaultInstance()Lcom/google/api/Control;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1
    .param p1, "index"    # I

    .line 1518
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Endpoint;

    return-object v0
.end method

.method public getEndpointsCount()I
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEndpointsOrBuilder(I)Lcom/google/api/EndpointOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1531
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/EndpointOrBuilder;

    return-object v0
.end method

.method public getEndpointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/EndpointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1
    .param p1, "index"    # I

    .line 875
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public getEnumsCount()I
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEnumsOrBuilder(I)Lcom/google/protobuf/EnumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 891
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumOrBuilder;

    return-object v0
.end method

.method public getEnumsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/EnumOrBuilder;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Http;->getDefaultInstance()Lcom/google/api/Http;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    .line 2205
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Logging;->getDefaultInstance()Lcom/google/api/Logging;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 1736
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/LogDescriptor;

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/google/api/LogDescriptorOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1747
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/LogDescriptorOrBuilder;

    return-object v0
.end method

.method public getLogsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/LogDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 1874
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricDescriptor;

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    .line 1841
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetricsOrBuilder(I)Lcom/google/api/MetricDescriptorOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1885
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricDescriptorOrBuilder;

    return-object v0
.end method

.method public getMetricsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/MetricDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1852
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 2016
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object v0
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    .line 2004
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResourcesOrBuilder(I)Lcom/google/api/MonitoredResourceDescriptorOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 2028
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptorOrBuilder;

    return-object v0
.end method

.method public getMonitoredResourcesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Monitoring;->getDefaultInstance()Lcom/google/api/Monitoring;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Quota;->getDefaultInstance()Lcom/google/api/Quota;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/SourceInfo;->getDefaultInstance()Lcom/google/api/SourceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 2337
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/SystemParameters;->getDefaultInstance()Lcom/google/api/SystemParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1
    .param p1, "index"    # I

    .line 675
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public getTypesCount()I
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTypesOrBuilder(I)Lcom/google/protobuf/TypeOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 692
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TypeOrBuilder;

    return-object v0
.end method

.method public getTypesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/TypeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBilling()Z
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContext()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasControl()Z
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp()Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogging()Z
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    .line 2260
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuota()Z
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    .line 2392
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    .line 2326
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
