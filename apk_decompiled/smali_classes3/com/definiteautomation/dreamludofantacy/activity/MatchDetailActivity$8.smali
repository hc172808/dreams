.class Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;
.super Landroid/os/CountDownTimer;
.source "MatchDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->initCounter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;
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

    .line 636
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;J)V

    .line 648
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    invoke-interface {v0}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;->onFinish()V

    .line 651
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;J)V

    .line 640
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

    invoke-interface {v0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;->onTick(J)V

    .line 643
    :cond_0
    return-void
.end method
