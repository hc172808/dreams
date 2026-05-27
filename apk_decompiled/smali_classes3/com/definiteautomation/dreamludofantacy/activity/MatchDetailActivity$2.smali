.class Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;
.super Ljava/lang/Object;
.source "MatchDetailActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->deleteParticipant()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 369
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 370
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    .line 357
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 359
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v2, v2, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 361
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    const-class v3, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntent(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    :cond_0
    return-void
.end method
