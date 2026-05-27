.class Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;
.super Landroid/os/CountDownTimer;
.source "OTPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->onResendClick(Landroid/view/View;)V
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

    .line 142
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    const/16 v1, 0x3c

    iput v1, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    .line 156
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Resend"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resend in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    iget v2, v2, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    iget v1, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    .line 150
    return-void
.end method
