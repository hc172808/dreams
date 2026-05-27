.class Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;
.super Ljava/lang/Object;
.source "OTPActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->lambda$customerRegistrationWithoutRefer$2(Lcom/google/android/gms/tasks/Task;)V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "call"    # Lretrofit2/Call;
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

    .line 353
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 354
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .param p1, "call"    # Lretrofit2/Call;
    .param p2, "response"    # Lretrofit2/Response;
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

    .line 323
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 326
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "res":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 329
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 331
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "KEY_USER_ID"

    invoke-virtual {v3, v5, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_PROFILE_PHOTO"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_IS_AUTO_LOGIN"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "finish"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const v3, 0x14008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    const v4, 0x7f010027

    const v5, 0x7f01002b

    invoke-virtual {v3, v4, v5}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->overridePendingTransition(II)V

    .line 343
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 345
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;
    :cond_1
    :goto_0
    return-void
.end method
