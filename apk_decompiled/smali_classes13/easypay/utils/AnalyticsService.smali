.class public Leasypay/utils/AnalyticsService;
.super Landroidx/core/app/JobIntentService;
.source "AnalyticsService.java"


# static fields
.field private static JOB_ID:I


# instance fields
.field protected mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x7b

    sput v0, Leasypay/utils/AnalyticsService;->JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 35
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    const-class v0, Leasypay/utils/AnalyticsService;

    sget v1, Leasypay/utils/AnalyticsService;->JOB_ID:I

    invoke-static {p0, v0, v1, p1}, Leasypay/utils/AnalyticsService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 90
    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    const-string v0, "EXCEPTION"

    if-eqz p1, :cond_1

    .line 48
    :try_start_0
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Leasypay/utils/AnalyticsService;->mEventMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    invoke-static {v0, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Leasypay/utils/AnalyticsService;->mEventMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 57
    :try_start_1
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 59
    .local v1, "JSON":Lokhttp3/MediaType;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 61
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 62
    .local v3, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Leasypay/utils/AnalyticsService;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "json":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analytics log map-json:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v5, "AssistAna"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "analytics service :Map"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leasypay/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 66
    .local v5, "body":Lokhttp3/RequestBody;
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    const-string v7, "https://securegw.paytm.in/payassist/api/submit/event/logs"

    .line 67
    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 70
    .local v6, "request":Lokhttp3/Request;
    invoke-virtual {v2, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 71
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {p0}, Leasypay/utils/AnalyticsService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .end local v1    # "JSON":Lokhttp3/MediaType;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "body":Lokhttp3/RequestBody;
    .end local v6    # "request":Lokhttp3/Request;
    .end local v7    # "response":Lokhttp3/Response;
    :cond_0
    goto :goto_1

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {v0, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
