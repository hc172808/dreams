.class Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;
.super Ljava/lang/Object;
.source "UpcomingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->joinMatch(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

.field final synthetic val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obj"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 333
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 334
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
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

    .line 300
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    .line 303
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 305
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 306
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ID_KEY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v4

    const-string v6, "FEE_KEY"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 311
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v4

    const-string v6, "PRIZE_KEY"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 312
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v4

    const-string v5, "TYPE_KEY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getCurrent_time()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CURR_TIME_KEY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getPlay_time()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PLAY_TIME_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PARTI1_ID_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PARTI2_ID_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PARTI1_NAME_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PARTI2_NAME_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->val$obj:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWhatsapp_no2()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WHATSAPP_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "IS_JOIN_KEY"

    const-string v4, "1"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 322
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 323
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 325
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    :cond_1
    :goto_0
    return-void
.end method
