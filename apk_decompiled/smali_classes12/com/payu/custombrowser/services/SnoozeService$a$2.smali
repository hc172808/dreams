.class Lcom/payu/custombrowser/services/SnoozeService$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService$a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService$a;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 790
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->i(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->A(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->z(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 796
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->i(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->s(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->w(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->B(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->C(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->i(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->w(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->B(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->u(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;Z)V

    .line 805
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->D(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;

    .line 810
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->A(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "snooze_broad_cast_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$2;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 814
    :cond_3
    return-void
.end method
