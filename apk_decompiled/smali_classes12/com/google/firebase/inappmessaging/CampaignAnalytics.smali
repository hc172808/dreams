.class public final Lcom/google/firebase/inappmessaging/CampaignAnalytics;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignAnalytics.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CampaignAnalyticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;,
        Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CampaignAnalytics;",
        "Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CampaignAnalyticsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_APP_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

.field public static final DISMISS_TYPE_FIELD_NUMBER:I = 0x6

.field public static final ENGAGEMENTMETRICS_DELIVERY_RETRY_COUNT_FIELD_NUMBER:I = 0xa

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x5

.field public static final FETCH_ERROR_REASON_FIELD_NUMBER:I = 0x8

.field public static final FIAM_SDK_VERSION_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CampaignAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final RENDER_ERROR_REASON_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private campaignId_:Ljava/lang/String;

.field private clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

.field private clientTimestampMillis_:J

.field private engagementMetricsDeliveryRetryCount_:I

.field private eventCase_:I

.field private event_:Ljava/lang/Object;

.field private fiamSdkVersion_:Ljava/lang/String;

.field private projectNumber_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1556
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;-><init>()V

    .line 1559
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 1560
    const-class v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1562
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearClientApp()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/inappmessaging/CampaignAnalytics;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # J

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setClientTimestampMillis(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearClientTimestampMillis()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/EventType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/EventType;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setEventType(Lcom/google/firebase/inappmessaging/EventType;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearEventType()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/DismissType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/DismissType;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setDismissType(Lcom/google/firebase/inappmessaging/DismissType;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearDismissType()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/RenderErrorReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setRenderErrorReason(Lcom/google/firebase/inappmessaging/RenderErrorReason;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearRenderErrorReason()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/FetchErrorReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setFetchErrorReason(Lcom/google/firebase/inappmessaging/FetchErrorReason;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setProjectNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearFetchErrorReason()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setFiamSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearFiamSdkVersion()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setFiamSdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firebase/inappmessaging/CampaignAnalytics;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setEngagementMetricsDeliveryRetryCount(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearEngagementMetricsDeliveryRetryCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearProjectNumber()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setProjectNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setCampaignId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clearCampaignId()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setCampaignIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->setClientApp(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->mergeClientApp(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V

    return-void
.end method

.method private clearCampaignId()V
    .locals 1

    .line 217
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 218
    invoke-static {}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private clearClientApp()V
    .locals 1

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 303
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 304
    return-void
.end method

.method private clearClientTimestampMillis()V
    .locals 2

    .line 356
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientTimestampMillis_:J

    .line 358
    return-void
.end method

.method private clearDismissType()V
    .locals 2

    .line 464
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 468
    :cond_0
    return-void
.end method

.method private clearEngagementMetricsDeliveryRetryCount()V
    .locals 1

    .line 716
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->engagementMetricsDeliveryRetryCount_:I

    .line 718
    return-void
.end method

.method private clearEvent()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private clearEventType()V
    .locals 2

    .line 409
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 413
    :cond_0
    return-void
.end method

.method private clearFetchErrorReason()V
    .locals 2

    .line 574
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 578
    :cond_0
    return-void
.end method

.method private clearFiamSdkVersion()V
    .locals 1

    .line 641
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 642
    invoke-static {}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getFiamSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    .line 643
    return-void
.end method

.method private clearProjectNumber()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 135
    invoke-static {}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getProjectNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private clearRenderErrorReason()V
    .locals 2

    .line 519
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 523
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1

    .line 1565
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method private mergeClientApp(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 288
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->newBuilder(Lcom/google/firebase/inappmessaging/ClientAppInfo;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    goto :goto_0

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 292
    :goto_0
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 293
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;
    .locals 1

    .line 795
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CampaignAnalytics;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 798
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 736
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 743
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 723
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 730
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 748
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CampaignAnalytics;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 755
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CampaignAnalytics;",
            ">;"
        }
    .end annotation

    .line 1571
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCampaignId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 206
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private setCampaignIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 231
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    .line 232
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 233
    return-void
.end method

.method private setClientApp(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 272
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 273
    return-void
.end method

.method private setClientTimestampMillis(J)V
    .locals 1
    .param p1, "value"    # J

    .line 344
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 345
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientTimestampMillis_:J

    .line 346
    return-void
.end method

.method private setDismissType(Lcom/google/firebase/inappmessaging/DismissType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/DismissType;

    .line 453
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/DismissType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 454
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 455
    return-void
.end method

.method private setEngagementMetricsDeliveryRetryCount(I)V
    .locals 1
    .param p1, "value"    # I

    .line 702
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 703
    iput p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->engagementMetricsDeliveryRetryCount_:I

    .line 704
    return-void
.end method

.method private setEventType(Lcom/google/firebase/inappmessaging/EventType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/EventType;

    .line 398
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/EventType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 399
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 400
    return-void
.end method

.method private setFetchErrorReason(Lcom/google/firebase/inappmessaging/FetchErrorReason;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 563
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/FetchErrorReason;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 564
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 565
    return-void
.end method

.method private setFiamSdkVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 631
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    .line 632
    return-void
.end method

.method private setFiamSdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 654
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    .line 655
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 656
    return-void
.end method

.method private setProjectNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 124
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private setProjectNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 147
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    .line 148
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    .line 149
    return-void
.end method

.method private setRenderErrorReason(Lcom/google/firebase/inappmessaging/RenderErrorReason;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 508
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/RenderErrorReason;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    .line 509
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    .line 510
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1494
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1549
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1546
    :pswitch_0
    return-object v2

    .line 1543
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1528
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->PARSER:Lcom/google/protobuf/Parser;

    .line 1529
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CampaignAnalytics;>;"
    if-nez v0, :cond_1

    .line 1530
    const-class v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    monitor-enter v1

    .line 1531
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1532
    if-nez v0, :cond_0

    .line 1533
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1536
    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->PARSER:Lcom/google/protobuf/Parser;

    .line 1538
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1540
    :cond_1
    :goto_0
    return-object v0

    .line 1525
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CampaignAnalytics;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    return-object v0

    .line 1502
    :pswitch_4
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event_"

    aput-object v3, v0, v2

    const-string v2, "eventCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "projectNumber_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "campaignId_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "clientApp_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "clientTimestampMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 1510
    invoke-static {}, Lcom/google/firebase/inappmessaging/EventType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 1511
    invoke-static {}, Lcom/google/firebase/inappmessaging/DismissType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 1512
    invoke-static {}, Lcom/google/firebase/inappmessaging/RenderErrorReason;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 1513
    invoke-static {}, Lcom/google/firebase/inappmessaging/FetchErrorReason;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fiamSdkVersion_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "engagementMetricsDeliveryRetryCount_"

    aput-object v2, v0, v1

    .line 1517
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\n\u0001\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1002\u0003\u0005\u103f\u0000\u0006\u103f\u0000\u0007\u103f\u0000\u0008\u103f\u0000\t\u1008\u0008\n\u1004\t"

    .line 1521
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1499
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$Builder;-><init>(Lcom/google/firebase/inappmessaging/CampaignAnalytics$1;)V

    return-object v0

    .line 1496
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;-><init>()V

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

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->campaignId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClientApp()Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientApp_:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClientTimestampMillis()J
    .locals 2

    .line 332
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->clientTimestampMillis_:J

    return-wide v0
.end method

.method public getDismissType()Lcom/google/firebase/inappmessaging/DismissType;
    .locals 2

    .line 438
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/DismissType;->forNumber(I)Lcom/google/firebase/inappmessaging/DismissType;

    move-result-object v0

    .line 440
    .local v0, "result":Lcom/google/firebase/inappmessaging/DismissType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/inappmessaging/DismissType;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/DismissType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 442
    .end local v0    # "result":Lcom/google/firebase/inappmessaging/DismissType;
    :cond_1
    sget-object v0, Lcom/google/firebase/inappmessaging/DismissType;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/DismissType;

    return-object v0
.end method

.method public getEngagementMetricsDeliveryRetryCount()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->engagementMetricsDeliveryRetryCount_:I

    return v0
.end method

.method public getEventCase()Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/google/firebase/inappmessaging/EventType;
    .locals 2

    .line 383
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/EventType;->forNumber(I)Lcom/google/firebase/inappmessaging/EventType;

    move-result-object v0

    .line 385
    .local v0, "result":Lcom/google/firebase/inappmessaging/EventType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 387
    .end local v0    # "result":Lcom/google/firebase/inappmessaging/EventType;
    :cond_1
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object v0
.end method

.method public getFetchErrorReason()Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 2

    .line 548
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/FetchErrorReason;->forNumber(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;

    move-result-object v0

    .line 550
    .local v0, "result":Lcom/google/firebase/inappmessaging/FetchErrorReason;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 552
    .end local v0    # "result":Lcom/google/firebase/inappmessaging/FetchErrorReason;
    :cond_1
    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object v0
.end method

.method public getFiamSdkVersion()Ljava/lang/String;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getFiamSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->fiamSdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProjectNumber()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->projectNumber_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRenderErrorReason()Lcom/google/firebase/inappmessaging/RenderErrorReason;
    .locals 2

    .line 493
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->event_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/RenderErrorReason;->forNumber(I)Lcom/google/firebase/inappmessaging/RenderErrorReason;

    move-result-object v0

    .line 495
    .local v0, "result":Lcom/google/firebase/inappmessaging/RenderErrorReason;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/inappmessaging/RenderErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 497
    .end local v0    # "result":Lcom/google/firebase/inappmessaging/RenderErrorReason;
    :cond_1
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0
.end method

.method public hasCampaignId()Z
    .locals 1

    .line 164
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClientApp()Z
    .locals 1

    .line 247
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClientTimestampMillis()Z
    .locals 1

    .line 319
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDismissType()Z
    .locals 2

    .line 426
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEngagementMetricsDeliveryRetryCount()Z
    .locals 1

    .line 673
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventType()Z
    .locals 2

    .line 371
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFetchErrorReason()Z
    .locals 2

    .line 536
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFiamSdkVersion()Z
    .locals 1

    .line 592
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProjectNumber()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRenderErrorReason()Z
    .locals 2

    .line 481
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
