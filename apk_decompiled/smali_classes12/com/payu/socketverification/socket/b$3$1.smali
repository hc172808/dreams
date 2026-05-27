.class final Lcom/payu/socketverification/socket/b$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/socket/b$3;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lcom/payu/socketverification/socket/b$3;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/socket/b$3;[Ljava/lang/Object;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iput-object p2, p0, Lcom/payu/socketverification/socket/b$3$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 289
    const-string v0, "onUpiVerificationResponseEvent "

    sget-object v1, Lcom/payu/socketverification/socket/b$4;->a:[I

    iget-object v2, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget v2, v2, Lcom/payu/socketverification/socket/b$3;->a:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const/16 v2, 0x3eb

    const/4 v4, 0x0

    const-string v5, "PayU"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 349
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "On Upi verification Response "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/payu/socketverification/socket/b$3$1;->a:[Ljava/lang/Object;

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->a:[Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, Lorg/json/JSONObject;

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v3, v3, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    sget v4, Lcom/payu/socketverification/socket/b$a;->e:I

    invoke-static {v3, v1, v4}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception onUpiVerification response  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v3, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 3028
    iget-object v3, v3, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lorg/json/JSONObject;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onUpiUpdateEvent "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    sget v3, Lcom/payu/socketverification/socket/b$a;->d:I

    invoke-static {v1, v0, v3}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;Lorg/json/JSONObject;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    return-void

    .line 340
    :catch_1
    move-exception v0

    .line 341
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2028
    iget-object v1, v1, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnUpiUpdate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception onUpiUpdate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 329
    :pswitch_2
    const-string v0, "Verify Handler Socket disconnected..."

    invoke-static {v5, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    invoke-virtual {v0}, Lio/socket/client/Socket;->close()Lio/socket/client/Socket;

    .line 332
    invoke-static {}, Lcom/payu/socketverification/socket/b;->e()V

    .line 333
    return-void

    .line 314
    :pswitch_3
    invoke-static {}, Lcom/payu/socketverification/socket/b;->d()I

    .line 315
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->a:[Ljava/lang/Object;

    aget-object v1, v0, v4

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->l(Lcom/payu/socketverification/socket/b;)V

    return-void

    .line 318
    :cond_0
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Exception;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ex cause socket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1103
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1104
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 320
    :goto_0
    if-nez v3, :cond_2

    .line 321
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    sget v1, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-static {v0, v1}, Lcom/payu/socketverification/socket/b;->b(Lcom/payu/socketverification/socket/b;I)V

    return-void

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->l(Lcom/payu/socketverification/socket/b;)V

    .line 325
    return-void

    .line 292
    :pswitch_4
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 293
    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->i(Lcom/payu/socketverification/socket/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v2, v2, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v2}, Lcom/payu/socketverification/socket/b;->g(Lcom/payu/socketverification/socket/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v3, v3, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v3}, Lcom/payu/socketverification/socket/b;->h(Lcom/payu/socketverification/socket/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "upi_socket"

    const-string v6, "socket_connected"

    invoke-static {v1, v4, v6, v2, v3}, Lcom/payu/socketverification/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    sget v2, Lcom/payu/socketverification/socket/b$a;->d:I

    invoke-static {v1, v2}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "upi-update"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 297
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    sget v2, Lcom/payu/socketverification/socket/b$a;->e:I

    invoke-static {v1, v2}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;I)Lio/socket/emitter/Emitter$Listener;

    move-result-object v1

    const-string v2, "upi-verification-response"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 298
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->j(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->c(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->k(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->d(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->j(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v1}, Lcom/payu/socketverification/socket/b;->k(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/payu/socketverification/socket/b$b;->b()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long v2, v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->c(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b$3$1;->b:Lcom/payu/socketverification/socket/b$3;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    invoke-static {v1}, Lcom/payu/socketverification/socket/b;->d(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/payu/socketverification/socket/b$b;->a()J

    move-result-wide v2

    mul-long v2, v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    const-string v0, "Socket connected..."

    invoke-static {v5, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Null Handler..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;)V

    return-void

    .line 307
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Socket is Null..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;)V

    .line 310
    return-void

    .line 365
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
