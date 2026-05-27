.class public Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payumoney/core/listener/OnCardBinDetailsReceived;
.implements Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;,
        Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;
    }
.end annotation


# static fields
.field public static final CARD_NUMBER_CVV:I = 0x6

.field public static final CARD_NUMBER_ET:I = 0x1

.field public static final CARD_NUMBER_ET_SNACK_BAR:I = 0x5

.field public static final CREDIT_CARD_LIST:Ljava/lang/String; = "credit_card_list"

.field public static final DEBIT_CARD_LIST:Ljava/lang/String; = "debit_card_list"

.field public static final SELECTED_MONTH_VAL:I = 0x3

.field public static final SELECTED_YEAR_VAL:I = 0x4


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:J

.field private F:J

.field private G:Lcom/payumoney/core/response/PaymentOptionDetails;

.field private H:Ljava/util/Calendar;

.field private I:Lcom/payumoney/core/request/PaymentRequest;

.field private J:D

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private Q:Ljava/lang/String;

.field private R:Landroidx/appcompat/widget/SwitchCompat;

.field private S:Z

.field private T:Landroid/widget/LinearLayout;

.field a:I

.field private m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

.field private n:Landroid/widget/EditText;

.field private o:Lcom/payumoney/core/widget/ExpiryDate;

.field private p:Landroid/widget/EditText;

.field private q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

.field private r:Landroid/graphics/drawable/BitmapDrawable;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/graphics/drawable/BitmapDrawable;

