.class public final Lcom/google/logging/type/HttpRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HttpRequest.java"

# interfaces
.implements Lcom/google/logging/type/HttpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/logging/type/HttpRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/logging/type/HttpRequest;",
        "Lcom/google/logging/type/HttpRequest$Builder;",
        ">;",
        "Lcom/google/logging/type/HttpRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CACHE_FILL_BYTES_FIELD_NUMBER:I = 0xc

.field public static final CACHE_HIT_FIELD_NUMBER:I = 0x9

.field public static final CACHE_LOOKUP_FIELD_NUMBER:I = 0xb

.field public static final CACHE_VALIDATED_WITH_ORIGIN_SERVER_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

.field public static final LATENCY_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0xf

.field public static final REFERER_FIELD_NUMBER:I = 0x8

.field public static final REMOTE_IP_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_METHOD_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_SIZE_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_SIZE_FIELD_NUMBER:I = 0x5

.field public static final SERVER_IP_FIELD_NUMBER:I = 0xd

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x6


# instance fields
.field private cacheFillBytes_:J

.field private cacheHit_:Z

.field private cacheLookup_:Z

.field private cacheValidatedWithOriginServer_:Z

.field private latency_:Lcom/google/protobuf/Duration;

.field private protocol_:Ljava/lang/String;

.field private referer_:Ljava/lang/String;

.field private remoteIp_:Ljava/lang/String;

.field private requestMethod_:Ljava/lang/String;

.field private requestSize_:J

.field private requestUrl_:Ljava/lang/String;

.field private responseSize_:J

.field private serverIp_:Ljava/lang/String;

.field private status_:I

.field private userAgent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1969
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest;-><init>()V

    .line 1972
    .local v0, "defaultInstance":Lcom/google/logging/type/HttpRequest;
    sput-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    .line 1973
    const-class v1, Lcom/google/logging/type/HttpRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1975
    .end local v0    # "defaultInstance":Lcom/google/logging/type/HttpRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000()Lcom/google/logging/type/HttpRequest;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setResponseSize(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearResponseSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearUserAgent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setUserAgentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRemoteIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRemoteIp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setServerIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestMethod()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearServerIp()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setServerIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setReferer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearReferer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRefererBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setLatency(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->mergeLatency(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearLatency()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheLookup(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheLookup()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestMethodBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheHit(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheHit()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheValidatedWithOriginServer(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheValidatedWithOriginServer()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setCacheFillBytes(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheFillBytes()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearProtocol()V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestUrl()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setRequestSize(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestSize()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/logging/type/HttpRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setStatus(I)V

    return-void
.end method

.method private clearCacheFillBytes()V
    .locals 2

    .line 826
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    .line 827
    return-void
.end method

.method private clearCacheHit()V
    .locals 1

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    .line 742
    return-void
.end method

.method private clearCacheLookup()V
    .locals 1

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    .line 701
    return-void
.end method

.method private clearCacheValidatedWithOriginServer()V
    .locals 1

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    .line 786
    return-void
.end method

.method private clearLatency()V
    .locals 1

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 663
    return-void
.end method

.method private clearProtocol()V
    .locals 1

    .line 879
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 880
    return-void
.end method

.method private clearReferer()V
    .locals 1

    .line 575
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 576
    return-void
.end method

.method private clearRemoteIp()V
    .locals 1

    .line 427
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 428
    return-void
.end method

.method private clearRequestMethod()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private clearRequestSize()V
    .locals 2

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    .line 212
    return-void
.end method

.method private clearRequestUrl()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private clearResponseSize()V
    .locals 2

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    .line 294
    return-void
.end method

.method private clearServerIp()V
    .locals 1

    .line 499
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 500
    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    .line 253
    return-void
.end method

