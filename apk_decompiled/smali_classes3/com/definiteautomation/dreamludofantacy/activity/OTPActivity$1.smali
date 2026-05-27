.class Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;
.super Landroid/os/CountDownTimer;
.source "OTPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    const/16 v1, 0x3c

    iput v1, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    .line 111
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Resend"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    iget v3, v3, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Resend in %ds"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    iget v2, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    .line 105
    return-void
.end method
