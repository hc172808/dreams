.class final Lcom/payu/custombrowser/services/SnoozeService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Looper;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    .line 732
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 733
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 741
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 743
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v7, Lcom/payu/custombrowser/services/SnoozeService$a$1;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->v(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x1388

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/payu/custombrowser/services/SnoozeService$a$1;-><init>(Lcom/payu/custombrowser/services/SnoozeService$a;JJ)V

    invoke-static {v0, v7}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 782
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->y(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 786
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 787
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->D(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/services/SnoozeService$a$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/services/SnoozeService$a$2;-><init>(Lcom/payu/custombrowser/services/SnoozeService$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$a;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->E(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 820
    return-void
.end method
