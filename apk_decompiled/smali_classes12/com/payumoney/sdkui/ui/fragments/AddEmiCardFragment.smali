.class public Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payumoney/core/listener/OnCardBinDetailsReceived;
.implements Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;,
        Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;,
        Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardFieldTextWatcher;
    }
.end annotation


# static fields
.field public static final ARG_CONVENIENCE_FEE:Ljava/lang/String; = "conv_fee"

.field public static final ARG_EMI_SELECTED_BANK:Ljava/lang/String; = "emi_bank"

.field public static final ARG_EMI_SELECTED_TENURE:Ljava/lang/String; = "emi_tenure"

.field public static final ARG_PAYMENT_ID:Ljava/lang/String; = "payment_id"

.field public static final CARD_NUMBER_CVV:I = 0x6

.field public static final CARD_NUMBER_ET:I = 0x1

.field public static final CARD_NUMBER_ET_SNACK_BAR:I = 0x5

.field public static final SELECTED_MONTH_VAL:I = 0x3

.field public static final SELECTED_YEAR_VAL:I = 0x4


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:J

.field private F:J

.field private G:Ljava/util/Calendar;

.field private H:Lcom/payumoney/core/request/PaymentRequest;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private N:Ljava/lang/String;

.field private O:Landroidx/appcompat/widget/SwitchCompat;

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Lcom/payumoney/core/entity/PaymentEntity;

.field private S:Lcom/payumoney/core/entity/EmiTenure;

.field private T:D

