.class Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;
.super Ljava/lang/Object;
.source "UpcomingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getMatchUpcoming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/List<",
        "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
        ">;>;"
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

    .line 117
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResponse$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 163
    return-void
.end method


# virtual methods
.method public synthetic lambda$onResponse$0$UpcomingFragment$1(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "obj"    # Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 154
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$500(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 155
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$600(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No enough balance to join match."

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void
.end method

.method public synthetic lambda$onResponse$2$UpcomingFragment$1(Landroid/view/View;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;I)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .param p3, "pos"    # I

    .line 144
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 145
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701f3

    .line 147
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 149
    const-string v2, "JOIN MATCH"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    const-string v2, "Are you sure you want to join?"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V

    .line 153
    const-string v4, "Confirm"

    invoke-virtual {v1, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$4yj_mofF_Je9nwlu-CVtsEYTWXA;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$4yj_mofF_Je9nwlu-CVtsEYTWXA;

    .line 162
    const-string v4, "Cancel"

    invoke-virtual {v1, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 165
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 166
    .end local v1    # "alertDialog":Landroidx/appcompat/app/AlertDialog;
    goto/16 :goto_0

    .line 144
    :cond_0
    move-object/from16 v3, p2

    .line 166
    iget-object v1, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "WHATSAPP_KEY"

    const-string v5, "PARTI2_NAME_KEY"

    const-string v6, "PARTI1_NAME_KEY"

    const-string v7, "PARTI2_ID_KEY"

    const-string v8, "PARTI1_ID_KEY"

    const-string v9, "PLAY_TIME_KEY"

    const-string v10, "CURR_TIME_KEY"

    const-string v11, "TYPE_KEY"

    const-string v12, "PRIZE_KEY"

    const-string v13, "FEE_KEY"

    const-string v14, "ID_KEY"

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v15, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {v1, v2, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v14

    invoke-virtual {v1, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getCurrent_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWhatsapp_no2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v15, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {v1, v2, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v14

    invoke-virtual {v1, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getCurrent_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWhatsapp_no1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->startActivity(Landroid/content/Intent;)V

    .line 196
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method

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
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 213
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 214
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
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
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;)V"
        }
    .end annotation

    .line 121
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 123
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    if-eqz v0, :cond_1

    .line 126
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    new-instance v5, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v4, v5}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$202(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    .line 129
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 131
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    move-result-object v1

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$EkRToLDRv1Mj-Ipv6yM6fmltyd4;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$EkRToLDRv1Mj-Ipv6yM6fmltyd4;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->setOnItemClickListener(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;)V

    .line 197
    .end local v3    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_1

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 203
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :goto_1
    goto :goto_2

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 209
    :goto_2
    return-void
.end method
