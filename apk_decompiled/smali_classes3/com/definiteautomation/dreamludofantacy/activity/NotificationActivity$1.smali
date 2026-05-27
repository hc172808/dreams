.class Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->getNotification()V
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
        "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

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
            "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 94
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 95
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
            "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 70
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    .local v0, "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;"
    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;

    invoke-direct {v3, v2, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$202(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;

    .line 77
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->notifyDataSetChanged()V

    .line 79
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;"
    .end local v1    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    :goto_0
    return-void
.end method
