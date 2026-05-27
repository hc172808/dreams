.class public Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;
.implements Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;


# static fields
.field public static final MAKE_PAYMENT_API_TAG:Ljava/lang/String; = "CARD_PAYMENT_REQUEST_API_TAG"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Z

.field private C:Z

.field private D:J

.field private E:D

.field private F:Lcom/payumoney/core/response/BinDetail;

.field a:Landroid/widget/TextView;

.field m:Landroid/widget/ImageView;

.field n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

.field o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

.field p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

.field q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

.field private r:Lcom/payumoney/core/request/PaymentRequest;

.field private s:Lcom/payumoney/core/entity/CardDetail;

.field private t:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

.field private u:I

.field private v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->u:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->D:J

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->D:J

    return-wide v0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->D:J

    return-wide p1
.end method

.method private a()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 326
    sget v0, Lcom/payumoney/sdkui/R$id;->payButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 327
    sget v0, Lcom/payumoney/sdkui/R$id;->cvvContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 328
    sget v1, Lcom/payumoney/sdkui/R$id;->card_cardNumber:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a:Landroid/widget/TextView;

    .line 331
    sget v1, Lcom/payumoney/sdkui/R$id;->card_cardType_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->m:Landroid/widget/ImageView;

    .line 333
    sget v1, Lcom/payumoney/sdkui/R$id;->bank_logo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->y:Landroid/widget/ImageView;

    .line 334
    sget v1, Lcom/payumoney/sdkui/R$id;->card_bank_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->A:Landroid/widget/TextView;

    .line 335
    sget v1, Lcom/payumoney/sdkui/R$id;->textview_card_type:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->z:Landroid/widget/TextView;

    .line 337
    sget v1, Lcom/payumoney/sdkui/R$id;->otp_error:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->w:Landroid/widget/TextView;

    .line 338
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/payumoney/sdkui/R$layout;->cvv_boxes_layout:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->x:Landroid/widget/LinearLayout;

    .line 339
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 13

    .line 346
    iput p2, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->u:I

    .line 347
    sget v0, Lcom/payumoney/sdkui/R$id;->otpEdit_box1:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 348
    sget v0, Lcom/payumoney/sdkui/R$id;->otpEdit_box2:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 349
    sget v0, Lcom/payumoney/sdkui/R$id;->otpEdit_box3:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 350
    sget v0, Lcom/payumoney/sdkui/R$id;->otpEdit_box4:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 352
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    new-instance v6, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;Landroid/app/Activity;ILcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;)V

    invoke-virtual {p1, v6}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    new-instance v0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move-object v7, v0

    move-object v8, p1

    move v11, p2

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;Landroid/app/Activity;ILcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;)V

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 354
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    new-instance v0, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;Landroid/app/Activity;ILcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;)V

    invoke-virtual {p1, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setDeletePressListener(Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;)V

    .line 357
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setDeletePressListener(Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;)V

    .line 358
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setDeletePressListener(Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;)V

    .line 360
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    new-instance v6, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher;-><init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;Landroid/app/Activity;ILcom/payumoney/sdkui/ui/utils/OtpEditTextWatcher$OnTextInputFound;)V

    invoke-virtual {p1, v6}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 362
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {p1, p0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setDeletePressListener(Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setImeOptions(I)V

    .line 367
    :goto_0
    return-void
.end method

.method private a(Lcom/payumoney/core/entity/CardDetail;)V
    .locals 6

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 234
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    const-string v1, "cc"

    const-string v2, "CID000"

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    .line 239
    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    .line 240
    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v0

    goto :goto_0

    .line 244
    :cond_0
    nop

    .line 245
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_credit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_debit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_1
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    .line 256
    invoke-virtual {v1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    .line 257
    invoke-virtual {v1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->s:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 266
    :cond_3
    nop

    .line 267
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->s:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_credit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->payu_debit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_2
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->s:Lcom/payumoney/core/entity/CardDetail;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v1

    .line 279
    :goto_3
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->z:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/graphics/AssetsHelper;->getCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$4;

    invoke-direct {v3, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V

    invoke-virtual {v0, v1, v3}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 304
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V

    invoke-virtual {v0, v2, v1}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 321
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AMEX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_4

    :cond_5
    const/4 p1, 0x3

    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Landroid/widget/LinearLayout;I)V

    .line 323
    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/request/PaymentRequest;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->r:Lcom/payumoney/core/request/PaymentRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->t:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    return-object p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static newInstance(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/entity/CardDetail;Lcom/payumoney/core/response/BinDetail;)Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;
    .locals 3
    .param p0, "request"    # Lcom/payumoney/core/request/PaymentRequest;
    .param p1, "cardDetail"    # Lcom/payumoney/core/entity/CardDetail;
    .param p2, "binDetail"    # Lcom/payumoney/core/response/BinDetail;

    .line 76
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "payment_option"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v2, "autoload_amount"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v2, "bin_detail_object"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public getCvv()Ljava/lang/String;
    .locals 2

    .line 370
    iget v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->u:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 372
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 373
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->q:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 374
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    return-object v0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 377
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 378
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public hideKeyBoard()V
    .locals 2

    .line 438
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 439
    return-void
.end method

.method public hideLabelOtpError()V
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->w:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
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

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b:Ljava/lang/String;

    .line 99
    const-string v1, "payment_option"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/request/PaymentRequest;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->r:Lcom/payumoney/core/request/PaymentRequest;

    .line 100
    const-string v1, "autoload_amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/CardDetail;

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->s:Lcom/payumoney/core/entity/CardDetail;

    .line 101
    const-string v1, "bin_detail_object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/BinDetail;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->F:Lcom/payumoney/core/response/BinDetail;

    .line 103
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_get_cvv_fragment_new:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setAmount(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->setPaymentButtonDisable()V

    .line 118
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$2;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->E:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->updateConvenienceFee(DD)V

    .line 166
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->s:Lcom/payumoney/core/entity/CardDetail;

    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->a(Lcom/payumoney/core/entity/CardDetail;)V

    .line 167
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 383
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->t:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    .line 385
    return-void
.end method

.method public onEmptyDeletePress(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 406
    :pswitch_4
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 407
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 408
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 409
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    goto :goto_2

    .line 400
    :pswitch_5
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 401
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 402
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 403
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 404
    goto :goto_2

    .line 394
    :pswitch_6
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 395
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 396
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 397
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 398
    goto :goto_2

    .line 392
    :pswitch_7
    nop

    .line 412
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onNonEmptyDeletePress(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 430
    :pswitch_4
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 431
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 432
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->p:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    goto :goto_2

    .line 425
    :pswitch_5
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 426
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 427
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->o:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 428
    goto :goto_2

    .line 420
    :pswitch_6
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setStopEditing(Z)V

    .line 421
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->requestFocus()Z

    .line 422
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->setSelection(I)V

    .line 423
    goto :goto_2

    .line 418
    :pswitch_7
    nop

    .line 435
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onPause()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->B:Z

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->C:Z

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onResume()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->C:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->B:Z

    .line 219
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->n:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->showKeyBoard(Landroidx/fragment/app/FragmentActivity;Lcom/payumoney/sdkui/ui/widgets/OtpEditText;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setConvenienceFee(D)V
    .locals 0
    .param p1, "convenienceFee"    # D

    .line 90
    iput-wide p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->E:D

    .line 91
    return-void
.end method

.method public setPaymentButtonDisable()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->v:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 459
    return-void
.end method

.method public setmListener(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    .line 86
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->t:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    .line 87
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 454
    :cond_0
    return-void
.end method
