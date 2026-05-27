.class public Lcom/payu/socketverification/socket/b;
.super Lcom/payu/socketverification/socket/a;
.source "SourceFile"

# interfaces
.implements Lcom/payu/socketverification/interfaces/IVerifyResponse;
.implements Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/socketverification/socket/b$b;,
        Lcom/payu/socketverification/socket/b$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static j:J

.field private static volatile m:Lcom/payu/socketverification/socket/b;

.field private static n:I


# instance fields
.field b:Lio/socket/client/Socket;

.field c:Landroid/os/Handler;

.field d:Landroid/os/Handler;

.field e:Lcom/payu/socketverification/interfaces/IVerifyResponse;

.field f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

.field g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private k:Lcom/payu/socketverification/a/a;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/payu/socketverification/socket/b;->j:J

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/payu/socketverification/socket/b;->n:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/payu/socketverification/socket/a;-><init>()V

    .line 174
    new-instance v0, Lcom/payu/socketverification/socket/b$1;

    invoke-direct {v0, p0}, Lcom/payu/socketverification/socket/b$1;-><init>(Lcom/payu/socketverification/socket/b;)V

    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->o:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Lcom/payu/socketverification/socket/b$2;

    invoke-direct {v0, p0}, Lcom/payu/socketverification/socket/b$2;-><init>(Lcom/payu/socketverification/socket/b;)V

    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->p:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method public static a()Lcom/payu/socketverification/socket/b;
    .locals 2

    .line 111
    sget-object v0, Lcom/payu/socketverification/socket/b;->m:Lcom/payu/socketverification/socket/b;

    if-nez v0, :cond_1

    .line 112
    const-class v0, Lcom/payu/socketverification/socket/b;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/payu/socketverification/socket/b;->m:Lcom/payu/socketverification/socket/b;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/payu/socketverification/socket/b;

    invoke-direct {v1}, Lcom/payu/socketverification/socket/b;-><init>()V

    sput-object v1, Lcom/payu/socketverification/socket/b;->m:Lcom/payu/socketverification/socket/b;

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_1
    :goto_0
    sget-object v0, Lcom/payu/socketverification/socket/b;->m:Lcom/payu/socketverification/socket/b;

    return-object v0
.end method

.method static synthetic a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    return-object p0
.end method

.method static synthetic a(Lcom/payu/socketverification/socket/b;I)Lio/socket/emitter/Emitter$Listener;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/payu/socketverification/socket/b;Lorg/json/JSONObject;I)V
    .locals 3

    .line 7390
    if-eqz p1, :cond_2

    .line 7391
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7393
    :try_start_0
    sget-object v1, Lcom/payu/socketverification/util/PayUNetworkConstant;->PENDING_STATUS_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7394
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/socketverification/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7400
    :cond_0
    return-void

    .line 7396
    :catch_0
    move-exception p0

    .line 7397
    sget-object p1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 8028
    iget-object p1, p1, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 7397
    const/16 p2, 0x3eb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 7399
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7400
    return-void

    .line 7402
    :cond_1
    const-string p0, "PayU"

    const-string p1, "Result key not found in socket response..."

    invoke-static {p0, p1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7405
    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    .line 422
    nop

    .line 423
    sget-object v0, Lcom/payu/socketverification/socket/b$4;->a:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object p2, v0

    goto :goto_0

    .line 425
    :pswitch_1
    nop

    .line 426
    const-string p2, "completed_via_long_polling"

    goto :goto_0

    .line 431
    :pswitch_2
    nop

    .line 432
    const-string p2, "completed_via_verification_response"

    goto :goto_0

    .line 428
    :pswitch_3
    nop

    .line 429
    const-string p2, "completed_via_update_event"

    goto :goto_0

    .line 434
    :pswitch_4
    const-string p2, "socket_connection_error"

    .line 438
    :goto_0
    sget-object v1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    sget-object v2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    const-string v5, "upi_socket"

    invoke-static {v2, v5, p2, v3, v4}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 441
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "failure_transaction"

    const-string v2, "trxn_status"

    const/4 v3, 0x0

    if-nez p2, :cond_4

    .line 442
    invoke-static {p1}, Lcom/payu/socketverification/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 444
    const-string v4, "failure"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 445
    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 446
    iget-object p2, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    sget-object v5, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    invoke-static {v5, v2, v1, v6, v7}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 450
    :cond_1
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2028
    iget-object p2, p2, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 450
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->getSocketResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 453
    :cond_2
    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 454
    iget-object p2, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    sget-object v1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    const-string v6, "success_transaction"

    invoke-static {v1, v2, v6, v4, v5}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 456
    :cond_3
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 3028
    iget-object p2, p2, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 456
    const-string v1, "success"

    invoke-interface {p2, v0, p1, v1, v3}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->getSocketResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    return-void

    .line 459
    :cond_4
    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    .line 460
    iget-object p2, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    sget-object v4, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    invoke-static {v4, v2, v1, v5, v6}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 461
    :cond_5
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 4028
    iget-object p2, p2, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 461
    const-string v1, "cancel"

    invoke-interface {p2, v0, p1, v1, v3}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->getSocketResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    invoke-static {}, Lcom/payu/socketverification/socket/b;->g()V

    .line 464
    sget-object p1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 465
    sget-object p1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 467
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/payu/socketverification/socket/b;)Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    return-object p0
.end method