.method private clearUserAgent()V
    .locals 1

    .line 354
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/logging/type/HttpRequest;
    .locals 1

    .line 1978
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method private mergeLatency(Lcom/google/protobuf/Duration;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 647
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration;

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 652
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 971
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/logging/type/HttpRequest;

    .line 974
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0, p0}, Lcom/google/logging/type/HttpRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/logging/type/HttpRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/logging/type/HttpRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 919
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 899
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 906
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 924
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 931
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 1984
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCacheFillBytes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 814
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    .line 815
    return-void
.end method

.method private setCacheHit(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 729
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    .line 730
    return-void
.end method

.method private setCacheLookup(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 689
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    .line 690
    return-void
.end method

.method private setCacheValidatedWithOriginServer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 772
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    .line 773
    return-void
.end method

.method private setLatency(Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 632
    return-void
.end method

.method private setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 869
    return-void
.end method

.method private setProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 891
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 892
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 894
    return-void
.end method

.method private setReferer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 563
    return-void
.end method

.method private setRefererBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 589
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 590
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 592
    return-void
.end method

.method private setRemoteIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 416
    return-void
.end method

.method private setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 440
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 441
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 443
    return-void
.end method

.method private setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private setRequestMethodBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 91
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private setRequestSize(J)V
    .locals 0
    .param p1, "value"    # J

    .line 199
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    .line 200
    return-void
.end method

.method private setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private setRequestUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 168
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private setResponseSize(J)V
    .locals 0
    .param p1, "value"    # J

    .line 281
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    .line 282
    return-void
.end method

.method private setServerIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 488
    return-void
.end method

.method private setServerIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 512
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 513
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 515
    return-void
.end method

.method private setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    .line 240
    iput p1, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    .line 241
    return-void
.end method

.method private setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 342
    return-void
.end method

.method private setUserAgentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 368
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 369
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 371
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1905
    sget-object v0, Lcom/google/logging/type/HttpRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1962
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1959
    :pswitch_0
    return-object v2

    .line 1956
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1941
    :pswitch_2
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1942
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/logging/type/HttpRequest;>;"
    if-nez v0, :cond_1

    .line 1943
    const-class v1, Lcom/google/logging/type/HttpRequest;

    monitor-enter v1

    .line 1944
    :try_start_0
    sget-object v2, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1945
    if-nez v0, :cond_0

    .line 1946
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1949
    sput-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1951
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1953
    :cond_1
    :goto_0
    return-object v0

    .line 1938
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/logging/type/HttpRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0

    .line 1913
    :pswitch_4
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "requestMethod_"

    aput-object v3, v0, v2

    const-string v2, "requestUrl_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "requestSize_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "responseSize_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "userAgent_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "remoteIp_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "referer_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cacheHit_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cacheValidatedWithOriginServer_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cacheLookup_"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cacheFillBytes_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "serverIp_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latency_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "protocol_"

    aput-object v2, v0, v1

    .line 1930
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u000f\u0000\u0000\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0004\u0005\u0002\u0006\u0208\u0007\u0208\u0008\u0208\t\u0007\n\u0007\u000b\u0007\u000c\u0002\r\u0208\u000e\t\u000f\u0208"

    .line 1934
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v2, v1, v0}, Lcom/google/logging/type/HttpRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1910
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/logging/type/HttpRequest$Builder;

    invoke-direct {v0, v2}, Lcom/google/logging/type/HttpRequest$Builder;-><init>(Lcom/google/logging/type/HttpRequest$1;)V

    return-object v0

    .line 1907
    :pswitch_6
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest;-><init>()V

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

.method public getCacheFillBytes()J
    .locals 2

    .line 801
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    return-wide v0
.end method

.method public getCacheHit()Z
    .locals 1

    .line 716
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    return v0
.end method

.method public getCacheLookup()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    return v0
.end method

.method public getCacheValidatedWithOriginServer()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    return v0
.end method

.method public getLatency()Lcom/google/protobuf/Duration;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    return-wide v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseSize()J
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    return-wide v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLatency()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
