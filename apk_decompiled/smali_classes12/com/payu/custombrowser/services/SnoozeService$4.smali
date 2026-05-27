.class Lcom/payu/custombrowser/services/SnoozeService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/CountDownTimer;

.field final synthetic c:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    iput-object p2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 389
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v2}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 390
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 392
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 394
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 395
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    .line 396
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 398
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 402
    :goto_0
    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v4}, Lcom/payu/custombrowser/services/SnoozeService;->k(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->k(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 408
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 410
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {}, Lcom/payu/custombrowser/services/SnoozeService;->b()I

    move-result v3

    add-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;J)J

    goto :goto_1

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 413
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->c(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 414
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 415
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->l(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v5

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->m(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 418
    :goto_1
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->n(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v2

    invoke-static {}, Lcom/payu/custombrowser/services/SnoozeService;->b()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    .line 419
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->o(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;I)I

    .line 421
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->r(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->p(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v4}, Lcom/payu/custombrowser/services/SnoozeService;->o(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v4

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->q(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->i(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 427
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->s(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v3, "snooze_verify_api_status"

    const-string v4, "snooze_verify_api_called"

    invoke-static {v2, v3, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->t(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 433
    :cond_3
    sget v2, Lcom/payu/custombrowser/CBActivity;->b:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "-1"

    if-ne v2, v4, :cond_4

    .line 434
    :try_start_1
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    sget v5, Lcom/payu/custombrowser/R$string;->internet_restored:I

    invoke-virtual {v2, v5}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    sget v7, Lcom/payu/custombrowser/R$string;->resuming_your_transaction:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v4, "internet_restored_dialog_foreground"

    invoke-static {v2, v4, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v2}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    goto :goto_2

    .line 440
    :cond_4
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->u(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;Z)V

    .line 442
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v4, "internet_restored_notification"

    invoke-static {v2, v4, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_5
    :goto_2
    goto :goto_3

    .line 448
    :cond_6
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->r(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->p(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v4}, Lcom/payu/custombrowser/services/SnoozeService;->o(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v4

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->q(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 463
    :catch_0
    move-exception v2

    .line 464
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2, v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 465
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_4

    .line 459
    :catch_1
    move-exception v2

    .line 460
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3, v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 461
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 462
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 454
    :catch_2
    move-exception v0

    .line 457
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->r(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->p(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->o(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v3

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v4}, Lcom/payu/custombrowser/services/SnoozeService;->q(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    goto :goto_3

    .line 450
    :catch_3
    move-exception v2

    .line 451
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->c:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3, v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 452
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 453
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 466
    :goto_3
    nop

    .line 467
    :goto_4
    return-void
.end method