.method static synthetic b(Lcom/payu/socketverification/socket/b;I)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 58
    sget-object v0, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d()I
    .locals 2

    .line 58
    sget v0, Lcom/payu/socketverification/socket/b;->n:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/payu/socketverification/socket/b;->n:I

    return v0
.end method

.method static synthetic d(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e()V
    .locals 0

    .line 58
    invoke-static {}, Lcom/payu/socketverification/socket/b;->g()V

    return-void
.end method

.method static synthetic e(Lcom/payu/socketverification/socket/b;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/payu/socketverification/socket/b;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b;->o:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/payu/socketverification/socket/b;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->c:Landroid/os/Handler;

    .line 216
    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->d:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method static synthetic f(Lcom/payu/socketverification/socket/b;)V
    .locals 8

    .line 5473
    new-instance v0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-direct {v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;-><init>()V

    .line 5475
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 5476
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5478
    :try_start_0
    const-string v2, "payuId"

    iget-object v3, p0, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5482
    goto :goto_0

    .line 5481
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 5483
    :goto_0
    sget-object v2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5484
    iget-object v2, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    sget-object v3, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    const-string v6, "upi_socket"

    const-string v7, "finish_using_http"

    invoke-static {v3, v6, v7, v4, v5}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 5487
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 5488
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setContentType(Ljava/lang/String;)V

    .line 5489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {v2}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getPushServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/upi/finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 5490
    new-instance v1, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;

    const-string v2, "FINISH"

    invoke-direct {v1, p0, v2}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;-><init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method static synthetic g(Lcom/payu/socketverification/socket/b;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static g()V
    .locals 1

    .line 260
    const/4 v0, 0x0

    sput v0, Lcom/payu/socketverification/socket/b;->n:I

    .line 261
    sget-object v0, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->b(Ljava/lang/ref/WeakReference;)V

    .line 262
    return-void
.end method

.method static synthetic h(Lcom/payu/socketverification/socket/b;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 517
    nop

    .line 4225
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    if-eqz v0, :cond_0

    sget v0, Lcom/payu/socketverification/socket/b$a;->a:I

    invoke-virtual {p0, v0}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    sget v0, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-virtual {p0, v0}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    sget v0, Lcom/payu/socketverification/socket/b$a;->c:I

    invoke-virtual {p0, v0}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    sget v0, Lcom/payu/socketverification/socket/b$a;->d:I

    .line 4226
    invoke-virtual {p0, v0}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    sget v0, Lcom/payu/socketverification/socket/b$a;->e:I

    invoke-virtual {p0, v0}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    .line 4227
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->a:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4228
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->c:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "disconnect"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4229
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "connect_error"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4230
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "connect_timeout"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4231
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->d:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "upi-update"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4232
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget v1, Lcom/payu/socketverification/socket/b$a;->e:I

    invoke-virtual {p0, v1}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "upi-verification-response"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 4233
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    goto :goto_0

    .line 4236
    :cond_0
    const-string v0, "PayU"

    const-string v1, "Disconnect socket. Some fields are null"

    invoke-static {v0, v1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    :goto_0
    invoke-static {}, Lcom/payu/socketverification/socket/b;->g()V

    .line 518
    invoke-direct {p0}, Lcom/payu/socketverification/socket/b;->f()V

    .line 520
    iget-object v0, p0, Lcom/payu/socketverification/socket/b;->k:Lcom/payu/socketverification/a/a;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Lcom/payu/socketverification/a/a;->a()V

    .line 522
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/payu/socketverification/socket/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    return-object p0
.end method

.method static synthetic j(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lcom/payu/socketverification/socket/b;)V
    .locals 9

    .line 6265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error counter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/payu/socketverification/socket/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayU"

    invoke-static {v1, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6266
    sget v0, Lcom/payu/socketverification/socket/b;->n:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 6269
    nop

    .line 6379
    new-instance v0, Lcom/payu/socketverification/a/a;

    invoke-direct {v0}, Lcom/payu/socketverification/a/a;-><init>()V

    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->k:Lcom/payu/socketverification/a/a;

    .line 6380
    sget-object v2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object v4, p0, Lcom/payu/socketverification/socket/b;->e:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    iget-object v5, p0, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v6, p0, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    .line 7056
    const-string v7, "Start Long polling...."

    invoke-static {v1, v7}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7057
    iput-object v5, v0, Lcom/payu/socketverification/a/a;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 7058
    iput-object v4, v0, Lcom/payu/socketverification/a/a;->b:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    .line 7059
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    .line 7060
    sput-object v3, Lcom/payu/socketverification/a/a;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 7061
    iput-object v6, v0, Lcom/payu/socketverification/a/a;->i:Ljava/lang/String;

    .line 7062
    iput-object p0, v0, Lcom/payu/socketverification/a/a;->j:Ljava/lang/String;

    .line 7063
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/payu/socketverification/a/a;->e:Landroid/os/Handler;

    .line 7064
    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiVerificationInterval()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/payu/socketverification/a/a;->h:I

    .line 7065
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/payu/socketverification/a/a;->f:Landroid/os/Handler;

    .line 7066
    iput-object v0, v0, Lcom/payu/socketverification/a/a;->d:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

    .line 7067
    iget-object v1, v0, Lcom/payu/socketverification/a/a;->e:Landroid/os/Handler;

    iget-object v2, v0, Lcom/payu/socketverification/a/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiPushExpiry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7069
    iget-object v1, v0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7070
    iget-object v1, v0, Lcom/payu/socketverification/a/a;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v2, v0, Lcom/payu/socketverification/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "upi_socket"

    const-string v4, "socket_disconnected"

    invoke-static {v2, v3, v4, v6, p0}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 7072
    :cond_0
    const-string p0, "VERIFY"

    invoke-virtual {v0, p0}, Lcom/payu/socketverification/a/a;->a(Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method final a(I)Lio/socket/emitter/Emitter$Listener;
    .locals 1

    .line 280
    new-instance v0, Lcom/payu/socketverification/socket/b$3;

    invoke-direct {v0, p0, p1}, Lcom/payu/socketverification/socket/b$3;-><init>(Lcom/payu/socketverification/socket/b;I)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 526
    invoke-direct {p0}, Lcom/payu/socketverification/socket/b;->h()V

    .line 527
    sget-object v0, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 5028
    iget-object v0, v0, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 527
    invoke-interface {v0}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->transactionCancelled()V

    .line 529
    return-void
.end method

.method public getVerifyResponse(ZLjava/lang/String;)V
    .locals 1
    .param p2, "response"    # Ljava/lang/String;

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getVerifyResponse   "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PayU"

    invoke-static {v0, p1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/b;
    .end local p2    # "response":Ljava/lang/String;
    sget p1, Lcom/payu/socketverification/socket/b$a;->f:I

    invoke-direct {p0, p2, p1}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/String;I)V

    .line 419
    return-void
.end method

.method public onPayuNetworkAsyncTaskResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "payUAsynTaskResponse"    # Ljava/lang/String;

    .line 78
    const-string p2, "result"

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/payu/socketverification/socket/b;->k:Lcom/payu/socketverification/a/a;

    .line 79
    invoke-direct {p0}, Lcom/payu/socketverification/socket/b;->h()V

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    .end local p1    # "payUAsynTaskResponse":Ljava/lang/String;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lcom/payu/socketverification/util/PayUNetworkConstant;->PENDING_STATUS_LIST:Ljava/util/List;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/b;
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/socketverification/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/payu/socketverification/socket/b$a;->g:I

    invoke-direct {p0, p1, p2}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 1028
    iget-object p2, p2, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 87
    const/16 v0, 0x3eb

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    return-void
.end method
