.class public Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$CustomComparator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WalletListFragment $ "


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 43
    const-string v0, "trans_quick_pay"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->g:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c()V

    .line 121
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->g:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$3;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 168
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

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 194
    nop

    .line 196
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

    .line 197
    invoke-virtual {v3}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    goto :goto_0

    .line 201
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 182
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c:Ljava/util/List;

    const-string v3, "wallet_list_dialog"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;-><init>(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->h:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    .line 183
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c:Ljava/util/List;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$CustomComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$CustomComparator;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a(Ljava/util/List;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setDataSet([C)V

    .line 186
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 188
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 242
    new-instance v0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;-><init>(Landroid/content/Context;Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->k:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    .line 259
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 261
    return-void
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->k:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;
    .locals 3
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
            "Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;"
        }
    .end annotation

    .line 60
    .local p3, "walletList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v2, "transaction_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "add_money_amount"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "is_split_pay"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v2, "net_banking_list"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "transaction_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_split_pay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->e:Z

    .line 77
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "net_banking_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c:Ljava/util/List;

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_bank_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    const-string v3, "DialogLayoutException"

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 94
    :goto_0
    sget v1, Lcom/payumoney/sdkui/R$id;->enabled_bank_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    sget v1, Lcom/payumoney/sdkui/R$id;->bank_filter_search_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->g:Landroidx/appcompat/widget/SearchView;

    .line 97
    sget v1, Lcom/payumoney/sdkui/R$id;->img_dismiss_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->i:Landroid/widget/ImageView;

    .line 98
    sget v1, Lcom/payumoney/sdkui/R$id;->sticky_index_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    .line 99
    sget v1, Lcom/payumoney/sdkui/R$id;->layout_get_bank_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->j:Landroid/widget/RelativeLayout;

    .line 100
    sget v1, Lcom/payumoney/sdkui/R$id;->textview_dialogfragment_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    const-string v2, "Select Wallet"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->b()V

    .line 104
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a()V

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 206
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 210
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$4;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "DialogException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 232
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

    .line 236
    .local p1, "netBankingOptionList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$CustomComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$CustomComparator;-><init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a(Ljava/util/List;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->setDataSet([C)V

    .line 238
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->f:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->getStickyHeaderIndex()Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/IndexHeaderLayoutManager;->getStickyIndex()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    return-void
.end method

.method public setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 82
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 83
    return-void
.end method
