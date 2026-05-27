.class Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getAppDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/definiteautomation/dreamludofantacy/model/AppModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResponse$0$SplashActivity$2()V
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_IS_AUTO_LOGIN"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x14008000

    const/4 v2, 0x1

    const-string v3, "finish"

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->finish()V

    .line 180
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
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
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 196
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/AppModel;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 12
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
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/AppModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/AppModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/AppModel;

    .line 120
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/AppModel;
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/AppModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getMaintenance_mode()I

    move-result v3

    .line 125
    .local v3, "maintenanceMode":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getCurrency_code()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->COUNTRY_CODE:Ljava/lang/String;

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getCurrency_code()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_CODE:Ljava/lang/String;

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getCurrency_sign()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getRefer_percentage()I

    move-result v5

    sput v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->REFER_PERCENTAGE:I

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getMaintenance_mode()I

    move-result v5

    sput v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAINTENANCE_MODE:I

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getPaytm_mer_id()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->M_ID:Ljava/lang/String;

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getPayu_id()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_ID:Ljava/lang/String;

    .line 132
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getPayu_key()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MERCHANT_KEY:Ljava/lang/String;

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getMop()I

    move-result v5

    sput v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MODE_OF_PAYMENT:I

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getCus_support_email()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->SUPPORT_EMAIL:Ljava/lang/String;

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getHow_to_play()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->HOW_TO_PLAY:Ljava/lang/String;

    .line 137
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getForce_update()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$002(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getWhats_new()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$102(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getUpdate_date()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$202(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getLatest_version_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$302(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getLatest_version_code()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$402(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->getUpdate_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$502(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x14008000

    const-string v5, "updateURL"

    const-string v6, "latestVersionName"

    const-string v7, "updateDate"

    const-string v8, "whatsNew"

    const-string v9, "forceUpdate"

    if-eqz v2, :cond_0

    .line 147
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    const-class v11, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v10}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v9}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-virtual {v4, v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "0"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    const-class v11, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v10}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v9}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-virtual {v4, v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    goto :goto_1

    .line 166
    :cond_2
    if-nez v3, :cond_3

    .line 167
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$SplashActivity$2$hKy17QdZCLyTBpl9q1nqyewrMQE;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$SplashActivity$2$hKy17QdZCLyTBpl9q1nqyewrMQE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, "App is under maintenance, please try again later."

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :goto_1
    goto :goto_2

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/AppModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "maintenanceMode":I
    :cond_4
    :goto_2
    return-void
.end method
