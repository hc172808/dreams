.class Lcom/payu/custombrowser/Bank$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->a(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->b(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->n:Z

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_window_automatically_disappear_time"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$35;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1050
    :cond_1
    return-void
.end method
