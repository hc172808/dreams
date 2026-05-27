.class Lcom/payu/custombrowser/services/SnoozeService$a$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService$a;JJ)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->w(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_0

    sget v0, Lcom/payu/custombrowser/CBActivity;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 756
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->x(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 759
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v2, "internet_not_restored_notification"

    invoke-static {v0, v2, v1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->w(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/payu/custombrowser/CBActivity;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 762
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v2, "internet_not_restored_dialog_foreground"

    invoke-static {v0, v2, v1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->u(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->w(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    const-string v1, "snoozeServiceStatus"

    const-string v2, "snoozeServiceDead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 780
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "l"    # J

    .line 746
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a$1;->a:Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->v(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 747
    return-void
.end method
