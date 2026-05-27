.class Lcom/payu/custombrowser/services/SnoozeService$3;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;JJ)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$3;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService$3;->cancel()V

    .line 374
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$3;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 375
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "l"    # J

    .line 369
    return-void
.end method
