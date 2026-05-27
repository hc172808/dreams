.class public Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$CustomComparator;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_EMI_MORE_BANKS_LIST:I = 0x2

.field public static final REQUEST_CODE_NET_BANKING_LIST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DialogBankListFragment $ "


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

.field private e:Z

.field private f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

.field private g:Landroidx/appcompat/widget/SearchView;

.field private h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 47
    const-string v0, "trans_quick_pay"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->g:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c()V

    .line 132
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->g:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 179
    return-void
.end method

.method private a(Ljava/util/List;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)[C"
        }
    .end annotation

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 213
    nop

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/payumoney/core/entity/PaymentEntity;

    .line 216
    invoke-virtual {v3}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    goto :goto_0

    .line 220
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 193
    iget v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->l:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c:Ljava/util/List;

    const-string v3, "emi_banking_list_dialog"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;-><init>(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    goto :goto_0

    .line 195
    :pswitch_1
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c:Ljava/util/List;

    const-string v3, "net_banking_list_dialog"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;-><init>(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    .line 196
    nop

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 203
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c:Ljava/util/List;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$CustomComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$CustomComparator;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Ljava/util/List;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setDataSet([C)V

    .line 205
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 207
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 261
    new-instance v0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;-><init>(Landroid/content/Context;Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->k:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    .line 280
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 282
    return-void
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->l:I

    return p0
.end method

.method static synthetic f(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->k:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;
    .locals 1
    .param p0, "transactionType"    # Ljava/lang/String;
    .param p1, "addMoneyAmount"    # Ljava/lang/String;
    .param p2, "isSplitPay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)",
            "Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;"
        }
    .end annotation

    .line 66
    .local p3, "netBankingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;
    .locals 3
    .param p0, "transactionType"    # Ljava/lang/String;
    .param p1, "addMoneyAmount"    # Ljava/lang/String;
    .param p2, "isSplitPay"    # Z
    .param p4, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;I)",
            "Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;"
        }
    .end annotation

    .line 71
    .local p3, "bankList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v2, "transaction_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "add_money_amount"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "is_split_pay"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v2, "bank_list_type"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "net_banking_list"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "transaction_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_split_pay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->e:Z

    .line 89
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bank_list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->l:I

    .line 90
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "net_banking_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c:Ljava/util/List;

    .line 92
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_bank_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    const-string v3, "DialogLayoutException"

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    :goto_0
    sget v1, Lcom/payumoney/sdkui/R$id;->enabled_bank_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    sget v1, Lcom/payumoney/sdkui/R$id;->bank_filter_search_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->g:Landroidx/appcompat/widget/SearchView;

    .line 110
    sget v1, Lcom/payumoney/sdkui/R$id;->img_dismiss_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->i:Landroid/widget/ImageView;

    .line 111
    sget v1, Lcom/payumoney/sdkui/R$id;->sticky_index_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    .line 112
    sget v1, Lcom/payumoney/sdkui/R$id;->layout_get_bank_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->j:Landroid/widget/RelativeLayout;

    .line 114
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b()V

    .line 115
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a()V

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 188
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 229
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$4;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "DialogException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 251
    :goto_0
    return-void
.end method

.method public publishSearchResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "netBankingOptionList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$CustomComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$CustomComparator;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Ljava/util/List;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setDataSet([C)V

    .line 257
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->getStickyHeaderIndex()Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->getStickyIndex()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 95
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 96
    return-void
.end method
