.class public Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
.implements Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
.implements Lcom/payumoney/core/listener/OnUserLoginListener;
.implements Lcom/payumoney/core/listener/onUserAccountReceivedListener;
.implements Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
.implements Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;
.implements Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;
.implements Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;
.implements Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;
.implements Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;,
        Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$OnFragmentInteractionListener;,
        Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$DoneOnEditorActionListener;
    }
.end annotation


# static fields
.field public static final EMI_SECTION:Ljava/lang/String; = "emi_section"

.field public static final LOGIN_DIALOG_TAG:Ljava/lang/String; = "login_dialog"

.field public static final NET_BANK_SECTION:Ljava/lang/String; = "saved_banks"

.field public static final SAVED_CARD_SECTION:Ljava/lang/String; = "saved_Cards"

.field public static final THIRD_PARTY_WALLETS_SECTION:Ljava/lang/String; = "third_party_wallets_section"

.field public static final UPI_SECTION:Ljava/lang/String; = "upi_section"

.field public static final WALLET_SECTION:Ljava/lang/String; = "wallet_section"

.field public static moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroidx/cardview/widget/CardView;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field private F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field private G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field private H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field private I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/RelativeLayout;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/ImageView;

.field private Y:J

.field private Z:Lcom/payumoney/core/entity/Wallet;

.field private a:Z

.field private aA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aB:Landroid/widget/TextView;

.field private aC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aF:I

.field private aG:Z

.field private aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

.field private aI:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

.field private aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

.field private aK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;"
        }
    .end annotation
.end field

.field private aL:Lcom/google/android/material/textfield/TextInputEditText;

.field private aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

.field private aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private aO:Z

.field private aP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aQ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Landroid/widget/TextView;

.field private ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

.field private ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

.field private ad:Z

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/payumoney/core/entity/CardDetail;

.field private ag:I

.field private ah:Landroid/view/animation/Animation;

.field private ai:Landroid/view/animation/Animation;

.field private aj:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

.field private ak:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

.field private al:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

.field private am:I

.field private an:Landroid/widget/RelativeLayout;

.field private ao:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private ap:Landroid/widget/TextView;

.field private aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

.field private ar:Landroid/widget/TextView;

.field private as:Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

.field private at:Z

.field private au:D

.field private av:Z

.field private aw:Z

.field private ax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private ay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private az:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/payumoney/core/response/PaymentOptionDetails;

.field private s:Landroid/view/View;

.field private t:Lcom/payumoney/core/entity/PaymentEntity;

.field private u:Lcom/payumoney/core/entity/PaymentEntity;

.field private v:Lcom/payumoney/core/entity/PaymentEntity;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Y:J

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ag:I

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->au:D

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aF:I

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aG:Z

    .line 3067
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$13;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$13;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aP:Ljava/util/Comparator;

    .line 3075
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$14;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$14;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aQ:Ljava/util/Comparator;

    .line 219
    return-void
.end method

