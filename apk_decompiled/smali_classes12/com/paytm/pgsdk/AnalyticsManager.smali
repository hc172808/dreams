.class public Lcom/paytm/pgsdk/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# static fields
.field private static volatile INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;


# instance fields
.field private callingBridge:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    .line 130
    sget-object v0, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    .line 133
    :cond_0
    return-void
.end method

.method private getEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "flowType"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "deviceModel":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "timestamp":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "osVersion":Ljava/lang/String;
    const-string v3, "AIO_1.0"

    .line 96
    .local v3, "sdkVersion":Ljava/lang/String;
    const-string v4, "SmartPhone"

    .line 97
    .local v4, "deviceType":Ljava/lang/String;
    const-string v5, "SDK"

    .line 100
    .local v5, "platform":Ljava/lang/String;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v6

    iget-object v6, v6, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    .line 101
    .local v6, "mOrder":Lcom/paytm/pgsdk/PaytmOrder;
    const-string v7, ""

    .local v7, "mid":Ljava/lang/String;
    const-string v8, ""

    .line 102
    .local v8, "orderId":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 103
    invoke-virtual {v6}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v9

    const-string v10, "MID"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Ljava/lang/String;

    .line 104
    invoke-virtual {v6}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v9

    const-string v10, "ORDER_ID"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    .line 106
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DW-COOKIE,af7ba81c-89c9-483c-a080-c31810628346_1596204312728,,,,,,,eventType=AIO_SDK_PG^mid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^orderid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^deviceModel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^os=android^osVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^timestamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^flow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^sdkVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^platform="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^deviceType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "^eventCategory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "AIO_SDK_PG"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "^eventAction="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "^"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "^,,,,,,,,,"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "data":Ljava/lang/String;
    return-object v9
.end method

.method public static getInstance()Lcom/paytm/pgsdk/AnalyticsManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/paytm/pgsdk/AnalyticsManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/paytm/pgsdk/AnalyticsManager;

    invoke-direct {v1}, Lcom/paytm/pgsdk/AnalyticsManager;-><init>()V

    sput-object v1, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/paytm/pgsdk/AnalyticsManager;->INSTANCE:Lcom/paytm/pgsdk/AnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public getCallingBridge()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/paytm/pgsdk/AnalyticsManager;->callingBridge:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLabelString(Lcom/paytm/pgsdk/PaytmOrder;)Ljava/lang/String;
    .locals 5
    .param p1, "paytmOrder"    # Lcom/paytm/pgsdk/PaytmOrder;

    .line 79
    const-string v0, ""

    .local v0, "mid":Ljava/lang/String;
    const-string v1, ""

    .line 80
    .local v1, "orderId":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "MID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ORDER_ID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 84
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "orderId"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bridgeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/paytm/pgsdk/AnalyticsManager;->callingBridge:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "flowType"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 75
    const-string v0, "Error"

    const-string v1, "errorDescription"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "flowType"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;

    .line 41
    const-string v0, "mas-log.paas.paytm.com"

    .line 42
    .local v0, "EVENTS_URL":Ljava/lang/String;
    new-instance v1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 43
    const-string v2, "https"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 45
    const-string v2, "loggw"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 46
    const-string v2, "dwcookieLogGet.do"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/paytm/pgsdk/AnalyticsManager;->getEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 50
    .local v1, "builder":Lokhttp3/HttpUrl$Builder;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 51
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 55
    .local v2, "request":Lokhttp3/Request;
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 56
    .local v3, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/paytm/pgsdk/AnalyticsManager$1;

    invoke-direct {v5, p0, p1, p3}, Lcom/paytm/pgsdk/AnalyticsManager$1;-><init>(Lcom/paytm/pgsdk/AnalyticsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 67
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "flowType"    # Ljava/lang/String;
    .param p3, "eventLabelKey"    # Ljava/lang/String;
    .param p4, "eventLabelVal"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "eventLabel":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setCallingBridge(Ljava/lang/String;)V
    .locals 0
    .param p1, "callingBridge"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/paytm/pgsdk/AnalyticsManager;->callingBridge:Ljava/lang/String;

    .line 25
    return-void
.end method
