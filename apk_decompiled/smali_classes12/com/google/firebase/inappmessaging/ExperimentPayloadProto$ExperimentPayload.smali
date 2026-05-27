.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExperimentPayloadProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ExperimentPayloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;,
        Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2959
    new-instance v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;-><init>()V

    .line 2962
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    sput-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 2963
    const-class v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2965
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 691
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 692
    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearVariantId()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setVariantIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # J

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentStartTimeMillis(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearExperimentStartTimeMillis()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTriggerEvent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # J

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerTimeoutMillis(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTriggerTimeoutMillis()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # J

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeToLiveMillis(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTimeToLiveMillis()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setSetEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearSetEventToLog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setActivateEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearActivateEventToLog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setClearEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearClearEventToLog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeoutEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTimeoutEventToLog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTtlExpiryEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTtlExpiryEventToLog()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # I

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOverflowPolicyValue(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOverflowPolicy(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearOverflowPolicy()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addAllOngoingExperiments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearOngoingExperiments()V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # I

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->removeOngoingExperiments(I)V

    return-void
.end method

.method static synthetic access$500()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 677
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 677
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearExperimentId()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .param p1, "x1"    # Ljava/lang/String;

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setVariantId(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOngoingExperiments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;)V"
        }
    .end annotation

    .line 1752
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;>;"
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1753
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1755
    return-void
.end method

.method private addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 1737
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1738
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1739
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1740
    return-void
.end method

.method private addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 1722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1723
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1724
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1725
    return-void
.end method

.method private clearActivateEventToLog()V
    .locals 1

    .line 1316
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 1317
    return-void
.end method

.method private clearClearEventToLog()V
    .locals 1

    .line 1388
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method private clearExperimentId()V
    .locals 1

    .line 880
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 881
    return-void
.end method

.method private clearExperimentStartTimeMillis()V
    .locals 2

    .line 1011
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    .line 1012
    return-void
.end method

.method private clearOngoingExperiments()V
    .locals 1

    .line 1766
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1767
    return-void
.end method

.method private clearOverflowPolicy()V
    .locals 1

    .line 1619
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    .line 1620
    return-void
.end method

.method private clearSetEventToLog()V
    .locals 1

    .line 1244
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 1245
    return-void
.end method

.method private clearTimeToLiveMillis()V
    .locals 2

    .line 1187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    .line 1188
    return-void
.end method

.method private clearTimeoutEventToLog()V
    .locals 1

    .line 1464
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method private clearTriggerEvent()V
    .locals 1

    .line 1064
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 1065
    return-void
.end method

.method private clearTriggerTimeoutMillis()V
    .locals 2

    .line 1128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    .line 1129
    return-void
.end method

.method private clearTtlExpiryEventToLog()V
    .locals 1

    .line 1541
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 1542
    return-void
.end method

.method private clearVariantId()V
    .locals 1

    .line 955
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 956
    return-void
.end method

.method private ensureOngoingExperimentsIsMutable()V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1691
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1692
    nop

    .line 1693
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1695
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 2968
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 1857
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 1860
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1834
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1840
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1798
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1805
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1845
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1822
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1829
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1785
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1792
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1810
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1817
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
            ">;"
        }
    .end annotation

    .line 2974
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOngoingExperiments(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1778
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1779
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1780
    return-void
.end method

.method private setActivateEventToLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 1305
    return-void
.end method

.method private setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1329
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1330
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method private setClearEventToLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 1377
    return-void
.end method

.method private setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1401
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1402
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 1404
    return-void
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 866
    return-void
.end method

.method private setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 896
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 897
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 899
    return-void
.end method

.method private setExperimentStartTimeMillis(J)V
    .locals 0
    .param p1, "value"    # J

    .line 999
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    .line 1000
    return-void
.end method

.method private setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 1708
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1709
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1710
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1711
    return-void
.end method

.method private setOverflowPolicy(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    .line 1607
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    .line 1609
    return-void
.end method

.method private setOverflowPolicyValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1596
    iput p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    .line 1597
    return-void
.end method

.method private setSetEventToLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method private setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1257
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1258
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 1260
    return-void
.end method

.method private setTimeToLiveMillis(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1169
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    .line 1170
    return-void
.end method

.method private setTimeoutEventToLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 1452
    return-void
.end method

.method private setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1478
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1479
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 1481
    return-void
.end method

.method private setTriggerEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 1054
    return-void
.end method

.method private setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1076
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1077
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method private setTriggerTimeoutMillis(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1113
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    .line 1114
    return-void
.end method

.method private setTtlExpiryEventToLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1528
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 1529
    return-void
.end method

.method private setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1555
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1556
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 1558
    return-void
.end method

.method private setVariantId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 944
    return-void
.end method

.method private setVariantIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 968
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 969
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 971
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2896
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2949
    :pswitch_0
    return-object v2

    .line 2946
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2931
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2932
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;>;"
    if-nez v0, :cond_1

    .line 2933
    const-class v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    monitor-enter v1

    .line 2934
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2935
    if-nez v0, :cond_0

    .line 2936
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2939
    sput-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2941
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2943
    :cond_1
    :goto_0
    return-object v0

    .line 2928
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0

    .line 2904
    :pswitch_4
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "experimentId_"

    aput-object v3, v0, v2

    const-string v2, "variantId_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "experimentStartTimeMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "triggerEvent_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "triggerTimeoutMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timeToLiveMillis_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "setEventToLog_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "activateEventToLog_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "clearEventToLog_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timeoutEventToLog_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ttlExpiryEventToLog_"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "overflowPolicy_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ongoingExperiments_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    aput-object v2, v0, v1

    .line 2920
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    .line 2924
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2901
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;-><init>(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;)V

    return-object v0

    .line 2898
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;-><init>()V

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

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 986
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    return-wide v0
.end method

.method public getOngoingExperiments(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1
    .param p1, "index"    # I

    .line 1674
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object v0
.end method

.method public getOngoingExperimentsCount()I
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOngoingExperimentsOrBuilder(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1687
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;

    return-object v0
.end method

.method public getOngoingExperimentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOverflowPolicy()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 2

    .line 1584
    iget v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->forNumber(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    .line 1585
    .local v0, "result":Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getOverflowPolicyValue()I
    .locals 1

    .line 1572
    iget v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 1150
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 1097
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
