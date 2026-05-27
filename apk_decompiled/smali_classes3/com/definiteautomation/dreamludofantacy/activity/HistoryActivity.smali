.class public Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HistoryActivity.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private historyAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;

.field private noDataTv:Landroid/widget/TextView;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    .line 30
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    .line 30
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    .line 30
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->historyAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;
    .param p1, "x1"    # Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;

    .line 30
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->historyAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    .line 30
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->noDataTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getHistory()V
    .locals 3

    .line 59
    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->noDataTv:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 63
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getHistory(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 64
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;>;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 97
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$HistoryActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->setContentView(I)V

    .line 43
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 44
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 46
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 47
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 48
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 51
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$HistoryActivity$iJF_pGT0v7fiRVarP2TPa6dCggU;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$HistoryActivity$iJF_pGT0v7fiRVarP2TPa6dCggU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;->getHistory()V

    .line 56
    :cond_0
    return-void
.end method