.field private u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 82
    const/16 v0, 0x17

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->z:Z

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->E:J

    .line 99
    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->F:J

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->H:Ljava/util/Calendar;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->S:Z

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v1, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    const-string v2, "CID000"

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 265
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    .line 578
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->z:Z

    .line 583
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b()V

    goto :goto_0

    .line 590
    :cond_0
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->z:Z

    if-eqz p1, :cond_1

    .line 591
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->z:Z

    .line 595
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b()V

    .line 601
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 268
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    .line 269
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 270
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$CardNumberTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 273
    sget v0, Lcom/payumoney/sdkui/R$id;->img_info_about_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 277
    sget v0, Lcom/payumoney/sdkui/R$id;->img_info_save_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    .line 278
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 281
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_bankname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->s:Landroid/widget/TextView;

    .line 282
    sget v0, Lcom/payumoney/sdkui/R$id;->add_bank_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    .line 283
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardExpiry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/widget/ExpiryDate;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    .line 284
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$5;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardCvv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    .line 307
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$6;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$6;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$7;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$7;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 373
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 375
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardType_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    .line 376
    sget v0, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 377
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_card_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->v:Landroid/widget/TextView;

    .line 378
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_expiry_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->w:Landroid/widget/TextView;

    .line 379
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_cvv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->x:Landroid/widget/TextView;

    .line 380
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v0, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {p1, v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setClickable(Z)V

    .line 383
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {p1, v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setClickable(Z)V

    .line 384
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 753
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 754
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 755
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$layout;->dialog_signle_button_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 757
    sget v2, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 758
    sget v3, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 759
    sget v4, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 761
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    sget p1, Lcom/payumoney/sdkui/R$string;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    new-instance p1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;

    invoke-direct {p1, p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-static {p1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->setCustomBackground(ILandroid/view/View;Landroid/content/Context;)V

    .line 775
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 776
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 777
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 778
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 516
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDuration(I)V

    .line 517
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setAnimated(Z)V

    .line 518
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationYEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationXEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationZEnabled(Z)V

    .line 521
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-nez v0, :cond_0

    .line 606
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->B:Z

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$8;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 619
    :cond_0
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->A:Z

    if-nez p1, :cond_1

    .line 621
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$9;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$9;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .line 1173
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    const-string v2, "IN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1175
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_bin_api_tag"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1181
    iput-boolean v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->K:Z

    .line 1182
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    .line 1183
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showConvenienceFeeOption()V

    .line 1184
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "amount"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->updateConvenienceFee(DD)V

    .line 1188
    :cond_1
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 1189
    iput-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1191
    :cond_2
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 1195
    :cond_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const-string v0, "AMEX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1196
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 1197
    :cond_4
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const-string v0, "SMAE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1198
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1200
    :cond_5
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1204
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/graphics/AssetsHelper;->getCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$12;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$12;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    goto :goto_1

    .line 1222
    :catch_0
    move-exception p1

    .line 1223
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1227
    :goto_1
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1229
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1231
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/payumoney/sdkui/R$string;->international_card_type_not_supported_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonDisable()V

    goto :goto_2

    .line 1238
    :cond_6
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonEnable()V

    .line 1240
    :cond_7
    :goto_2
    return-void

    .line 1192
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 525
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDuration(I)V

    .line 526
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setAnimated(Z)V

    .line 527
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationYEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationXEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationZEnabled(Z)V

    .line 530
    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->A:Z

    return p1
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 635
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->validateCardDetails(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->K:Z

    if-eqz v0, :cond_8

    .line 637
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v1}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    .line 640
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v1, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardNumber(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    invoke-virtual {v0, v3, v4}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 644
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCountryCode(Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/Utils;->checkIfLoggedInOrNitroLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCard(Z)V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCard(Z)V

    .line 657
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 659
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    .line 660
    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    .line 661
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 662
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-nez v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    goto :goto_2

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 668
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_4

    .line 669
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "2030"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    goto :goto_3

    .line 671
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    .line 674
    :goto_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 677
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    goto :goto_5

    .line 675
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 684
    :goto_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->I:Lcom/payumoney/core/request/PaymentRequest;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "add_card_api_tag"

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 686
    goto :goto_6

    .line 687
    :cond_7
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->paymentFailAndShowErrorScreen()V

    goto :goto_6

    .line 691
    :cond_8
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonDisable()V

    goto :goto_6

    .line 694
    :cond_9
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showNoNetworkError()V

    .line 696
    :goto_6
    return-void
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 738
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->S:Z

    if-eqz v0, :cond_0

    .line 740
    sget v0, Lcom/payumoney/sdkui/R$string;->we_are_unable_to_identify_the_exact_card_being_used:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    sget v0, Lcom/payumoney/sdkui/R$string;->you_are_attempting_to_use_a_card_issued_outside_india:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Ljava/lang/String;)V

    .line 745
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 781
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 782
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 783
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$layout;->dialog_signle_button_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 785
    sget v2, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 786
    sget v3, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 787
    sget v4, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 789
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    sget v2, Lcom/payumoney/sdkui/R$string;->msg_maestro_card_input_detail:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    sget v2, Lcom/payumoney/sdkui/R$string;->btn_ok:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$11;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$style;->AlertDialogAnimation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 803
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-static {v2, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->setCustomBackground(ILandroid/view/View;Landroid/content/Context;)V

    .line 804
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 805
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 806
    return-void
.end method

.method static synthetic g(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1249
    const-string v1, "AMEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1250
    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1251
    const-string v1, "MAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1252
    const-string v1, "MASTER_CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    const/4 v0, 0x1

    return v0

    .line 1255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 6

    .line 1260
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->M:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "cc"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1263
    const-string v4, "dc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1264
    :cond_2
    return v2

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1268
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->M:Ljava/util/ArrayList;

    goto :goto_0

    .line 1270
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->N:Ljava/util/ArrayList;

    .line 1273
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1274
    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1275
    return v1

    .line 1276
    :cond_5
    goto :goto_1

    .line 1277
    :cond_6
    nop

    .line 1278
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const-string v4, "DINR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const-string v4, "AMEX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1279
    sget-object v3, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    goto :goto_2

    .line 1281
    :cond_7
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1283
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1284
    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1285
    return v1

    .line 1286
    :cond_8
    goto :goto_3

    .line 1287
    :cond_9
    return v2

    .line 1261
    :cond_a
    :goto_4
    return v1
.end method

.method static synthetic h(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic j(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d()V

    return-void
.end method

.method static synthetic k(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic m(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic n(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/payumoney/core/response/PaymentOptionDetails;)Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;
    .locals 3
    .param p0, "creditCardList"    # Ljava/util/ArrayList;
    .param p1, "debitCardList"    # Ljava/util/ArrayList;
    .param p2, "isSplitPay"    # Z
    .param p3, "paymentOptionDetails"    # Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 122
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v2, "is_split_pay"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string v2, "credit_card_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    const-string v2, "debit_card_list"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 127
    const-string v2, "paymentDetailsObject"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    return-object v0
.end method

.method static synthetic o(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->c()V

    return-void
.end method

.method static synthetic q(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Lcom/payumoney/core/widget/ExpiryDate;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    return-object p0
.end method

.method static synthetic r(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->H:Ljava/util/Calendar;

    return-object p0
.end method


# virtual methods
.method public getCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cardType"    # Ljava/lang/String;

    .line 1327
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    const-string v0, "Credit Cards"

    return-object v0

    .line 1330
    :cond_0
    const-string v0, "Debit Cards"

    return-object v0
.end method

.method public getIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "issuer"    # Ljava/lang/String;

    .line 1301
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "VISA"

    const-string v3, "AMEX"

    const-string v4, "JCB"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "DINERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "LASER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "SMAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "RPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "MAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "MASTER_CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1323
    const-string v0, ""

    return-object v0

    .line 1319
    :pswitch_0
    const-string v0, "State Bank Maestro"

    return-object v0

    .line 1317
    :pswitch_1
    return-object v4

    .line 1315
    :pswitch_2
    const-string v0, "Diners"

    return-object v0

    .line 1313
    :pswitch_3
    return-object v3

    .line 1311
    :pswitch_4
    const-string v0, "Maestro"

    return-object v0

    .line 1309
    :pswitch_5
    const-string v0, "Laser"

    return-object v0

    .line 1307
    :pswitch_6
    const-string v0, "Rupay"

    return-object v0

    .line 1305
    :pswitch_7
    return-object v2

    .line 1303
    :pswitch_8
    const-string v0, "Master"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35284533 -> :sswitch_8
        0x11e29 -> :sswitch_7
        0x1eb5df -> :sswitch_6
        0x23fd42 -> :sswitch_5
        0x267af6 -> :sswitch_4
        0x26e3fe -> :sswitch_3
        0x283441 -> :sswitch_2
        0x44dc6ab -> :sswitch_1
        0x7832c03d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideConvinienceFeeForCard()V
    .locals 4

    .line 1336
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->updateConvenienceFee(DD)V

    goto :goto_0

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->hideConvenienceFeeOption()V

    .line 1341
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setDisplayAmount(D)V

    .line 1343
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 1

    .line 914
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->dismissProgressDialog()V

    .line 917
    :cond_0
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1051
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1053
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 535
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 537
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    nop

    .line 542
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement FragmentCallbacks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 971
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Canceled"

    .line 976
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 978
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 979
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 980
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 981
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 993
    :cond_0
    goto :goto_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 994
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 995
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

    .line 996
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 998
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 999
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 1000
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1001
    :cond_1
    return-void
.end method

.method public onCardBinDetailReceived(Lcom/payumoney/core/response/BinDetail;Ljava/lang/String;)V
    .locals 4
    .param p1, "binDetailresponse"    # Lcom/payumoney/core/response/BinDetail;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1138
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1139
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    .line 1140
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->S:Z

    .line 1144
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1146
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1147
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    .line 1152
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    .line 1151
    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    .line 1155
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    .line 1154
    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    .line 1158
    :goto_0
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 701
    sget v1, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay:I

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_1

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 704
    const-string v1, "EventSource"

    const-string v4, "SDK"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v1, "page"

    const-string v4, "AddCard"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "PayNowButtonClicked"

    const-string v5, "clevertap"

    invoke-static {v1, v4, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->E:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 709
    return-void

    .line 711
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->E:J

    .line 712
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/app/Activity;)V

    .line 713
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->d()V

    .line 714
    goto :goto_0

    :cond_1
    sget v1, Lcom/payumoney/sdkui/R$id;->img_info_about_card:I

    if-ne v0, v1, :cond_3

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->F:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 717
    return-void

    .line 719
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->F:J

    .line 720
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->f()V

    goto :goto_0

    .line 721
    :cond_3
    sget v1, Lcom/payumoney/sdkui/R$id;->img_info_save_card:I

    if-ne v0, v1, :cond_5

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->F:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 724
    return-void

    .line 726
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->F:J

    .line 728
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->e()V

    .line 730
    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_split_pay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    .line 137
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "credit_card_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->M:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "debit_card_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->N:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paymentDetailsObject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/PaymentOptionDetails;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 141
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_add_card_fragment_new:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    sget v2, Lcom/payumoney/sdkui/R$id;->ll_switch_compat:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->T:Landroid/widget/LinearLayout;

    .line 152
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/Utils;->checkIfLoggedInOrNitroLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->T:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    :cond_1
    :goto_0
    sget v1, Lcom/payumoney/sdkui/R$id;->switch_save_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    .line 159
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 163
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

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setAmount(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$2;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->hideConvinienceFeeForCard()V

    .line 222
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v1

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$3;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;)V

    const-string v3, "DEFAULT"

    invoke-virtual {v1, v3, v2}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 239
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a()V

    .line 240
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 546
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 548
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    const-string v0, "add_card_api_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 1008
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_1

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_bin_api_tag"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    .line 1013
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1019
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1022
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1025
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->S:Z

    .line 1028
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1031
    const-string v0, "IN"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1033
    const-string v0, "CC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    goto :goto_0

    .line 1037
    :cond_2
    const-string v0, "DC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1038
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    .line 1042
    :goto_0
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Ljava/lang/String;)V

    .line 1046
    :cond_3
    :goto_1
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 939
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Failed"

    .line 941
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 943
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 945
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 946
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 958
    :cond_0
    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 960
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

    .line 961
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 963
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 965
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 966
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 967
    :cond_1
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1057
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1058
    const-string v0, "add_card_api_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1059
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1060
    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "txnid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1063
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v3, Lcom/payumoney/core/response/PayumoneyError;

    const-string v4, "Transaction Failure"

    invoke-direct {v3, v4}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1064
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1065
    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_bin_api_tag"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    .line 1066
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->C:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1072
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->R:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1075
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->S:Z

    .line 1081
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    .line 1084
    const-string v3, "IN"

    iput-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    .line 1088
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    const-string v3, "SMAE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    goto :goto_0

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getCreditCardList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1091
    const/4 v2, 0x1

    goto :goto_0

    .line 1093
    :cond_2
    nop

    .line 1096
    :goto_0
    if-eqz v2, :cond_3

    .line 1097
    const-string v0, "CC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    goto :goto_1

    .line 1101
    :cond_3
    const-string v0, "DC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->G:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->y:Z

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->J:D

    .line 1106
    :goto_1
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Ljava/lang/String;)V

    .line 1108
    :cond_4
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 904
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onPause()V

    .line 905
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 552
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onResume()V

    .line 554
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1163
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 928
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 929
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

    .line 930
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 932
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 933
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 934
    return-void
.end method

.method public paymentFailAndShowErrorScreen()V
    .locals 5

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The merchant does not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->L:Ljava/lang/String;

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->O:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1292
    new-instance v1, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v2, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1293
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

    invoke-direct {v1, v2, v0, v3}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v1, v2}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1296
    new-instance v2, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v3, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v3, v0}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1297
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1298
    return-void
.end method

.method public resetBankToDefault()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->s:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->B:Z

    .line 571
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->b(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :cond_0
    return-void
.end method

.method public setPaymentButtonDisable()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 1352
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1354
    return-void
.end method

.method public setPaymentButtonEnable()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 1347
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->P:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1348
    return-void
.end method

.method public showErrorToEditText(Lcom/payumoney/core/response/PayumoneyError;)V
    .locals 4
    .param p1, "error"    # Lcom/payumoney/core/response/PayumoneyError;

    .line 887
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 888
    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid card number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 890
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "invalid expiry date"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 893
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid cvv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 899
    :cond_3
    :goto_0
    return-void
.end method

.method public showNoNetworkError()V
    .locals 3

    .line 920
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 923
    :cond_0
    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1, "msgString"    # I

    .line 908
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->showProgressDialog(ZLjava/lang/String;)V

    .line 911
    :cond_0
    return-void
.end method

.method public showValidationError(II)V
    .locals 3
    .param p1, "error_message"    # I
    .param p2, "errorView"    # I

    .line 857
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->setPaymentButtonDisable()V

    .line 859
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 868
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 869
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    goto :goto_0

    .line 875
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 876
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    goto :goto_0

    .line 862
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 863
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    nop

    .line 883
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public validateCardDetails(Ljava/lang/String;)Z
    .locals 9
    .param p1, "issuer"    # Ljava/lang/String;

    .line 809
    if-nez p1, :cond_0

    .line 810
    const-string p1, ""

    .line 812
    :cond_0
    nop

    .line 813
    nop

    .line 814
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 819
    :cond_1
    const/4 v2, -0x1

    :goto_0
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v4}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v4}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 820
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v3}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 824
    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v0, :cond_c

    .line 825
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 826
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    .line 829
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-lt v6, v7, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x13

    if-le v6, v7, :cond_4

    goto :goto_1

    .line 832
    :cond_4
    invoke-static {v0, p1}, Lcom/payumoney/core/utils/SdkHelper;->validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 833
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 834
    return v5

    .line 837
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->H:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v6, 0x4

    const-string v7, "SMAE"

    if-lt v3, v0, :cond_6

    sub-int/2addr v2, v4

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->H:Ljava/util/Calendar;

    const/4 v8, 0x2

    .line 838
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->H:Ljava/util/Calendar;

    .line 839
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v0, :cond_7

    :cond_6
    nop

    .line 840
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 841
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, v0, v6}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 842
    return v5

    .line 843
    :cond_7
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_9

    .line 844
    :cond_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 845
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, v0, v6}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 846
    return v5

    .line 847
    :cond_9
    invoke-static {v1, p1}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 848
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 849
    return v5

    .line 851
    :cond_a
    return v4

    .line 830
    :cond_b
    :goto_1
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 831
    return v5

    .line 827
    :cond_c
    :goto_2
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->showValidationError(II)V

    .line 828
    return v5
.end method
