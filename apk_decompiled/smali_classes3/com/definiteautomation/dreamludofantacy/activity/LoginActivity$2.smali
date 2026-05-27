.class Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

.field final synthetic val$strEmail:Ljava/lang/String;

.field final synthetic val$strPassword:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$strEmail",
            "val$strPassword"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$strEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$strPassword:Ljava/lang/String;

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

    .line 244
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 245
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
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

    .line 195
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 198
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const v4, 0x7f01002b

    const v5, 0x7f010027

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 201
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_USER_ID"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getFull_name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_FULL_NAME"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getProfile_img()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_PROFILE_PHOTO"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getUsername()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_USERNAME"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getEmail()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_EMAIL"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getCountry_code()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_COUNTRY_CODE"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMobile()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_MOBILE"

    invoke-virtual {v3, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getWhatsapp_no()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KEY_WHATSAPP"

    invoke-virtual {v3, v7, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "KEY_PASSWORD"

    invoke-virtual {v2, v7, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_IS_AUTO_LOGIN"

    const-string v7, "1"

    invoke-virtual {v2, v3, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "finish"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const v3, 0x14008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-virtual {v3, v5, v4}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->overridePendingTransition(II)V

    .line 220
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 223
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$type:Ljava/lang/String;

    const-string v6, "regular"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    const-class v6, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "FULL_NAME_KEY"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "USERNAME_KEY"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$strEmail:Ljava/lang/String;

    const-string v6, "EMAIL_KEY"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->val$strPassword:Ljava/lang/String;

    const-string v6, "PASSWORD_KEY"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-virtual {v3, v5, v4}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->overridePendingTransition(II)V

    .line 240
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method
