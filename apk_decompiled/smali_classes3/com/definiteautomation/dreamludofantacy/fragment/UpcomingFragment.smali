.class public Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
.super Landroidx/fragment/app/Fragment;
.source "UpcomingFragment.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private bonus:D

.field private deposit:D

.field private flag:I

.field public mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

.field private mUserRef:Lcom/google/firebase/database/DatabaseReference;

.field private noDataTv:Landroid/widget/TextView;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private token:Ljava/lang/String;

.field private total:D

.field private upcomingAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

.field private winning:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->deposit:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->winning:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->bonus:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->total:D

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->flag:I

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->registerUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getUserToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->flag:I

    return v0
.end method

.method static synthetic access$1302(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->flag:I

    return p1
.end method

.method static synthetic access$1400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->sendNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->upcomingAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    .line 54
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->upcomingAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->noDataTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->total:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->total:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    .line 54
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->joinMatch(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->deposit:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->deposit:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->winning:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->winning:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    .line 54
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->bonus:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->bonus:D

    return-wide p1
.end method

.method private getMatchUpcoming()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 116
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getMatchUpcoming(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 117
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 216
    return-void
.end method

.method private getUserDetails()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getUserDetails(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 220
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$2;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 260
    return-void
.end method

.method private getUserToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "name"
        }
    .end annotation

    .line 387
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "Users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 388
    .local v0, "mUserRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;

    invoke-direct {v2, p0, p2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 404
    return-void
.end method

.method private joinMatch(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
    .locals 5
    .param p1, "obj"    # Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 293
    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    const-string v1, "KEY_USER_ID"

    const-string v2, "1234567890"

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 296
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->postParticipant1Result(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 297
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$4;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 336
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 338
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 340
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->postParticipant2Result(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 341
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$5;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 384
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private registerUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 442
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$H8wEgO0DYa9gcxuxXfFocr9tKOY;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$H8wEgO0DYa9gcxuxXfFocr9tKOY;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 467
    return-void
.end method

.method private sendNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->getFCMService()Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    const-string v2, "Challenge Accepted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has accepted your challenge. Update your room code to play."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "message"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v1, "click_action"

    const-string v4, "MainActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/model/Notification;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/definiteautomation/dreamludofantacy/model/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .local v1, "notification":Lcom/definiteautomation/dreamludofantacy/model/Notification;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/model/Sender;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->token:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/model/Sender;-><init>(Ljava/lang/String;Lcom/definiteautomation/dreamludofantacy/model/Notification;)V

    .line 418
    .local v2, "content":Lcom/definiteautomation/dreamludofantacy/model/Sender;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    invoke-interface {v3, v2}, Lcom/definiteautomation/dreamludofantacy/remote/APIService;->sendNotification(Lcom/definiteautomation/dreamludofantacy/model/Sender;)Lretrofit2/Call;

    move-result-object v3

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$7;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$7;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    .line 419
    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 430
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$UpcomingFragment()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getMatchUpcoming()V

    .line 98
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$1$UpcomingFragment()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getMatchUpcoming()V

    .line 104
    :cond_0
    return-void
.end method

.method public synthetic lambda$registerUser$2$UpcomingFragment(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "task1"    # Lcom/google/android/gms/tasks/Task;

    .line 460
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v0, "mainIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public synthetic lambda$registerUser$3$UpcomingFragment(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 443
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 452
    .local v0, "device_token":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    .local v1, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_FULL_NAME"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hi there I\'m using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100022

    invoke-virtual {p0, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " App."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_PROFILE_PHOTO"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "image"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thumb_image"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v2, "device_token"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$NjNr26taji3BYijQlVw9DVdscbQ;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$NjNr26taji3BYijQlVw9DVdscbQ;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 466
    .end local v0    # "device_token":Ljava/lang/String;
    .end local v1    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
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

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
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

    .line 80
    const v0, 0x7f0b007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v2

    const-class v3, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 82
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 83
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v2, "Users"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    .line 85
    const v1, 0x7f0802f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    const v1, 0x7f08028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->noDataTv:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f08037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 89
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 94
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$gbG21iepWBR3FlWYLo8tPNnve6I;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$gbG21iepWBR3FlWYLo8tPNnve6I;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 100
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$rtmSQQ7rdhbEwWbn61pO5SpGZYM;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$rtmSQQ7rdhbEwWbn61pO5SpGZYM;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getUserDetails()V

    .line 110
    :cond_0
    return-object v0

    nop

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

    .line 434
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 435
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getMatchUpcoming()V

    .line 437
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getUserDetails()V

    .line 439
    :cond_0
    return-void
.end method
