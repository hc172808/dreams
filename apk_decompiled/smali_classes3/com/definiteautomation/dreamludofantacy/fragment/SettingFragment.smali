.class public Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingFragment.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private balanceTv:Landroid/widget/TextView;

.field private bonus:D

.field private bonusTv:Landroid/widget/TextView;

.field private deposit:D

.field private depositTv:Landroid/widget/TextView;

.field private mUserRef:Lcom/google/firebase/database/DatabaseReference;

.field private total:D

.field private winning:D

.field private withdrawTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->deposit:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->winning:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->bonus:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->total:D

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->deposit:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
    .param p1, "x1"    # D

    .line 45
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->deposit:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->winning:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
    .param p1, "x1"    # D

    .line 45
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->winning:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->bonus:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
    .param p1, "x1"    # D

    .line 45
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->bonus:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->total:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;D)D
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;
    .param p1, "x1"    # D

    .line 45
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->total:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->depositTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->withdrawTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->bonusTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->balanceTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getUserDetails()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getUserDetails(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 196
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment$1;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 241
    return-void
.end method

.method static synthetic lambda$onCreateView$15(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 152
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$10$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "PAGE_KEY"

    const-string v2, "Privacy Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public synthetic lambda$onCreateView$11$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "PAGE_KEY"

    const-string v2, "legal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public synthetic lambda$onCreateView$12$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "PAGE_KEY"

    const-string v2, "About Us"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public synthetic lambda$onCreateView$13$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "PAGE_KEY"

    const-string v2, "Terms & Conditions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public synthetic lambda$onCreateView$14$SettingFragment(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 147
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 148
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->setlogout()V

    .line 149
    return-void
.end method

.method public synthetic lambda$onCreateView$16$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 138
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    const-string v1, "LOGOUT ACCOUNT"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    const-string v1, "Are you sure you want to logout?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$rFNVfmlgNfeDZb0OgpWk1TLhsPY;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$rFNVfmlgNfeDZb0OgpWk1TLhsPY;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    .line 146
    const-string v2, "Confirm"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$dWm_T7dGadmHqf0ezCFl_a8hJPQ;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$dWm_T7dGadmHqf0ezCFl_a8hJPQ;

    .line 151
    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 154
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 155
    return-void
.end method

.method public synthetic lambda$onCreateView$2$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$3$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/StatisticsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/LeaderBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$6$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$7$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$8$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->SUPPORT_EMAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 95
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$9$SettingFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "PAGE_KEY"

    const-string v2, "FAQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntentWithData(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
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

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
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

    .line 67
    const v0, 0x7f0b0079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v2

    const-class v3, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 69
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "Users"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v4, "KEY_USER_ID"

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    .line 71
    const v2, 0x7f080148

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$-74ihCxU07jbxeWvYNK4ASLhaZs;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$-74ihCxU07jbxeWvYNK4ASLhaZs;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f080443

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$_MYyeVKUIAp2btqPI5ffjGnUZMQ;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$_MYyeVKUIAp2btqPI5ffjGnUZMQ;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f0802e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$20birDyGJ1Yhxm2Afauay6uxI2A;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$20birDyGJ1Yhxm2Afauay6uxI2A;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f0801ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$j0FDmzSK47KrI95kzX-WXZ2zfDM;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$j0FDmzSK47KrI95kzX-WXZ2zfDM;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x7f080369

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$pByEpGmVoFNkQy4Y3e03v9sApwo;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$pByEpGmVoFNkQy4Y3e03v9sApwo;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f080210

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$Bd8HJs6NAzCiUJ5KtN1rKaNqBjY;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$Bd8HJs6NAzCiUJ5KtN1rKaNqBjY;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f0802f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$h3s7EqWbtqxmgkMcjTMXn2HmlEQ;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$h3s7EqWbtqxmgkMcjTMXn2HmlEQ;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f080293

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$dcZX45DJj_Q5H0I36oIXJ7yPoDE;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$dcZX45DJj_Q5H0I36oIXJ7yPoDE;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v2, 0x7f0801c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$aaqQjzS4BEW5jeAdMS1F_YCpIY0;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$aaqQjzS4BEW5jeAdMS1F_YCpIY0;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f08019c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$I3YyA7GwC-lPF5F_s2skshjDF2k;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$I3YyA7GwC-lPF5F_s2skshjDF2k;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v2, 0x7f0802d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$svfXl6EwTD2qkIcqtDEBbpwAcBo;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$svfXl6EwTD2qkIcqtDEBbpwAcBo;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v2, 0x7f080213

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$SSuhZLCVM-UCyrZLrNbaxbnpswQ;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$SSuhZLCVM-UCyrZLrNbaxbnpswQ;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f080052

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$VKRGJAPSb4zXKJjmzBf2GWtYk-c;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$VKRGJAPSb4zXKJjmzBf2GWtYk-c;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v2, 0x7f080395

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$T_WZWemYq43dgaI93LlHYXKGkXs;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$T_WZWemYq43dgaI93LlHYXKGkXs;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v2, 0x7f08022f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$zv01iJHMOYHKcdnQWwumfeyShaE;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$SettingFragment$zv01iJHMOYHKcdnQWwumfeyShaE;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v2, 0x7f0802d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 158
    .local v2, "photoIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    const v3, 0x7f0802d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    .local v3, "photoTv":Landroid/widget/TextView;
    const v4, 0x7f08027c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    .local v4, "nameTv":Landroid/widget/TextView;
    const v5, 0x7f0802d1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "phoneTv":Landroid/widget/TextView;
    const v6, 0x7f0800b3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->balanceTv:Landroid/widget/TextView;

    .line 162
    const v6, 0x7f080149

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->depositTv:Landroid/widget/TextView;

    .line 163
    const v6, 0x7f080444

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->withdrawTv:Landroid/widget/TextView;

    .line 164
    const v6, 0x7f0800c4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->bonusTv:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v6

    const-string v7, "KEY_FULL_NAME"

    invoke-virtual {v6, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v8

    const-string v9, "KEY_COUNTRY_CODE"

    invoke-virtual {v8, v9}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v8

    const-string v9, "KEY_MOBILE"

    invoke-virtual {v8, v9}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "+%s %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v6

    const-string v8, "KEY_PROFILE_PHOTO"

    invoke-virtual {v6, v8}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v9, 0x8

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {v2, v9}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 176
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {v2, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 179
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :try_start_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v6, 0x7f070222

    invoke-virtual {v1, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    goto :goto_1

    .line 182
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 187
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getUserDetails()V

    .line 191
    :cond_1
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;->getUserDetails()V

    .line 247
    return-void
.end method