.field private U:Landroid/widget/LinearLayout;

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

    .line 125
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 88
    const/16 v0, 0x17

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->z:Z

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->E:J

    .line 105
    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->F:J

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->L:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$3;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 267
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->z:Z

    .line 638
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c()V

    goto :goto_0

    .line 642
    :cond_0
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->z:Z

    if-eqz p1, :cond_1

    .line 643
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->z:Z

    .line 644
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c()V

    .line 648
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 312
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    .line 313
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 314
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$CardNumberTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    sget v0, Lcom/payumoney/sdkui/R$id;->img_info_about_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    .line 318
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 321
    sget v0, Lcom/payumoney/sdkui/R$id;->img_info_save_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    .line 322
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 325
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_bankname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->s:Landroid/widget/TextView;

    .line 326
    sget v0, Lcom/payumoney/sdkui/R$id;->add_bank_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    .line 327
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardExpiry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/widget/ExpiryDate;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    .line 328
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$6;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$6;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 349
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 351
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardCvv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    .line 352
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$7;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$7;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 394
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 419
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 421
    sget v0, Lcom/payumoney/sdkui/R$id;->add_card_cardType_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    .line 422
    sget v0, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay_emi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 423
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_card_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->v:Landroid/widget/TextView;

    .line 424
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_expiry_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->w:Landroid/widget/TextView;

    .line 425
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_error_cvv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->x:Landroid/widget/TextView;

    .line 426
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {p1, v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setClickable(Z)V

    .line 428
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {p1, v3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setClickable(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    .line 431
    return-void
.end method

.method private a(Landroid/view/View;Lcom/payumoney/core/entity/EmiTenure;)V
    .locals 9

    .line 220
    nop

    .line 221
    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getEmiBankInterest()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    .line 222
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s@%s%%"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    nop

    .line 225
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, " | %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    nop

    .line 228
    sget v2, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getEmiValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    sget v5, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getEmiInterestPaid()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 230
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object p2, v1, v3

    const-string p2, "EMI - %s | Interest - %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 233
    sget v1, Lcom/payumoney/sdkui/R$id;->emi_add_card_details:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 234
    sget v2, Lcom/payumoney/sdkui/R$id;->tv_emi_add_card_emi_bank_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 235
    sget v3, Lcom/payumoney/sdkui/R$id;->tv_emi_add_card_emi_bank_tenure:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    sget v4, Lcom/payumoney/sdkui/R$id;->tv_emi_add_card_emi_details:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->R:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    sget p2, Lcom/payumoney/sdkui/R$id;->btn_emi_tenure_change:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 243
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    sget p2, Lcom/payumoney/sdkui/R$id;->tv_emi_add_card_tnc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 825
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 827
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$layout;->dialog_signle_button_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 829
    sget v2, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 830
    sget v3, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 831
    sget v4, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 833
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    sget p1, Lcom/payumoney/sdkui/R$string;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    new-instance p1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$11;

    invoke-direct {p1, p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$11;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-static {p1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->setCustomBackground(ILandroid/view/View;Landroid/content/Context;)V

    .line 847
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 848
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 849
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 850
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1200
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1201
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1202
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1203
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    :cond_0
    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v3, 0x6

    if-lt p2, v3, :cond_1

    .line 1207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card_bin_api_tag"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1216
    :cond_1
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 1217
    iput-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1219
    :cond_2
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1220
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1221
    return-void

    .line 1224
    :cond_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const-string p2, "AMEX"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 1225
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 1226
    :cond_4
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const-string v1, "SMAE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1227
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1229
    :cond_5
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1233
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object p1

    iget-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payumoney/graphics/AssetsHelper;->getCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$13;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    goto :goto_1

    .line 1251
    :catch_0
    move-exception p1

    .line 1252
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1255
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1256
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->I:Z

    return p1
.end method

.method private a(Z)Z
    .locals 5

    .line 1416
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1420
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1421
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1426
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 1432
    :cond_1
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/payumoney/core/utils/SdkHelper;->validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1433
    if-eqz p1, :cond_2

    .line 1434
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, p1, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1437
    :cond_2
    return v2

    .line 1439
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_4

    .line 1440
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Z)Z

    move-result p1

    return p1

    .line 1443
    :cond_4
    const/4 p1, 0x1

    return p1

    .line 1427
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 1428
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, p1, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1431
    :cond_6
    return v2

    .line 1422
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 1423
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, p1, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1425
    :cond_8
    return v2
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v1, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$5;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    const-string v2, "CID000"

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 309
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-nez v0, :cond_0

    .line 653
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->B:Z

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$9;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 666
    :cond_0
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->A:Z

    if-nez p1, :cond_1

    .line 668
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$10;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$10;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->B:Z

    return p1
.end method

.method private b(Z)Z
    .locals 4

    .line 1452
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1454
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const-string v3, "SMAE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1456
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/payumoney/sdkui/R$string;->emi_only_credit_card_supported:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;)V

    .line 1459
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1460
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1461
    return v2

    .line 1465
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->resetBankToDefault()V

    .line 1466
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1467
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1468
    return v1

    .line 1471
    :cond_2
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1472
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1473
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/payumoney/sdkui/R$string;->emi_international_card_type_not_supported_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;)V

    .line 1476
    :cond_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1477
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1479
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    .line 1480
    return v2

    .line 1481
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1482
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1483
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/payumoney/sdkui/R$string;->emi_only_credit_card_supported:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;)V

    .line 1486
    :cond_5
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1487
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1488
    return v2

    .line 1503
    :cond_6
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1504
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1505
    return v1
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 584
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDuration(I)V

    .line 585
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setAnimated(Z)V

    .line 586
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationYEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationXEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationZEnabled(Z)V

    .line 589
    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->A:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 1275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1277
    return v1

    .line 1280
    :cond_0
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1281
    return v1

    .line 1284
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Z)Z
    .locals 8

    .line 1514
    nop

    .line 1515
    nop

    .line 1516
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1519
    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1520
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1523
    :cond_1
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "SMAE"

    if-lt v1, v2, :cond_2

    sub-int/2addr v0, v3

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    const/4 v7, 0x2

    .line 1524
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    .line 1525
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1526
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1527
    if-eqz p1, :cond_3

    .line 1528
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, p1, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1530
    :cond_3
    return v5

    .line 1531
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1532
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1533
    if-eqz p1, :cond_6

    .line 1534
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, p1, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1536
    :cond_6
    return v5

    .line 1541
    :cond_7
    return v3
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 593
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setDuration(I)V

    .line 594
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setAnimated(Z)V

    .line 595
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationYEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationXEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setRotationZEnabled(Z)V

    .line 598
    return-void
.end method

