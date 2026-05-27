.class Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;
.super Landroid/os/CountDownTimer;
.source "UpcomingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->initCounter(Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

.field final synthetic val$joinBt:Landroid/widget/Button;

.field final synthetic val$position:I

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$roomSizeTv:Landroid/widget/TextView;

.field final synthetic val$roomStatusTv:Landroid/widget/TextView;

.field final synthetic val$timeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;JJLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval",
            "val$timeText",
            "val$joinBt",
            "val$roomSizeTv",
            "val$roomStatusTv",
            "val$progressBar",
            "val$position"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iput-object p6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$timeText:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$joinBt:Landroid/widget/Button;

    iput-object p8, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomSizeTv:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomStatusTv:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput p11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$position:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 9

    .line 228
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$timeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$joinBt:Landroid/widget/Button;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomSizeTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomStatusTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget v8, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$position:I

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v8}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->access$000(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    .line 229
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    invoke-interface {v0}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;->onFinish()V

    .line 232
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$timeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$joinBt:Landroid/widget/Button;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomSizeTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$roomStatusTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget v8, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->val$position:I

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->access$000(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    .line 221
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    invoke-interface {v0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;->onTick(J)V

    .line 224
    :cond_0
    return-void
.end method
