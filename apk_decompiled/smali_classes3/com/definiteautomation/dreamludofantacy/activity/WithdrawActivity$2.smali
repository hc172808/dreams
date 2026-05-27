.class Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;
.super Ljava/lang/Object;
.source "WithdrawActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->postWithdraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

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
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 225
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 226
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
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 211
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 214
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->onBackPressed()V

    .line 221
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    :cond_0
    return-void
.end method
