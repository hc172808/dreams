.class Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->lambda$showBottomSheetDialog$5(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/hbb20/CountryCodePicker;Landroid/widget/EditText;Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

.field final synthetic val$cardSubmitNumber:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cardSubmitNumber"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->val$cardSubmitNumber:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
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

    .line 424
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 425
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->val$cardSubmitNumber:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 426
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

    .line 382
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 385
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "res":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 388
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_FULL_NAME"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_USERNAME"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_EMAIL"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_COUNTRY_CODE"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_MOBILE"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_PASSWORD"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_REFER_CODE"

    invoke-virtual {v2, v5, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->val$cardSubmitNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 397
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$800(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 405
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "PAGE_KEY"

    const-string v4, "Register"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 409
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 410
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    const v4, 0x7f010026

    const v5, 0x10a0003

    invoke-virtual {v3, v4, v5}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->overridePendingTransition(II)V

    .line 411
    .end local v2    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 413
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->val$cardSubmitNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 416
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromFacebook()V

    .line 420
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;
    :cond_1
    :goto_1
    return-void
.end method
