.class public final Lcom/payu/socketverification/a/a;
.super Lcom/payu/socketverification/socket/a;
.source "SourceFile"

# interfaces
.implements Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;


# static fields
.field public static c:Lcom/payu/socketverification/socket/SocketPaymentResponse;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

.field public d:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

.field public e:Landroid/os/Handler;

.field public f:Landroid/os/Handler;

.field public g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Runnable;

.field private m:I

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/payu/socketverification/socket/a;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/payu/socketverification/a/a;->h:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/socketverification/a/a;->m:I

    .line 208
    new-instance v0, Lcom/payu/socketverification/a/a$1;

    invoke-direct {v0, p0}, Lcom/payu/socketverification/a/a$1;-><init>(Lcom/payu/socketverification/a/a;)V

    iput-object v0, p0, Lcom/payu/socketverification/a/a;->k:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/payu/socketverification/a/a$2;

    invoke-direct {v0, p0}, Lcom/payu/socketverification/a/a$2;-><init>(Lcom/payu/socketverification/a/a;)V

    iput-object v0, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/payu/socketverification/a/a;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/payu/socketverification/a/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/payu/socketverification/a/a;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/payu/socketverification/a/a;->k:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iput-object v1, p0, Lcom/payu/socketverification/a/a;->e:Landroid/os/Handler;

    .line 231
    iput-object v1, p0, Lcom/payu/socketverification/a/a;->k:Ljava/lang/Runnable;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iput-object v1, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    .line 236
    iput-object v1, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    .line 238
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 81
    new-instance v0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-direct {v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;-><init>()V

    .line 82
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const/16 v2, 0x3eb

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "payuId"

    sget-object v5, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v5}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getReferenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 87
    :catch_0
    move-exception v4

    .line 89
    sget-object v5, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 1028
    iget-object v5, v5, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Parsing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/payu/socketverification/a/a;->b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    if-eqz v5, :cond_0

    .line 91
    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lcom/payu/socketverification/interfaces/IVerifyResponse;->getVerifyResponse(ZLjava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    :goto_0
    const-string v4, "VERIFY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v6}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getPushServiceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/upi/verify"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Force Count Needed "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/payu/socketverification/a/a;->h:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PayU"

    invoke-static {v6, v4}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Force Count current "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/payu/socketverification/a/a;->m:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v4, p0, Lcom/payu/socketverification/a/a;->m:I

    iget v6, p0, Lcom/payu/socketverification/a/a;->h:I

    const-string v7, "force"

    if-ne v4, v6, :cond_1

    .line 100
    iput v5, p0, Lcom/payu/socketverification/a/a;->m:I

    .line 102
    :try_start_1
    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 103
    :catch_1
    move-exception v4

    .line 104
    sget-object v6, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2028
    iget-object v6, v6, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Verify Polling "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    :goto_1
    goto :goto_3

    .line 110
    :cond_1
    :try_start_2
    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    goto :goto_2

    .line 112
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    :goto_2
    iget v2, p0, Lcom/payu/socketverification/a/a;->m:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/payu/socketverification/a/a;->m:I

    goto :goto_3

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/payu/socketverification/a/a;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v4, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/payu/socketverification/a/a;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/payu/socketverification/a/a;->j:Ljava/lang/String;

    const-string v8, "upi_socket"

    const-string v9, "finish_using_http"

    invoke-static {v4, v8, v9, v6, v7}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 120
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v4}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getPushServiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/upi/finish"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 122
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 123
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setContentType(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;

    iget-object v2, p0, Lcom/payu/socketverification/a/a;->d:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

    invoke-direct {v1, v2, p1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;-><init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public final b()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/payu/socketverification/a/a;->a()V

    .line 243
    sget-object v0, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 4028
    iget-object v0, v0, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 243
    invoke-interface {v0}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->transactionCancelled()V

    .line 245
    return-void
.end method

.method public final onPayuNetworkAsyncTaskResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUAsynTaskResponse"    # Ljava/lang/String;
    .param p2, "webServiceType"    # Ljava/lang/String;

    .line 135
    const-string v0, "result"

    iget-object v1, p0, Lcom/payu/socketverification/a/a;->b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    if-eqz v1, :cond_6

    .line 137
    .end local p2    # "webServiceType":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "FINISH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "VERIFY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 175
    :pswitch_0
    iput v3, p0, Lcom/payu/socketverification/a/a;->m:I

    .line 176
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    if-eqz p2, :cond_1

    .line 177
    nop

    .end local p1    # "payUAsynTaskResponse":Ljava/lang/String;
    invoke-interface {p2, v3, p1}, Lcom/payu/socketverification/interfaces/IVerifyResponse;->getVerifyResponse(ZLjava/lang/String;)V

    .line 179
    :cond_1
    nop

    .line 3201
    iget-object p1, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/payu/socketverification/a/a;->b(Ljava/lang/ref/WeakReference;)V

    .line 180
    invoke-virtual {p0}, Lcom/payu/socketverification/a/a;->a()V

    .line 181
    iget-object p1, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 182
    nop

    .end local p0    # "this":Lcom/payu/socketverification/a/a;
    iget-object p1, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 140
    .restart local p0    # "this":Lcom/payu/socketverification/a/a;
    .restart local p1    # "payUAsynTaskResponse":Ljava/lang/String;
    :pswitch_1
    if-eqz p1, :cond_5

    .line 141
    const-wide/16 v1, 0x3e8

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    sget-object v4, Lcom/payu/socketverification/util/PayUNetworkConstant;->PENDING_STATUS_LIST:Ljava/util/List;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 145
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 146
    sget-object v3, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v1

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 148
    :cond_2
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    if-eqz p2, :cond_5

    .line 149
    invoke-interface {p2, v3, p1}, Lcom/payu/socketverification/interfaces/IVerifyResponse;->getVerifyResponse(ZLjava/lang/String;)V

    .line 150
    nop

    .line 2201
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/payu/socketverification/a/a;->b(Ljava/lang/ref/WeakReference;)V

    .line 150
    return-void

    .line 153
    :cond_3
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 154
    sget-object v3, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v1

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception p2

    .line 159
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    sget-object v0, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 3028
    iget-object v0, v0, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 160
    const/16 v3, 0x3eb

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Jsonexception "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PayU"

    invoke-static {v0, p2}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 164
    sget-object v0, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v0}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long v4, v4, v1

    invoke-virtual {v3, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 166
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LongPollingRunnable "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payu/socketverification/a/a;->n:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "      handlerlongpoling "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 171
    :cond_5
    :goto_1
    return-void

    .line 187
    .end local p0    # "this":Lcom/payu/socketverification/a/a;
    .end local p1    # "payUAsynTaskResponse":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x694c8387 -> :sswitch_1
        0x7b9c8093 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