.method static synthetic A(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    return-object p0
.end method

.method static synthetic B(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w()Z

    move-result p0

    return p0
.end method

.method static synthetic C(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    return-object p0
.end method

.method static synthetic D(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ag:I

    return p0
.end method

.method static synthetic E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    return-void
.end method

.method static synthetic G(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->P:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ah:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s()V

    return-void
.end method

.method static synthetic J(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    return-object p0
.end method

.method static synthetic K(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    return p0
.end method

.method static synthetic L(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r()V

    return-void
.end method

.method static synthetic M(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->R:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aL:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic O(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->S:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic P(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    return p0
.end method

.method static synthetic Q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)D
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->au:D

    return-wide v0
.end method

.method static synthetic R(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ai:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic S(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aj:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    return-object p0
.end method

.method static synthetic U(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q()V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aF:I

    return p1
.end method

.method private a(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;
    .locals 2

    .line 2246
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 2250
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 2251
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 2252
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2256
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object p1

    .line 2259
    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 2079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 2081
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    goto :goto_0

    .line 2084
    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2085
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2084
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2089
    :cond_1
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aQ:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2090
    return-object v0
.end method

.method private a()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->initLayout()V

    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 513
    return-void
.end method

.method private a(D)V
    .locals 4

    .line 2964
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->av:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aw:Z

    if-eqz v3, :cond_0

    .line 2965
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_credit_debit_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2966
    :cond_0
    if-eqz v0, :cond_1

    .line 2967
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_credit_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2968
    :cond_1
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aw:Z

    if-eqz v0, :cond_2

    .line 2969
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_debit_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2971
    :cond_2
    :goto_0
    return-void
.end method

.method private a(DZ)V
    .locals 3

    .line 2100
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2101
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    sget v0, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(D)V

    goto :goto_0

    .line 2104
    :cond_0
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 2105
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2106
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_netBanking_rs:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2107
    :cond_1
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2108
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2109
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->P:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_third_party_wallets_rs:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2110
    :cond_2
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p3}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2112
    iget-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->R:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_emi_rs:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2114
    :cond_3
    :goto_0
    nop

    .line 2121
    return-void
.end method

.method private a(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 912
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EMIPaymentInitiated"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 917
    iget v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->am:I

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 918
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 919
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getEmiThresholds()Ljava/util/ArrayList;

    move-result-object v9

    .line 917
    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->newInstance(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;ILcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;

    move-result-object p1

    .line 920
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/16 v0, 0xe

    invoke-interface {p2, p1, v0}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 921
    return-void
.end method

.method private a(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 1868
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/BankCID;->isBankCIDAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/BankCID;->getBankCIDByBankCode(Ljava/lang/String;)Lcom/payumoney/core/utils/BankCID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/BankCID;->getCID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    goto :goto_0

    .line 1871
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1873
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1875
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1876
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aj:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->setmSelectedItem(I)V

    .line 1877
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aj:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->notifyDataSetChanged()V

    .line 1878
    return-void
.end method

.method private a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/utils/BankCID;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 1335
    new-instance v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v0}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 1336
    invoke-virtual {p1}, Lcom/payumoney/core/utils/BankCID;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p1}, Lcom/payumoney/core/utils/BankCID;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/PaymentEntity;->setShortTitle(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p1}, Lcom/payumoney/core/utils/BankCID;->getBankCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p1}, Lcom/payumoney/core/utils/BankCID;->getCID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1340
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1341
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;D)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(D)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 2536
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2537
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setErrorEnabled(Z)V

    .line 2538
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2541
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto :goto_1

    .line 2539
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2542
    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 2124
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2126
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-lez p1, :cond_0

    .line 2127
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->au:D

    .line 2128
    invoke-direct {p0, v1, v2, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(DZ)V

    goto/16 :goto_1

    .line 2130
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    sget v0, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    goto/16 :goto_1

    .line 2136
    :cond_1
    nop

    .line 2137
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    .line 2144
    :cond_2
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2145
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    sget v0, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2146
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(D)V

    goto :goto_0

    .line 2147
    :cond_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2148
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2149
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_netBanking_rs:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2150
    :cond_4
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2151
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2152
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->P:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_third_party_wallets_rs:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2154
    :cond_5
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2155
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 2156
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->R:Landroid/widget/TextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_emi_rs:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2159
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {p1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->toggle()V

    .line 2162
    :cond_7
    :goto_1
    return-void
.end method

.method private a(Lcom/payumoney/core/entity/PaymentEntity;)Z
    .locals 4

    .line 1981
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1982
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1983
    const/4 p1, 0x1

    return p1

    .line 1981
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1986
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aO:Z

    return p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aG:Z

    return p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;D)D
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->au:D

    return-wide p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ag:I

    return p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Lcom/payumoney/core/entity/CardDetail;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    return-object p1
.end method

.method private b(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;
    .locals 3

    .line 2263
    nop

    .line 2265
    :try_start_0
    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2267
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2269
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    .line 2270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2271
    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2272
    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2274
    :cond_0
    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object p1

    .line 2276
    :goto_0
    goto :goto_1

    .line 2278
    :cond_1
    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2282
    :goto_1
    goto :goto_2

    .line 2280
    :catch_0
    move-exception p1

    .line 2281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "CC"

    .line 2284
    :goto_2
    return-object p1
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 3050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3051
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 3052
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3053
    goto :goto_0

    .line 3055
    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 3056
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3055
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3060
    :cond_1
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aP:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3061
    return-object v0
.end method

.method private b()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->initLayout()V

    .line 518
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$3;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    return-void
.end method

.method private b(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 1882
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/BankCID;->isBankCIDAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/BankCID;->getBankCIDByBankCode(Ljava/lang/String;)Lcom/payumoney/core/utils/BankCID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/BankCID;->getCID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    goto :goto_0

    .line 1885
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1887
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1889
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1890
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ak:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->setmSelectedItem(I)V

    .line 1891
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ak:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->notifyDataSetChanged()V

    .line 1892
    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->at:Z

    return p1
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->initLayout()V

    .line 537
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$4;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->initLayout()V

    .line 556
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$5;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    return-void
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 577
    sget v2, Lcom/payumoney/sdkui/R$string;->label_view_details:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Landroid/view/View;F)V

    .line 583
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 584
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 588
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 590
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 868
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aL:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 870
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 871
    const-string v2, "Please wait..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 872
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 873
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 876
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$6;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    sget-object v1, Lcom/payumoney/core/PayUmoneyConstants;->PM_VALIDATE_VPA_API_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/payumoney/core/PayUmoneySDK;->validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method static synthetic g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1895
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1896
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setVisibility(I)V

    .line 1897
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1898
    return-void
.end method

.method static synthetic h(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 1907
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    .line 1909
    return-void
.end method

.method static synthetic i(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->as:Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    .line 1913
    return-void
.end method

.method static synthetic j(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aF:I

    return p0
.end method

.method private j()V
    .locals 1

    .line 1916
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    goto :goto_0

    .line 1918
    :cond_0
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    .line 1921
    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    .line 1929
    return-void
.end method

.method static synthetic k(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aG:Z

    return p0
.end method

.method private l()V
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->toggle()V

    .line 1933
    return-void
.end method

.method static synthetic l(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    return-void
.end method

.method private m()V
    .locals 4

    .line 1936
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    const-string v3, "wallet_section"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1937
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U:Landroid/widget/ImageView;

    const-string v3, "saved_Cards"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1938
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->T:Landroid/widget/ImageView;

    const-string v3, "saved_banks"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1939
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->V:Landroid/widget/ImageView;

    const-string v3, "third_party_wallets_section"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1940
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->W:Landroid/widget/ImageView;

    const-string v3, "emi_section"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1941
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->X:Landroid/widget/ImageView;

    const-string v3, "upi_section"

    invoke-direct {v1, p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setListener(Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;)V

    .line 1942
    return-void
.end method

.method static synthetic m(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    return-void
.end method

.method private n()V
    .locals 3

    .line 2094
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2095
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setVisibility(I)V

    .line 2097
    return-void
.end method

.method static synthetic n(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    return-void
.end method

.method public static newInstance(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;I)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p0, "paymentOptionDetails"    # Lcom/payumoney/core/response/PaymentOptionDetails;
    .param p2, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/response/PaymentOptionDetails;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;I)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 231
    .local p1, "binDetailsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payumoney/core/response/BinDetail;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;-><init>()V

    .line 232
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string v2, "paymentOption"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    const-string v2, "binDetailsMap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 235
    const-string v2, "theme"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 237
    return-object v0
.end method

.method private o()V
    .locals 4

    .line 2385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2386
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No. of Cards displayed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SavedCardDisplayed"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2390
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n()V

    .line 2391
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setSaveCardUI()V

    .line 2392
    return-void
.end method

.method static synthetic o(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    return-void
.end method

.method static synthetic p(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    return-object p0
.end method

.method private p()V
    .locals 9

    .line 2395
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2396
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1

    .line 2400
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2401
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_payu_money_wallet_rs500:I

    new-array v6, v0, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2403
    :cond_0
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_payu_money_wallet_rs500:I

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v7}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2405
    :cond_1
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_payumoney_wallet:I

    invoke-virtual {p0, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 2407
    :goto_0
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ar:Landroid/widget/TextView;

    sget v3, Lcom/payumoney/sdkui/R$string;->pay_u_money_inner_label:I

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v7}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2409
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2411
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2413
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    .line 2414
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_2

    .line 2415
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 2416
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2417
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 2418
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    goto :goto_1

    .line 2421
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 2422
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2423
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 2426
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 2427
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2428
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 2430
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextColor(I)V

    .line 2431
    return-void
.end method

.method private q()V
    .locals 4

    .line 2887
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2888
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2889
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2890
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2891
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2892
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto :goto_0

    .line 2894
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    goto :goto_0

    .line 2896
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2897
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2900
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    return-void
.end method

.method static synthetic r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 2903
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->btn_continue:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2904
    return-void
.end method

.method static synthetic s(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/Wallet;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2908
    return-void
.end method

.method private t()Z
    .locals 1

    .line 2911
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2912
    const/4 v0, 0x1

    return v0

    .line 2914
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic t(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    return-object p0
.end method

.method private u()Z
    .locals 1

    .line 2918
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    const/4 v0, 0x1

    return v0

    .line 2921
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private v()Z
    .locals 1

    .line 2925
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2926
    const/4 v0, 0x1

    return v0

    .line 2928
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic v(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u()Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    return-object p0
.end method

.method private w()Z
    .locals 1

    .line 2933
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    const/4 v0, 0x1

    return v0

    .line 2936
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private x()V
    .locals 2

    .line 2974
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->av:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aw:Z

    if-eqz v1, :cond_0

    .line 2975
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->label_credit_debit_header:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2976
    :cond_0
    if-eqz v0, :cond_1

    .line 2977
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_credit_card:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2978
    :cond_1
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aw:Z

    if-eqz v0, :cond_2

    .line 2979
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_debit_card:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2981
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2983
    :goto_0
    return-void
.end method

.method static synthetic x(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    return p0
.end method

.method private y()V
    .locals 3

    .line 2987
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 2988
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setClipChildren(Z)V

    .line 2989
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setPageMargin(I)V

    .line 2990
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;

    invoke-direct {v2}, Lcom/payumoney/sdkui/ui/adapters/ZoomOutTransformer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2993
    goto :goto_0

    .line 2991
    :catch_0
    move-exception v0

    .line 2992
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "Exception"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2994
    :goto_0
    return-void
.end method

.method static synthetic y(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    return p0
.end method

.method static synthetic z(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public OnUserPaymentDetailsReceived(Lcom/payumoney/core/response/UserDetail;Ljava/lang/String;)V
    .locals 3
    .param p1, "userDetail"    # Lcom/payumoney/core/response/UserDetail;
    .param p2, "tag"    # Ljava/lang/String;

    .line 2317
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2318
    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    .line 2321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 2322
    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v1, :cond_2

    .line 2324
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/CardDetail;

    .line 2329
    invoke-virtual {v2}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    goto :goto_0

    .line 2332
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    const-string v2, "fetch_multiple_api_tag"

    invoke-virtual {v1, p0, v0, v2}, Lcom/payumoney/core/PayUmoneySDK;->getMultipleCardBinDetails(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2334
    goto :goto_1

    .line 2336
    :cond_1
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o()V

    .line 2340
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getWalletDetails()Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2341
    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getWalletDetails()Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    .line 2342
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_5

    .line 2343
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2344
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p()V

    .line 2345
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->e()V

    .line 2348
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2349
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    goto :goto_3

    .line 2354
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2357
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2358
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    .line 2361
    :cond_5
    :goto_3
    return-void
.end method

.method public addNewCard()V
    .locals 6

    .line 969
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-nez v0, :cond_3

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getDebitCardList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-static {v2, v3, v1, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/payumoney/core/response/PaymentOptionDetails;)Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getDebitCardList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-static {v2, v3, v4, v5}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/payumoney/core/response/PaymentOptionDetails;)Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 978
    :cond_3
    :goto_0
    return-void
.end method

.method public afterTextChanged(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 2530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->etEnterVpa:I

    if-ne v0, v1, :cond_0

    .line 2531
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Ljava/lang/String;)V

    .line 2533
    :cond_0
    return-void
.end method

.method public initListener()V
    .locals 2

    .line 1346
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m()V

    .line 1347
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1468
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$11;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$11;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1475
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1499
    return-void
.end method

.method public initUI(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 993
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->button_login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    .line 994
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    const/16 v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 996
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->wallet_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    .line 997
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->net_banking_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x:Landroid/widget/LinearLayout;

    .line 998
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->third_party_wallets_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->z:Landroid/widget/LinearLayout;

    .line 999
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->saved_card_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    .line 1000
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->payu_error_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    .line 1001
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->emi_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A:Landroid/widget/LinearLayout;

    .line 1002
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->upi_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->B:Landroid/widget/LinearLayout;

    .line 1003
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->etEnterVpaLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    .line 1004
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$drawable;->round_rect_grey_border:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$drawable;->round_rect_red_border:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aM:Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;

    sget v1, Lcom/payumoney/sdkui/R$id;->textinput_error:I

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/RoundRectTextInputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1007
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 1008
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/payumoney/sdkui/ui/utils/Utils;->dpToPixel(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1009
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v3, Lcom/payumoney/sdkui/R$id;->etEnterVpa:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aL:Lcom/google/android/material/textfield/TextInputEditText;

    .line 1010
    new-instance v3, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;

    invoke-direct {v3, v0, p0}, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;-><init>(Landroid/view/View;Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1011
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aL:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$DoneOnEditorActionListener;

    invoke-direct {v3, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$DoneOnEditorActionListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1013
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneyConfig;->getColorPrimaryDark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1017
    sget v0, Lcom/payumoney/sdkui/R$id;->header_net_banking_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O:Landroid/widget/TextView;

    .line 1018
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    sget v0, Lcom/payumoney/sdkui/R$id;->header_third_party_wallets_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->P:Landroid/widget/TextView;

    .line 1020
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    sget v0, Lcom/payumoney/sdkui/R$id;->header_credit_debit_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q:Landroid/widget/TextView;

    .line 1022
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    sget v0, Lcom/payumoney/sdkui/R$id;->header_emi_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->R:Landroid/widget/TextView;

    .line 1024
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    sget v0, Lcom/payumoney/sdkui/R$id;->header_upi_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->S:Landroid/widget/TextView;

    .line 1026
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/payumoney/sdkui/R$anim;->fadein:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ah:Landroid/view/animation/Animation;

    .line 1030
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/payumoney/sdkui/R$anim;->fadeout:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ai:Landroid/view/animation/Animation;

    .line 1031
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ah:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1032
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ai:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1034
    sget v0, Lcom/payumoney/sdkui/R$id;->indicator_pager_saved_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    .line 1035
    sget v0, Lcom/payumoney/sdkui/R$id;->add_new_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->D:Landroid/widget/TextView;

    .line 1036
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 1045
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 1046
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 1047
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 1048
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 1050
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0, v4}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0, v2}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->setVisibility(I)V

    .line 1057
    :goto_0
    sget v0, Lcom/payumoney/sdkui/R$id;->layout_cardView_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->J:Landroid/widget/RelativeLayout;

    .line 1058
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->layout_netBankView_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->K:Landroid/widget/RelativeLayout;

    .line 1060
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->layout_third_party_wallets_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->L:Landroid/widget/RelativeLayout;

    .line 1063
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->layout_upi_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->M:Landroid/widget/RelativeLayout;

    .line 1066
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->layout_emi_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1069
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    sget v0, Lcom/payumoney/sdkui/R$id;->add_new_card_itemView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    .line 1072
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g()V

    .line 1073
    sget v0, Lcom/payumoney/sdkui/R$id;->saved_card_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    sget v0, Lcom/payumoney/sdkui/R$id;->saved_bank_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->T:Landroid/widget/ImageView;

    .line 1076
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    sget v0, Lcom/payumoney/sdkui/R$id;->saved_third_party_wallets_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->V:Landroid/widget/ImageView;

    .line 1080
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    sget v0, Lcom/payumoney/sdkui/R$id;->saved_card_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U:Landroid/widget/ImageView;

    .line 1084
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    sget v0, Lcom/payumoney/sdkui/R$id;->emi_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->W:Landroid/widget/ImageView;

    .line 1088
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    sget v0, Lcom/payumoney/sdkui/R$id;->upi_option_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->X:Landroid/widget/ImageView;

    .line 1092
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    sget v0, Lcom/payumoney/sdkui/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;

    .line 1096
    invoke-virtual {v0, v3}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setHasFixedSize(Z)V

    .line 1098
    sget v2, Lcom/payumoney/sdkui/R$id;->third_party_wallets_recycler_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;

    .line 1099
    invoke-virtual {v2, v3}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setHasFixedSize(Z)V

    .line 1101
    sget v5, Lcom/payumoney/sdkui/R$id;->emi_recycler_view:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;

    .line 1102
    invoke-virtual {v5, v3}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setHasFixedSize(Z)V

    .line 1105
    iget-boolean v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 1106
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    .line 1110
    sget-object v6, Lcom/payumoney/core/utils/BankCID;->SBI_BANK:Lcom/payumoney/core/utils/BankCID;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v6, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V

    .line 1111
    sget-object v6, Lcom/payumoney/core/utils/BankCID;->HDFC_BANK:Lcom/payumoney/core/utils/BankCID;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v6, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V

    .line 1112
    sget-object v6, Lcom/payumoney/core/utils/BankCID;->ICICI_BANK:Lcom/payumoney/core/utils/BankCID;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v6, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V

    .line 1113
    sget-object v6, Lcom/payumoney/core/utils/BankCID;->AXIS:Lcom/payumoney/core/utils/BankCID;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v6, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V

    .line 1114
    sget-object v6, Lcom/payumoney/core/utils/BankCID;->PNB_RETAIL:Lcom/payumoney/core/utils/BankCID;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v6, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/utils/BankCID;Ljava/util/List;)V

    .line 1119
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aP:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1124
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 1125
    nop

    .line 1126
    const/4 v6, 0x6

    const/4 v10, 0x0

    goto :goto_2

    .line 1129
    :cond_1
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v9, :cond_2

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    .line 1130
    :goto_1
    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, v9, :cond_3

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    .line 1134
    :goto_2
    iget-object v11, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v6, :cond_6

    .line 1135
    iget-object v11, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1137
    iget-object v13, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v13, v6, :cond_6

    .line 1139
    iget-object v13, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1141
    invoke-virtual {v12}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/payumoney/core/utils/BankCID;->isBankCIDAvailable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1142
    invoke-virtual {v12}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/payumoney/core/utils/BankCID;->getBankCIDByBankCode(Ljava/lang/String;)Lcom/payumoney/core/utils/BankCID;

    move-result-object v13

    invoke-virtual {v13}, Lcom/payumoney/core/utils/BankCID;->getCID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    goto :goto_4

    .line 1144
    :cond_4
    invoke-virtual {v12, v7}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1146
    :goto_4
    iget-object v13, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_5
    goto :goto_3

    .line 1155
    :cond_6
    new-instance v6, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {v6, v11, v12, p0, v10}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;Z)V

    iput-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aj:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    .line 1156
    invoke-virtual {v0, v6}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1160
    :cond_7
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    .line 1164
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aQ:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1169
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 1170
    nop

    .line 1171
    const/4 v0, 0x6

    const/4 v6, 0x0

    goto :goto_6

    .line 1174
    :cond_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v9, :cond_9

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x5

    .line 1175
    :goto_5
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v9, :cond_a

    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    const/4 v6, 0x1

    .line 1179
    :goto_6
    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1181
    iget-object v12, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v0, :cond_c

    .line 1183
    iget-object v12, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1185
    iget-object v12, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_b
    goto :goto_7

    .line 1193
    :cond_c
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    iget-object v11, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-direct {v0, v10, v11, p0, v6}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;Z)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ak:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    .line 1194
    invoke-virtual {v5, v0}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1198
    :cond_d
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    .line 1202
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aP:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1207
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_e

    .line 1208
    nop

    .line 1209
    const/4 v0, 0x0

    goto :goto_9

    .line 1212
    :cond_e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v9, :cond_f

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v8, v0

    goto :goto_8

    :cond_f
    const/4 v8, 0x5

    .line 1213
    :goto_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v9, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    .line 1216
    :goto_9
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1218
    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v8, :cond_12

    .line 1219
    invoke-virtual {v6}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/payumoney/core/utils/WalletsCID;->isWalletCIDAvailable(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1220
    invoke-virtual {v6}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/payumoney/core/utils/WalletsCID;->getWalletCIDByBankCode(Ljava/lang/String;)Lcom/payumoney/core/utils/WalletsCID;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/utils/WalletsCID;->getCID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    goto :goto_b

    .line 1222
    :cond_11
    invoke-virtual {v6, v7}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1224
    :goto_b
    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    goto :goto_a

    .line 1231
    :cond_12
    new-instance v5, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    invoke-direct {v5, v6, v7, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;Z)V

    iput-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->al:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    .line 1233
    invoke-virtual {v2, v5}, Lcom/payumoney/sdkui/ui/widgets/AutoFitRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1236
    :cond_13
    sget v0, Lcom/payumoney/sdkui/R$id;->viewpager_saved_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    .line 1237
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setBackgroundColor(I)V

    .line 1238
    sget v0, Lcom/payumoney/sdkui/R$id;->indicator_pager_saved_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    .line 1241
    sget v0, Lcom/payumoney/sdkui/R$id;->layout_wallet_view_user_balance_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->an:Landroid/widget/RelativeLayout;

    .line 1242
    sget v0, Lcom/payumoney/sdkui/R$id;->checkbox_citrus_wallet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 1243
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_show_wallet_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ap:Landroid/widget/TextView;

    .line 1244
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    sget v0, Lcom/payumoney/sdkui/R$id;->expandableLayout1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    .line 1246
    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->toggle()V

    .line 1247
    sget v0, Lcom/payumoney/sdkui/R$id;->citrus_balance_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ar:Landroid/widget/TextView;

    .line 1253
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    aput-object v5, v2, v4

    new-array v5, v3, [I

    const v6, 0x101009e

    aput v6, v5, v4

    aput-object v5, v2, v3

    new-array v1, v1, [I

    const v5, -0x333334

    aput v5, v1, v4

    .line 1260
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v4}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getPrimaryColor()I

    move-result v4

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1263
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1264
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 1265
    return-void
.end method

.method public isDataConnectionAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3014
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3015
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3016
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3017
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3018
    :cond_0
    return v0

    .line 3020
    :cond_1
    return v0
.end method

.method public isWalletSufficientBalance()Z
    .locals 5

    .line 2434
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v0

    .line 2435
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v0

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_0

    .line 2436
    const/4 v0, 0x1

    return v0

    .line 2438
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeNetBankingPayment(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 7
    .param p1, "paymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2442
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2443
    new-instance v3, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v3}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 2444
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 2445
    const-string v0, "NB"

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 2447
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2448
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 2451
    :cond_0
    if-eqz p1, :cond_1

    .line 2452
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 2454
    :cond_1
    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 2457
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "NB_PAYMENT_REQUEST_API_TAG"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 2458
    goto :goto_0

    .line 2459
    :cond_2
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showNoNetworkError()V

    .line 2461
    :goto_0
    return-void
.end method

.method public makeThirdPartyWalletPayment(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 7
    .param p1, "paymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2469
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2470
    new-instance v3, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v3}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 2471
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 2472
    const-string v0, "CASHCARD"

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 2474
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 2476
    if-eqz p1, :cond_0

    .line 2477
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 2480
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "NB_PAYMENT_REQUEST_API_TAG"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 2481
    goto :goto_0

    .line 2482
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showNoNetworkError()V

    .line 2484
    :goto_0
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1659
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1660
    const-string v0, "LOGIN_DIALOG_TAG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "Invalid credentials"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1662
    :cond_0
    const-string v0, "NB_PAYMENT_REQUEST_API_TAG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1666
    :cond_1
    :goto_0
    return-void
.end method

.method public navigateToBankListFragment()V
    .locals 7

    .line 2026
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/PaymentEntity;

    .line 2030
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payumoney/core/entity/PaymentEntity;

    .line 2031
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2032
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getCidCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payumoney/core/entity/PaymentEntity;->setShortTitle(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    :cond_0
    goto :goto_1

    .line 2038
    :cond_1
    goto :goto_0

    .line 2039
    :cond_2
    nop

    .line 2040
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    .line 2041
    invoke-direct {p0, v3, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2040
    const-string v3, "trans_quick_pay"

    invoke-static {v3, v1, v2, v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    .line 2042
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 2043
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    const/16 v1, 0x1319

    invoke-virtual {v0, p0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 2044
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogBankListFragment $ "

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 2047
    :cond_3
    return-void
.end method

.method public navigateToEmiListFragment(Z)V
    .locals 5
    .param p1, "showAllEmiBanksList"    # Z

    .line 2050
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2053
    if-eqz p1, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    goto :goto_0

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2059
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2061
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aQ:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2064
    nop

    .line 2065
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "trans_quick_pay"

    invoke-static {v4, v1, v2, v0, v3}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    .line 2068
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 2069
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    const/16 v1, 0x1319

    invoke-virtual {v0, p0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 2070
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogBankListFragment $ "

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 2074
    :cond_1
    return-void
.end method

.method public navigateToWalletListFragment()V
    .locals 4

    .line 2518
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2519
    nop

    .line 2520
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 2521
    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCashCardList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2520
    const-string v3, "trans_quick_pay"

    invoke-static {v3, v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aI:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    .line 2522
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 2523
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aI:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    const/16 v1, 0x1319

    invoke-virtual {v0, p0, v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 2524
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aI:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogBankListFragment $ "

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2526
    :cond_0
    return-void
.end method

.method public onAddCardClick()V
    .locals 5

    .line 2290
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    const-string v1, "clevertap"

    const-string v2, "AddCardButtonClicked"

    const-string v3, "SDK"

    const-string v4, "EventSource"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2294
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2297
    invoke-static {}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->newInstance()Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    move-result-object v0

    .line 2298
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setConvenienceFee(D)V

    .line 2299
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V

    .line 2300
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

    .line 2303
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x6

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 2305
    goto :goto_0

    .line 2307
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2308
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    .line 2313
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 594
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 595
    instance-of v0, p1, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 596
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 602
    instance-of v0, p1, Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    if-eqz v0, :cond_0

    .line 603
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->as:Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    .line 607
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement ILogoutListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBankSelected(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 6
    .param p1, "bankCID"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 1946
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/payumoney/core/utils/SdkHelper;->isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1947
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1948
    nop

    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1949
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1948
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1954
    :cond_1
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1956
    :cond_2
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 1957
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1958
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeNB(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 1959
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 1960
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1963
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1964
    const-string v2, "EventSource"

    const-string v3, "SDK"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bank"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NBUnreachable"

    const-string v4, "clevertap"

    invoke-static {v2, v3, v0, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 1969
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1970
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_1

    .line 1972
    :cond_4
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 1974
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 1975
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1978
    :goto_2
    return-void
.end method

.method public onCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1732
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Canceled"

    .line 1737
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1739
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1740
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1741
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1742
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1743
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1754
    :cond_0
    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1755
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1756
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "txnid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1759
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1760
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 1761
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1762
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aO:Z

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payumoney/sdkui/R$id;->tv_show_wallet_details:I

    const-string v3, "Checkout"

    const-string v4, "page"

    const-string v5, "clevertap"

    const-string v6, "SDK"

    const-string v7, "EventSource"

    if-ne v1, v2, :cond_1

    .line 621
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HideWalletDetailsClicked"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 627
    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 630
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ShowWalletDetailsClicked"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->toggle()V

    goto/16 :goto_e

    .line 636
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payumoney/sdkui/R$id;->layout_wallet_view_user_balance_header:I

    if-ne v1, v2, :cond_2

    .line 637
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aq:Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->toggle()V

    goto/16 :goto_e

    .line 638
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payumoney/sdkui/R$id;->button_login:I

    if-ne v1, v2, :cond_4

    .line 640
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showLogoutDialog()V

    goto/16 :goto_e

    .line 643
    :cond_3
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->am:I

    const-string v3, "login_dialog"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/payumoney/core/PayUmoneySDK;->launchLoginScreen(Lcom/payumoney/core/listener/OnUserLoginListener;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    goto/16 :goto_e

    .line 645
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay:I

    const/4 v8, 0x6

    if-ne v1, v2, :cond_1f

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Y:J

    sub-long/2addr v1, v9

    const-wide/16 v9, 0x3e8

    cmp-long v11, v1, v9

    if-gez v11, :cond_5

    .line 649
    return-void

    .line 651
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Y:J

    .line 654
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 655
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PayNowButtonClicked"

    invoke-static {v2, v3, v1, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 661
    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 662
    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    if-nez v1, :cond_b

    .line 664
    invoke-static {}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->newInstance()Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setConvenienceFee(D)V

    .line 666
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V

    .line 667
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

    .line 669
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 672
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v1, v0, v8}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 675
    :cond_6
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 676
    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 677
    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 680
    :cond_9
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v1, v0, v8}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 682
    :cond_a
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$string;->toast_insufficient_balance_in_wallet:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 686
    :goto_1
    goto/16 :goto_3

    .line 689
    :cond_b
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v1, :cond_e

    .line 690
    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isCitiNetBankingSelected(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 692
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 693
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_3

    .line 696
    :cond_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->makeNetBankingPayment(Lcom/payumoney/core/entity/PaymentEntity;)V

    goto/16 :goto_3

    .line 699
    :cond_d
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->paymentFailAndShowErrorScreen()V

    goto/16 :goto_3

    .line 701
    :cond_e
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v1, :cond_10

    .line 702
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 703
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 706
    :cond_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->makeThirdPartyWalletPayment(Lcom/payumoney/core/entity/PaymentEntity;)V

    goto/16 :goto_3

    .line 708
    :cond_10
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v1, :cond_17

    .line 710
    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v1

    .line 712
    const-string v3, "SMAE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_13

    .line 715
    new-instance v2, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v2}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 716
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v3}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 719
    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 721
    :cond_11
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 722
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardtoken(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v3}, Lcom/payumoney/core/entity/CardDetail;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCardId(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardName(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v0, :cond_12

    .line 726
    invoke-virtual {v2, v1}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 728
    :cond_12
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v2, v1}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "CARD_PAYMENT_REQUEST_API_TAG"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 732
    goto/16 :goto_2

    .line 734
    :cond_13
    new-instance v3, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v3}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 735
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v5}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 736
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v5}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 737
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 738
    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 740
    :cond_14
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 741
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardtoken(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v5}, Lcom/payumoney/core/entity/CardDetail;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCardId(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardName(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v0, :cond_15

    .line 745
    invoke-virtual {v3, v1}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 747
    :cond_15
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v3, v1}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x0

    .line 750
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    if-eqz v1, :cond_16

    .line 751
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    .line 753
    :cond_16
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-static {v3, v1, v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->newInstance(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/entity/CardDetail;Lcom/payumoney/core/response/BinDetail;)Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    move-result-object v0

    .line 754
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setConvenienceFee(D)V

    .line 755
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setmListener(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;)V

    .line 756
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/16 v2, 0xb

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 758
    :goto_2
    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 759
    :cond_18
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_3

    .line 760
    :cond_19
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 761
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->f()V

    goto :goto_3

    .line 762
    :cond_1a
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 763
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 764
    :cond_1b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 765
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 766
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 767
    new-instance v2, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v2}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 768
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 769
    const-string v0, "wallet"

    invoke-virtual {v2, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 771
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "WALLET_PAYMENT_REQUEST_API_TAG"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 772
    goto :goto_3

    .line 773
    :cond_1c
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showNoNetworkError()V

    goto :goto_3

    .line 776
    :cond_1d
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$string;->toast_insufficient_balance_in_wallet:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 780
    :cond_1e
    :goto_3
    goto/16 :goto_e

    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->layout_cardView_header:I

    if-eq v0, v1, :cond_3a

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->saved_card_option_enable:I

    if-eq v0, v1, :cond_3a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->header_credit_debit_section:I

    if-ne v0, v1, :cond_20

    goto/16 :goto_c

    .line 792
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->layout_netBankView_header:I

    if-eq v0, v1, :cond_35

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->saved_bank_option_enable:I

    if-eq v0, v1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->header_net_banking_section:I

    if-ne v0, v1, :cond_21

    goto/16 :goto_a

    .line 804
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->layout_emi_header:I

    if-eq v0, v1, :cond_30

    .line 805
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->emi_option_enable:I

    if-eq v0, v1, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->header_emi_section:I

    if-ne v0, v1, :cond_22

    goto/16 :goto_8

    .line 816
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->layout_third_party_wallets_header:I

    if-eq v0, v1, :cond_2b

    .line 817
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->saved_third_party_wallets_option_enable:I

    if-eq v0, v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->header_third_party_wallets_section:I

    if-ne v0, v1, :cond_23

    goto/16 :goto_6

    .line 828
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->layout_upi_header:I

    if-eq v0, v1, :cond_26

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->upi_option_enable:I

    if-eq v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->header_upi_section:I

    if-ne v0, v1, :cond_24

    goto :goto_4

    .line 840
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_new_card:I

    if-ne v0, v1, :cond_3f

    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 844
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AddCardButtonClicked"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 849
    invoke-static {}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->newInstance()Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    move-result-object v0

    .line 850
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setConvenienceFee(D)V

    .line 851
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V

    .line 852
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

    .line 855
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v1, v0, v8}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 857
    goto/16 :goto_e

    .line 858
    :cond_25
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_e

    .line 830
    :cond_26
    :goto_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 831
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    goto :goto_5

    .line 832
    :cond_27
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 833
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    goto :goto_5

    .line 834
    :cond_28
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 835
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    goto :goto_5

    .line 836
    :cond_29
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 837
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    .line 839
    :cond_2a
    :goto_5
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    goto/16 :goto_e

    .line 818
    :cond_2b
    :goto_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 819
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    goto :goto_7

    .line 820
    :cond_2c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 821
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    goto :goto_7

    .line 822
    :cond_2d
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 823
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    goto :goto_7

    .line 824
    :cond_2e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 825
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    .line 827
    :cond_2f
    :goto_7
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    goto/16 :goto_e

    .line 806
    :cond_30
    :goto_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 807
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    goto :goto_9

    .line 808
    :cond_31
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 809
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    goto :goto_9

    .line 810
    :cond_32
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 811
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    goto :goto_9

    .line 812
    :cond_33
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 813
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    .line 815
    :cond_34
    :goto_9
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    goto :goto_e

    .line 794
    :cond_35
    :goto_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 795
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    goto :goto_b

    .line 796
    :cond_36
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 797
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    goto :goto_b

    .line 798
    :cond_37
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 799
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    goto :goto_b

    .line 800
    :cond_38
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 801
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    .line 803
    :cond_39
    :goto_b
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    goto :goto_e

    .line 782
    :cond_3a
    :goto_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 783
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h()V

    goto :goto_d

    .line 784
    :cond_3b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 785
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i()V

    goto :goto_d

    .line 786
    :cond_3c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 787
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->k()V

    goto :goto_d

    .line 788
    :cond_3d
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 789
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l()V

    .line 791
    :cond_3e
    :goto_d
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j()V

    .line 861
    :cond_3f
    :goto_e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 242
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paymentOption"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/PaymentOptionDetails;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 246
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "binDetailsMap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 247
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->am:I

    .line 249
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 255
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_pay_umoney:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getNetBankingList()Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    .line 260
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->az:Ljava/util/ArrayList;

    .line 261
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getNetBankingStatusList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    goto :goto_0

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isUPIPaymentOptionAvailable(Lcom/payumoney/core/response/PaymentOptionDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q:Z

    goto :goto_1

    .line 270
    :cond_1
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q:Z

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCashCardList()Ljava/util/ArrayList;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 275
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o:Z

    .line 276
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    goto :goto_2

    .line 278
    :cond_2
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o:Z

    .line 281
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getEmiList()Ljava/util/ArrayList;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 283
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    .line 284
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    goto :goto_3

    .line 286
    :cond_3
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    .line 289
    :goto_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->initUI(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setAmount(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h:Landroid/widget/TextView;

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;

    invoke-direct {v3, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    sget v3, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 320
    sget v3, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    invoke-virtual {p0, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setClickable(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 324
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isWalletAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getDebitCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 328
    :cond_5
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    .line 330
    :cond_6
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_b

    .line 331
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n()V

    .line 332
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y()V

    .line 333
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 334
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 335
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    const-string v3, "EventSource"

    const-string v4, "SDK"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "No. of Cards displayed"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "SavedCardDisplayed"

    const-string v5, "clevertap"

    invoke-static {v3, v4, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    .line 344
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setSaveCardUI()V

    .line 345
    goto :goto_4

    .line 346
    :cond_7
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g()V

    .line 348
    :goto_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    sget v3, Lcom/payumoney/sdkui/R$id;->header_credit_debit_section:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 349
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->av:Z

    .line 350
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getDebitCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aw:Z

    .line 351
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    :cond_a
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x()V

    .line 373
    :cond_b
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    if-eqz v0, :cond_c

    .line 374
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    :cond_c
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o:Z

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    :cond_d
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_e

    .line 381
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 383
    :cond_e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    :goto_7
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q:Z

    if-eqz v0, :cond_f

    .line 388
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 390
    :cond_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    :goto_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getWalletDetails()Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_12

    .line 395
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getWalletDetails()Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    .line 396
    invoke-virtual {v0}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_10

    .line 397
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_9

    .line 399
    :cond_10
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 401
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 402
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 405
    :cond_11
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 408
    :goto_9
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p()V

    .line 409
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->e()V

    .line 410
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    .line 413
    :cond_12
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_14

    .line 415
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getWalletDetails()Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    if-nez v0, :cond_13

    .line 416
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 421
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$string;->please_login_to_use_your_wallet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    .line 425
    :cond_14
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    :goto_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_16

    .line 440
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 443
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    if-nez v0, :cond_16

    .line 446
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_b

    .line 451
    :cond_15
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 457
    :cond_16
    :goto_b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->initListener()V

    .line 459
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_19

    .line 460
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    if-eqz v0, :cond_18

    .line 461
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 462
    :cond_17
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a()V

    goto/16 :goto_c

    .line 465
    :cond_18
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a()V

    goto/16 :goto_c

    .line 467
    :cond_19
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m:Z

    if-eqz v0, :cond_1c

    .line 468
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    if-eqz v0, :cond_1b

    .line 469
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 470
    :cond_1a
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b()V

    goto :goto_c

    .line 473
    :cond_1b
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b()V

    goto :goto_c

    .line 475
    :cond_1c
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o:Z

    if-eqz v0, :cond_1f

    .line 476
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    if-eqz v0, :cond_1e

    .line 477
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 478
    :cond_1d
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c()V

    goto :goto_c

    .line 481
    :cond_1e
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c()V

    goto :goto_c

    .line 483
    :cond_1f
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p:Z

    if-eqz v0, :cond_22

    .line 484
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Z:Lcom/payumoney/core/entity/Wallet;

    if-eqz v0, :cond_21

    .line 485
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 486
    :cond_20
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->d()V

    goto :goto_c

    .line 489
    :cond_21
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->d()V

    .line 493
    :cond_22
    :goto_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 611
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 613
    return-void
.end method

.method public onDismissLoginDialog()V
    .locals 0

    .line 1635
    return-void
.end method

.method public onEmiBankSelected(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 3
    .param p1, "emiBankEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2000
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2001
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2002
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2003
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    .line 2004
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2005
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeEmi(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 2006
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 2009
    goto :goto_1

    .line 2000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2012
    :cond_1
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1640
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    const-string v0, "fetch_multiple_api_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o()V

    .line 1645
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1646
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1650
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1651
    const-string v0, "PAYMENT_REQUEST_API"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 1654
    :cond_2
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1700
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Failed"

    .line 1702
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1704
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1705
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1706
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1707
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1709
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1710
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1719
    :cond_0
    goto :goto_0

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1720
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1721
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "txnid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1724
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1725
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 1726
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1727
    :cond_1
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1670
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1671
    const-string v0, "PAYMENT_REQUEST_API"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1673
    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "txnid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1676
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    const-string v3, "Transaction Failure"

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1677
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    goto :goto_0

    .line 1678
    :cond_0
    const-string v0, "validate_wallet_for_nitro_flow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

    if-eqz v0, :cond_1

    .line 1680
    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payumoney/core/listener/OnLoginErrorListener;->onLoginFailed(Ljava/lang/String;)V

    nop

    .line 1684
    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V
    .locals 7
    .param p1, "entity"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1768
    const-string v0, "net_banking_list_dialog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1769
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aH:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->dismissAllowingStateLoss()V

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/payumoney/core/utils/SdkHelper;->isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1777
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1778
    const-string v4, "EventSource"

    const-string v5, "SDK"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bank"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "NBUnreachable"

    const-string v6, "clevertap"

    invoke-static {v4, v5, v0, v6}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    sput-object p1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1789
    invoke-static {}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->newInstance()Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    move-result-object v0

    .line 1790
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setConvenienceFee(D)V

    .line 1791
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V

    .line 1792
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aJ:Lcom/payumoney/core/listener/OnLoginErrorListener;

    .line 1795
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x6

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 1797
    goto/16 :goto_2

    .line 1799
    :cond_2
    invoke-static {p1}, Lcom/payumoney/core/utils/SdkHelper;->isCitiNetBankingSelected(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1800
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_3

    .line 1801
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_2

    .line 1803
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$string;->payu_citi_netbank_error:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1807
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/List;)V

    .line 1809
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/payumoney/core/utils/SdkHelper;->isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1810
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1812
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 1813
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1814
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeNB(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 1815
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1817
    :cond_5
    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1818
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 1819
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 1820
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1825
    :cond_6
    const-string v0, "emi_banking_list_dialog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1826
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1827
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1828
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeEmi(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 1830
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aD:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/List;)V

    .line 1831
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto :goto_2

    .line 1833
    :cond_7
    const-string v0, "wallet_list_dialog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1837
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aI:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    if-eqz v0, :cond_8

    .line 1838
    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->dismissAllowingStateLoss()V

    .line 1840
    :cond_8
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    .line 1841
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1842
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeThirdPartyWallets(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 1846
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/WalletsCID;->isWalletCIDAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1847
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/utils/WalletsCID;->getWalletCIDByBankCode(Ljava/lang/String;)Lcom/payumoney/core/utils/WalletsCID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/WalletsCID;->getCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    goto :goto_1

    .line 1849
    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/PaymentEntity;->setCidCode(Ljava/lang/String;)V

    .line 1851
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1853
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1854
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->al:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->setmSelectedItem(I)V

    .line 1855
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->al:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->notifyDataSetChanged()V

    .line 1856
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 1858
    :cond_a
    :goto_2
    return-void
.end method

.method public onMoreWalletsSelected()V
    .locals 4

    .line 2510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2511
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "More3PWallets"

    const/4 v2, 0x0

    const-string v3, "clevertap"

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->navigateToWalletListFragment()V

    .line 2515
    return-void
.end method

.method public onMultipleCardBinDetailsReceived(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2367
    .local p1, "binDetailresponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payumoney/core/response/BinDetail;>;"
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2369
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    .line 2372
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o()V

    .line 2374
    :cond_0
    return-void
.end method

.method public onSavedCardClick(II)V
    .locals 8
    .param p1, "itemSelectedPosition"    # I
    .param p2, "itemSelectedOldPosition"    # I

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUMF.onSavedCardClick(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUMF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2171
    add-int/lit8 v0, p1, -0x1

    .line 2172
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    if-eqz v1, :cond_8

    .line 2173
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 2174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2175
    if-eqz v1, :cond_0

    .line 2176
    sget v2, Lcom/payumoney/sdkui/R$id;->highlight_view_saved_card:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2177
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2183
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2185
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    .line 2186
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/CardDetail;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    .line 2188
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2191
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-direct {p0, v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v5

    .line 2193
    const-string v6, "dc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2194
    const/4 v5, 0x0

    goto :goto_0

    .line 2196
    :cond_1
    const/4 v5, 0x1

    .line 2199
    :goto_0
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2200
    if-nez v5, :cond_2

    .line 2201
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v6

    invoke-static {v6, v0, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_1

    .line 2204
    :cond_2
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v6

    invoke-static {v6, v0, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_1

    .line 2208
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2209
    if-nez v5, :cond_4

    .line 2210
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v7}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v7

    invoke-static {v7, v0, v4, v3}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_1

    .line 2213
    :cond_4
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v7}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v7

    invoke-static {v7, v0, v4, v3}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2219
    :cond_5
    :goto_1
    goto :goto_2

    .line 2221
    :cond_6
    iput-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    .line 2222
    iput-boolean v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    .line 2223
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2224
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_2

    .line 2226
    :cond_7
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2229
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 2230
    if-eqz v1, :cond_8

    .line 2231
    sget v0, Lcom/payumoney/sdkui/R$id;->highlight_view_saved_card:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2232
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2237
    :cond_8
    return-void
.end method

.method public onStaticWalletSelected(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 4
    .param p1, "walletsCID"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2495
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 2496
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2497
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2498
    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    .line 2499
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2500
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeThirdPartyWallets(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 2502
    goto :goto_1

    .line 2504
    :cond_0
    goto :goto_0

    .line 2505
    :cond_1
    :goto_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 2378
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1689
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1690
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "txnid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Transaction Successful"

    invoke-direct {v0, v1, v3, v2}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1693
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1694
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1695
    return-void
.end method

.method public onSuccessfulLogin(Lcom/payumoney/core/response/PayUMoneyLoginResponse;Ljava/lang/String;)V
    .locals 12
    .param p1, "loginResponse"    # Lcom/payumoney/core/response/PayUMoneyLoginResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1503
    const-string v0, "login_dialog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$string;->payumoney_logout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "Successful Login"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1510
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER_ACCOUNT_DETAILS_API_TAG"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->getUserAccount(Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1511
    :cond_1
    const-string v0, "validate_wallet_for_nitro_flow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1514
    sget-object v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    const/4 v3, 0x6

    if-eqz v0, :cond_4

    .line 1516
    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isCitiNetBankingSelected(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1517
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a:Z

    if-eqz v0, :cond_2

    .line 1518
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_1

    .line 1520
    :cond_2
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$string;->payu_citi_netbank_error:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1523
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1524
    sget-object v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFeeNB(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 1528
    sget-object v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aC:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/List;)V

    .line 1540
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 1543
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1545
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->popBackStackTillTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1548
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    if-eqz v0, :cond_7

    .line 1549
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1550
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isCitiNetBankingSelected(Lcom/payumoney/core/entity/PaymentEntity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1551
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ax:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1552
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto/16 :goto_1

    .line 1555
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->makeNetBankingPayment(Lcom/payumoney/core/entity/PaymentEntity;)V

    goto/16 :goto_1

    .line 1558
    :cond_6
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->paymentFailAndShowErrorScreen()V

    goto/16 :goto_1

    .line 1560
    :cond_7
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 1563
    :cond_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v0, :cond_f

    .line 1564
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v0

    .line 1566
    const-string v4, "SMAE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_b

    .line 1569
    new-instance v8, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v8}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 1570
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 1571
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 1572
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1573
    invoke-virtual {v8, v1}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 1575
    :cond_9
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 1576
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCardtoken(Ljava/lang/String;)V

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/CardDetail;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCardId(Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCardName(Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v1, :cond_a

    .line 1580
    invoke-virtual {v8, v0}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 1582
    :cond_a
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v8, v0}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 1584
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    const-string v11, "CARD_PAYMENT_REQUEST_API_TAG"

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 1586
    goto/16 :goto_0

    .line 1588
    :cond_b
    new-instance v4, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v4}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 1589
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 1590
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v6}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 1591
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1592
    invoke-virtual {v4, v1}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 1594
    :cond_c
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 1595
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCardtoken(Ljava/lang/String;)V

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v6}, Lcom/payumoney/core/entity/CardDetail;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCardId(Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCardName(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    if-eqz v1, :cond_d

    .line 1599
    invoke-virtual {v4, v0}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 1601
    :cond_d
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v4, v0}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 1604
    const/4 v0, 0x0

    .line 1605
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    if-eqz v1, :cond_e

    .line 1606
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    .line 1608
    :cond_e
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->af:Lcom/payumoney/core/entity/CardDetail;

    invoke-static {v4, v1, v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->newInstance(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/entity/CardDetail;Lcom/payumoney/core/response/BinDetail;)Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    move-result-object v0

    .line 1609
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setConvenienceFee(D)V

    .line 1610
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setmListener(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;)V

    .line 1611
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/16 v2, 0xb

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 1613
    :goto_0
    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 1614
    :cond_10
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->addNewCard()V

    goto :goto_1

    .line 1615
    :cond_11
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1616
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1617
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1618
    new-instance v3, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v3}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    .line 1619
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 1620
    const-string v0, "wallet"

    invoke-virtual {v3, v0}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getConvenieneceFee()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 1622
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "WALLET_PAYMENT_REQUEST_API_TAG"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 1623
    goto :goto_1

    .line 1624
    :cond_12
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showNoNetworkError()V

    goto :goto_1

    .line 1627
    :cond_13
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payumoney/sdkui/R$string;->toast_insufficient_balance_in_wallet:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1631
    :cond_14
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1902
    invoke-super {p0, p1, p2}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1903
    return-void
.end method

.method public onViewMoreBanksClick()V
    .locals 4

    .line 1992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1993
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MoreNBBanksClicked"

    const/4 v2, 0x0

    const-string v3, "clevertap"

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->navigateToBankListFragment()V

    .line 1996
    return-void
.end method

.method public onViewMoreEmiBanksClicked()V
    .locals 4

    .line 2017
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2018
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MoreEMIBanksClicked"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->navigateToEmiListFragment(Z)V

    .line 2023
    return-void
.end method

.method public paymentFailAndShowErrorScreen()V
    .locals 5

    .line 2998
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netbanking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "txnid"

    const-string v2, "The merchant does not support "

    if-nez v0, :cond_0

    .line 2999
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 3000
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Netbanking"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3002
    :cond_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t:Lcom/payumoney/core/entity/PaymentEntity;

    .line 3003
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 3009
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    const-string v3, "Transaction Failure"

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 3010
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 3011
    return-void
.end method

.method public setPaymentButtonDisable()V
    .locals 2

    .line 3036
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 3037
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3038
    return-void
.end method

.method public setPaymentButtonEnable()V
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 3032
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aN:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3033
    return-void
.end method

.method public setSaveCardUI()V
    .locals 4

    .line 1282
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ae:Ljava/util/List;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->aK:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;)V

    .line 1283
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->setItemSelectedCurrentPosition(I)V

    .line 1284
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-virtual {v2, v0}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1285
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$9;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$9;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1313
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 1314
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ac:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 1316
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ab:Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator;->setVisibility(I)V

    .line 1317
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1318
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ad:Z

    .line 1319
    return-void
.end method

.method public showLogoutDialog()V
    .locals 3

    .line 929
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 930
    const-string v1, "Do you want to logout"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 931
    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$7;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$7;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 956
    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 964
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 966
    return-void
.end method

.method public showNoNetworkError()V
    .locals 3

    .line 3025
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3026
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 3028
    :cond_0
    return-void
.end method

.method public updateConvenienceFeeEmi(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 4
    .param p1, "selectedPaymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2953
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2955
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 2956
    return-void
.end method

.method public updateConvenienceFeeNB(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 5
    .param p1, "selectedPaymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2940
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_0

    .line 2944
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2945
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2949
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 2950
    return-void
.end method

.method public updateConvenienceFeeThirdPartyWallets(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 4
    .param p1, "selectedPaymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 2959
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getThirdPartyWalletsConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2960
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->ao:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Z)V

    .line 2961
    return-void
.end method
