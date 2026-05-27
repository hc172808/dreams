.class Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;
.super Ljava/lang/Object;
.source "MatchDetailActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadResult()V
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

    .line 419
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

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

    .line 446
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 447
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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

    .line 423
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    .line 426
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 428
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 429
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v2, v2, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    const-string v3, "Your Result uploaded successfully"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 438
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    :cond_1
    :goto_0
    return-void
.end method
