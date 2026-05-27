.class Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;
.super Ljava/lang/Object;
.source "UpcomingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getUserDetails()V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

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

    .line 258
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

    .line 223
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 226
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 229
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getDeposit_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$702(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D

    .line 230
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getWon_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$802(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D

    .line 231
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getBonus_bal()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$902(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D

    .line 232
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$700(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$800(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$900(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v5, v6}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$502(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D

    .line 234
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

    .line 235
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getIs_active()I

    move-result v2

    if-nez v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v2, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .restart local v2    # "i":Landroid/content/Intent;
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v3, v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;>;"
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
