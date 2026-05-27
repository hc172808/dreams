.class public Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;
.super Landroidx/fragment/app/Fragment;
.source "CompletedFragment.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private completedAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

.field private noDataTv:Landroid/widget/TextView;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->completedAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;
    .param p1, "x1"    # Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    .line 33
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->completedAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->noDataTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMatchCompleted()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 83
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getMatchCompleted(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 84
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment$1;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 128
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$CompletedFragment()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getMatchCompleted()V

    .line 69
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$1$CompletedFragment()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getMatchCompleted()V

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 52
    const v0, 0x7f0b0072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v2

    const-class v3, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 54
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 56
    const v1, 0x7f0802f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    const v1, 0x7f08028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->noDataTv:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f08037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 60
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 65
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$CompletedFragment$3W_Vfx9vp5QTSMF71D_OGP9PYtg;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$CompletedFragment$3W_Vfx9vp5QTSMF71D_OGP9PYtg;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 71
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$CompletedFragment$BSpNmur59F0tTDRGnJ3k5myHnfI;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$CompletedFragment$BSpNmur59F0tTDRGnJ3k5myHnfI;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-object v0

    :array_0
    .array-data 4
        0x7f05006e
        0x1060015
        0x1060019
        0x1060013
    .end array-data
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;->getMatchCompleted()V

    .line 136
    :cond_0
    return-void
.end method
