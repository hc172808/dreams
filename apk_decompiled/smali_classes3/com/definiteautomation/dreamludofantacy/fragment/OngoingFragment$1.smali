.class Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;
.super Ljava/lang/Object;
.source "OngoingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getMatchOngoing()V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResponse$0$OngoingFragment$1(Landroid/view/View;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;I)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .param p3, "pos"    # I

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "0"

    const-string v4, "IS_JOIN_KEY"

    const-string v5, "WHATSAPP_KEY"

    const-string v6, "PARTI2_NAME_KEY"

    const-string v7, "PARTI1_NAME_KEY"

    const-string v8, "PARTI2_ID_KEY"

    const-string v9, "PARTI1_ID_KEY"

    const-string v10, "PLAY_TIME_KEY"

    const-string v11, "CURR_TIME_KEY"

    const-string v12, "TYPE_KEY"

    const-string v13, "PRIZE_KEY"

    const-string v14, "FEE_KEY"

    const-string v15, "ID_KEY"

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v1

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v1

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v1

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getCurrent_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWhatsapp_no2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v2, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 127
    :cond_0
    move-object v1, v0

    iget-object v0, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v1

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v1

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v1

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getCurrent_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWhatsapp_no1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v2, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
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

    .line 160
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 161
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

    .line 88
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 90
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    .local v0, "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    if-eqz v0, :cond_1

    .line 93
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    .local v3, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    new-instance v5, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v4, v5}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$102(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    .line 96
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v4, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 98
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v2, v2, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->noDataTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->noDataTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    move-result-object v1

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$OngoingFragment$1$Nmr3KzbqkekLIHgQpb9X_g21uJc;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$OngoingFragment$1$Nmr3KzbqkekLIHgQpb9X_g21uJc;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->setOnItemClickListener(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;)V

    .line 144
    .end local v3    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_1

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v3, v3, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->noDataTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 150
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :goto_1
    goto :goto_2

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->noDataTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    iget-object v0, v0, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 156
    :goto_2
    return-void
.end method
