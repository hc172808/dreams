.class Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;
.super Ljava/lang/Object;
.source "WithdrawActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getUserDetails()V
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

    .line 160
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 198
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
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

    .line 163
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 166
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 169
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getDeposit_bal()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->deposit:D

    .line 170
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getWon_bal()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->winning:D

    .line 171
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getBonus_bal()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->bonus:D

    .line 172
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    iget-wide v5, v3, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->deposit:D

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    iget-wide v7, v7, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->winning:D

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    iget-wide v7, v7, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->bonus:D

    add-double/2addr v5, v7

    iput-wide v5, v3, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->total:D

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getIs_block()I

    move-result v3

    const v5, 0x14008000

    const-string v6, "finish"

    const-string v7, "0"

    const-string v8, "KEY_IS_AUTO_LOGIN"

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getIs_active()I

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .restart local v2    # "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
