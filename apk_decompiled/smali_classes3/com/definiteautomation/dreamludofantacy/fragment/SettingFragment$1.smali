.class Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getUserDetails()V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

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

    .line 239
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
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

    .line 199
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 202
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 205
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getDeposit_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$002(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D

    .line 206
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getWon_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$102(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D

    .line 207
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getBonus_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$202(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D

    .line 208
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$302(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D

    .line 210
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "%s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$500(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v8, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$600(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v8, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$700(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
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

    .line 216
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 222
    .end local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getIs_active()I

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v2    # "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
