.class Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;
.super Ljava/lang/Object;
.source "StatisticsActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->getStatistics()V
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
        "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

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
            "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 93
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 94
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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
            "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
            ">;>;)V"
        }
    .end annotation

    .line 67
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 69
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    .local v0, "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;"
    if-eqz v0, :cond_1

    .line 72
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;

    invoke-direct {v3, v2, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$202(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;

    .line 76
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->notifyDataSetChanged()V

    .line 78
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;"
    .end local v1    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    :goto_0
    return-void
.end method