.method private d(Z)Z
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    sget p1, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 1555
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1560
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 8

    .line 682
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->validateCardDetails(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 685
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 688
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v3, "page"

    const-string v4, "EMIAddCard"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PayNowButtonClicked"

    const-string v5, "clevertap"

    invoke-static {v3, v4, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 693
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->R:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const-string v2, "CardScheme"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_0
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EMICardAdded"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

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

    .line 703
    new-instance v1, Lcom/payumoney/core/request/PaymentRequest;

    invoke-direct {v1}, Lcom/payumoney/core/request/PaymentRequest;-><init>()V

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    .line 704
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/payumoney/core/request/PaymentRequest;->setEmiPayment(Z)V

    .line 706
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->Q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPaymentID(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const-string v3, "EMI"

    invoke-virtual {v1, v3}, Lcom/payumoney/core/request/PaymentRequest;->setPg(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v1, v0}, Lcom/payumoney/core/request/PaymentRequest;->setCardNumber(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->T:D

    invoke-virtual {v0, v3, v4}, Lcom/payumoney/core/request/PaymentRequest;->setConvenienceFee(D)V

    .line 710
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCountryCode(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/Utils;->checkIfLoggedInOrNitroLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCard(Z)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setStoreCard(Z)V

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->S:Lcom/payumoney/core/entity/EmiTenure;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/EmiTenure;->getTenureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setBankCode(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->y:Z

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setSplitPayment(Z)V

    .line 721
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    .line 722
    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    .line 723
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 724
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-nez v0, :cond_4

    .line 725
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    goto :goto_2

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 730
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_5

    .line 731
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "2030"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    goto :goto_3

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v1}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    .line 736
    :goto_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    goto :goto_5

    .line 737
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 746
    :goto_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payumoney/core/request/PaymentRequest;->setProcessor(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->H:Lcom/payumoney/core/request/PaymentRequest;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "add_card_api_tag"

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/payumoney/core/PayUmoneySDK;->makePayment(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 748
    goto :goto_6

    .line 749
    :cond_8
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->paymentFailAndShowErrorScreen()V

    goto :goto_6

    .line 753
    :cond_9
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    goto :goto_6

    .line 756
    :cond_a
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showNoNetworkError()V

    .line 758
    :goto_6
    return-void
.end method

.method private f()V
    .locals 2

    .line 810
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    if-eqz v0, :cond_0

    .line 812
    sget v0, Lcom/payumoney/sdkui/R$string;->we_are_unable_to_identify_the_exact_card_being_used:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    sget v0, Lcom/payumoney/sdkui/R$string;->you_are_attempting_to_use_a_card_issued_outside_india:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;)V

    .line 817
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method private g()V
    .locals 6

    .line 853
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 854
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 855
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$layout;->dialog_signle_button_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 857
    sget v2, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 858
    sget v3, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 859
    sget v4, Lcom/payumoney/sdkui/R$id;->single_btn_dialog_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 861
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    sget v2, Lcom/payumoney/sdkui/R$string;->msg_maestro_card_input_detail:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    sget v2, Lcom/payumoney/sdkui/R$string;->btn_ok:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$12;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$style;->AlertDialogAnimation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 875
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-static {v2, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->setCustomBackground(ILandroid/view/View;Landroid/content/Context;)V

    .line 876
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 877
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 878
    return-void
.end method

.method static synthetic h(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    return-object p0
.end method

.method private h()Z
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1271
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1268
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    return-object p0
.end method

.method private i()Z
    .locals 3

    .line 1288
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    const-string v2, "cc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    const/4 v0, 0x0

    return v0

    .line 1320
    :cond_1
    return v1

    .line 1289
    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic j(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->e()V

    return-void
.end method

.method private j()Z
    .locals 1

    .line 1412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method private k()Z
    .locals 1

    .line 1509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method private l()Z
    .locals 1

    .line 1545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->d(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method private m()Z
    .locals 2

    .line 1564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1565
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->d(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonEnable()V

    .line 1570
    const/4 v0, 0x1

    return v0

    .line 1577
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    .line 1578
    return v0
.end method

.method static synthetic n(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/payumoney/core/entity/PaymentEntity;Lcom/payumoney/core/entity/EmiTenure;D)Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;
    .locals 3
    .param p0, "paymentId"    # Ljava/lang/String;
    .param p1, "selectedEmiBank"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "selectedEmiTenure"    # Lcom/payumoney/core/entity/EmiTenure;
    .param p3, "convenienceFee"    # D

    .line 132
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;-><init>()V

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v2, "payment_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "emi_bank"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v2, "emi_tenure"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    const-string v2, "conv_fee"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v0
.end method

.method static synthetic o(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->d()V

    return-void
.end method

.method static synthetic q(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->l()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cardType"    # Ljava/lang/String;

    .line 1360
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    const-string v0, "Credit Cards"

    return-object v0

    .line 1363
    :cond_0
    const-string v0, "Debit Cards"

    return-object v0
.end method

.method public getIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "issuer"    # Ljava/lang/String;

    .line 1334
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

    .line 1356
    const-string v0, ""

    return-object v0

    .line 1352
    :pswitch_0
    const-string v0, "State Bank Maestro"

    return-object v0

    .line 1350
    :pswitch_1
    return-object v4

    .line 1348
    :pswitch_2
    const-string v0, "Diners"

    return-object v0

    .line 1346
    :pswitch_3
    return-object v3

    .line 1344
    :pswitch_4
    const-string v0, "Maestro"

    return-object v0

    .line 1342
    :pswitch_5
    const-string v0, "Laser"

    return-object v0

    .line 1340
    :pswitch_6
    const-string v0, "Rupay"

    return-object v0

    .line 1338
    :pswitch_7
    return-object v2

    .line 1336
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

.method public hideProgress()V
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->dismissProgressDialog()V

    .line 989
    :cond_0
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1115
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1117
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 603
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 605
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    nop

    .line 610
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
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

    .line 1043
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Canceled"

    .line 1048
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1050
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1051
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1052
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1053
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1065
    :cond_0
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1066
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1067
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

    .line 1068
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1070
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1071
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 1072
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1073
    :cond_1
    return-void
.end method

.method public onCardBinDetailReceived(Lcom/payumoney/core/response/BinDetail;Ljava/lang/String;)V
    .locals 2
    .param p1, "binDetailresponse"    # Lcom/payumoney/core/response/BinDetail;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCardBinDetailReceived(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AECF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    .line 1167
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    .line 1168
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1169
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBankCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->L:Ljava/lang/String;

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    .line 1174
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1176
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1180
    :cond_0
    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBankCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 763
    sget v1, Lcom/payumoney/sdkui/R$id;->btn_pay_quick_pay_emi:I

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_1

    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->E:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->E:J

    .line 768
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/app/Activity;)V

    .line 769
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->e()V

    goto/16 :goto_1

    .line 770
    :cond_1
    sget v1, Lcom/payumoney/sdkui/R$id;->img_info_about_card:I

    if-ne v0, v1, :cond_3

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->F:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 773
    return-void

    .line 775
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->F:J

    .line 776
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->g()V

    goto/16 :goto_1

    .line 777
    :cond_3
    sget v1, Lcom/payumoney/sdkui/R$id;->img_info_save_card:I

    if-ne v0, v1, :cond_5

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->F:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 780
    return-void

    .line 782
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->F:J

    .line 784
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->f()V

    goto :goto_1

    .line 785
    :cond_5
    sget v1, Lcom/payumoney/sdkui/R$id;->btn_emi_tenure_change:I

    if-ne v0, v1, :cond_6

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 788
    const-string v1, "page"

    const-string v2, "EMIAddCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->R:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v1, "SavedCard Used"

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EMIBankChanged"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const-string v1, "13"

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->popBackStackTillTag(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_6
    sget v1, Lcom/payumoney/sdkui/R$id;->tv_emi_add_card_tnc:I

    if-ne v0, v1, :cond_7

    .line 797
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 798
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->getTermsAndConditionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 796
    :cond_7
    :goto_0
    nop

    .line 802
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 145
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->y:Z

    .line 148
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->Q:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_bank"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->R:Lcom/payumoney/core/entity/PaymentEntity;

    .line 150
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_tenure"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/EmiTenure;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->S:Lcom/payumoney/core/entity/EmiTenure;

    .line 151
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conv_fee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->T:D

    .line 153
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 159
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_add_card_fragment_emi:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 161
    sget v2, Lcom/payumoney/sdkui/R$id;->ll_switch_compat:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->U:Landroid/widget/LinearLayout;

    .line 164
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/Utils;->checkIfLoggedInOrNitroLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->U:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_1
    :goto_0
    sget v1, Lcom/payumoney/sdkui/R$id;->switch_save_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 173
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Landroid/view/View;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 175
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->S:Lcom/payumoney/core/entity/EmiTenure;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Landroid/view/View;Lcom/payumoney/core/entity/EmiTenure;)V

    .line 177
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

    .line 178
    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setAmount(Ljava/lang/String;)V

    .line 179
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->T:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->updateConvenienceFee(DD)V

    .line 182
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$2;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->hideConvenieneceFee()V

    .line 214
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a()V

    .line 215
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b()V

    .line 216
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 614
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 616
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1079
    const-string v0, "add_card_api_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 1080
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

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

    if-lt v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_bin_api_tag"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    .line 1085
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

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1091
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1094
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1097
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    .line 1100
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

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

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1103
    const-string v0, "IN"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    .line 1104
    const-string v0, "CC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    .line 1106
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Ljava/lang/String;)V

    .line 1110
    :cond_2
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1011
    const-string v0, "result"

    const-string v1, "error_Message"

    const-string v2, "status"

    const-string v3, "Transaction Failed"

    .line 1013
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1015
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1016
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1017
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1018
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "failure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "no error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1021
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1030
    :cond_0
    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1031
    :goto_0
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1032
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

    .line 1033
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1035
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1037
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_1

    .line 1038
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1039
    :cond_1
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1122
    const-string v0, "add_card_api_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1124
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

    .line 1125
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, v1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1127
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v3, Lcom/payumoney/core/response/PayumoneyError;

    const-string v4, "Transaction Failure"

    invoke-direct {v3, v4}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1128
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1129
    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

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

    if-lt v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_bin_api_tag"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    .line 1130
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

    if-eqz v0, :cond_2

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFailureResponse(): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AECF"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->C:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1138
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->O:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->P:Z

    .line 1147
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    .line 1150
    const-string v1, "IN"

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->N:Ljava/lang/String;

    .line 1151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    const-string v1, "SMAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    const-string v0, "DC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    goto :goto_0

    .line 1154
    :cond_1
    const-string v0, "CC"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    .line 1157
    :goto_0
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Ljava/lang/String;)V

    .line 1159
    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 976
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onPause()V

    .line 977
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 620
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onResume()V

    .line 622
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1185
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "payUResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1000
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v1, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1001
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

    .line 1002
    invoke-virtual {v0, p2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0, p1}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1004
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v2, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v2, v3}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1005
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1006
    return-void
.end method

.method public paymentFailAndShowErrorScreen()V
    .locals 5

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The merchant does not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->K:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    new-instance v1, Lcom/payumoney/core/entity/TransactionResponse;

    sget-object v2, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 1326
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

    .line 1327
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/payumoney/core/entity/TransactionResponse;->setTransactionDetails(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v1, v2}, Lcom/payumoney/core/entity/TransactionResponse;->setPayuResponse(Ljava/lang/String;)V

    .line 1329
    new-instance v2, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    new-instance v3, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v3, v0}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V

    .line 1330
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 1331
    return-void
.end method

.method public resetBankToDefault()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->s:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->u:Lcom/payumoney/sdkui/ui/widgets/FlipImageView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->B:Z

    .line 629
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Landroid/graphics/drawable/Drawable;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setPaymentButtonDisable()V
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1377
    return-void
.end method

.method public setPaymentButtonEnable()V
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 1370
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->M:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1371
    return-void
.end method

.method public showErrorToEditText(Lcom/payumoney/core/response/PayumoneyError;)V
    .locals 4
    .param p1, "error"    # Lcom/payumoney/core/response/PayumoneyError;

    .line 959
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 960
    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid card number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 962
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 963
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "invalid expiry date"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 965
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid cvv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 971
    :cond_3
    :goto_0
    return-void
.end method

.method public showNoNetworkError()V
    .locals 3

    .line 992
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 995
    :cond_0
    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1, "msgString"    # I

    .line 980
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->m:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->showProgressDialog(ZLjava/lang/String;)V

    .line 983
    :cond_0
    return-void
.end method

.method public showValidationError(II)V
    .locals 3
    .param p1, "error_message"    # I
    .param p2, "errorView"    # I

    .line 929
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    .line 931
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 940
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    goto :goto_0

    .line 947
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 948
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    goto :goto_0

    .line 934
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 935
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    nop

    .line 955
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

    .line 881
    if-nez p1, :cond_0

    .line 882
    const-string p1, ""

    .line 884
    :cond_0
    nop

    .line 885
    nop

    .line 886
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 889
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/utils/Month;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 891
    :cond_1
    const/4 v2, -0x1

    :goto_0
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v4}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v4}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 892
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v3}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/utils/Year;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 896
    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v0, :cond_c

    .line 897
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 898
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    .line 901
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

    .line 904
    :cond_4
    invoke-static {v0, p1}, Lcom/payumoney/core/utils/SdkHelper;->validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 905
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 906
    return v5

    .line 909
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v6, 0x4

    const-string v7, "SMAE"

    if-lt v3, v0, :cond_6

    sub-int/2addr v2, v4

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    const/4 v8, 0x2

    .line 910
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->G:Ljava/util/Calendar;

    .line 911
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v0, :cond_7

    :cond_6
    nop

    .line 912
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 913
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, v0, v6}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 914
    return v5

    .line 915
    :cond_7
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getMonth()Lcom/payumoney/core/utils/Month;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->o:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getYear()Lcom/payumoney/core/utils/Year;

    move-result-object v0

    if-nez v0, :cond_9

    .line 916
    :cond_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 917
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_expiry_date:I

    invoke-virtual {p0, v0, v6}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 918
    return v5

    .line 919
    :cond_9
    invoke-static {v1, p1}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 920
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_cvv:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 921
    return v5

    .line 923
    :cond_a
    return v4

    .line 902
    :cond_b
    :goto_1
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 903
    return v5

    .line 899
    :cond_c
    :goto_2
    sget v0, Lcom/payumoney/sdkui/R$string;->err_invalid_card:I

    invoke-virtual {p0, v0, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->showValidationError(II)V

    .line 900
    return v5
.end method
