.class Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;
.super Ljava/lang/Object;
.source "ForgotActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->verifyUserMobile()V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

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

    .line 118
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 119
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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

    .line 91
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 94
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 97
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_COUNTRY_CODE"

    invoke-virtual {v2, v4, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_MOBILE"

    invoke-virtual {v2, v4, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "PAGE_KEY"

    const-string v4, "Forgot"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 105
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    const v4, 0x7f010027

    const v5, 0x7f01002b

    invoke-virtual {v3, v4, v5}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->overridePendingTransition(II)V

    .line 107
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 108
    .end local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 110
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    :cond_1
    :goto_0
    return-void
.end method
