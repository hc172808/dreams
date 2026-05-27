.class Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;
.super Ljava/lang/Object;
.source "CompletedFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getMatchCompleted()V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

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
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 125
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 126
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
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$000(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

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

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    .local v3, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    new-instance v5, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v4, v5}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$202(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    .line 96
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 98
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$200(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    .end local v3    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    goto :goto_1

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 115
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :goto_1
    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$400(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->access$300(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 121
    :goto_2
    return-void
.end method
