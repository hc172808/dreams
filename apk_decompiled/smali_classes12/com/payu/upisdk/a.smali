.class public final Lcom/payu/upisdk/a;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;
.implements Lcom/payu/upisdk/upi/IValidityCheck;


# instance fields
.field a:Z

.field b:Lcom/payu/upisdk/upi/IValidityCheck;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/app/Activity;

.field private m:Lcom/payu/upisdk/upiintent/d;

.field private n:Landroid/widget/EditText;

.field private o:Lcom/payu/upisdk/bean/UpiConfig;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Z

.field private t:Landroid/widget/ScrollView;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/StringBuilder;

.field private x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/upisdk/a;->s:Z

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/upisdk/a;->u:Z

    .line 80
    iput-boolean v0, p0, Lcom/payu/upisdk/a;->v:Z

    .line 95
    invoke-virtual {p0, v1}, Lcom/payu/upisdk/a;->setRetainInstance(Z)V

    .line 96
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/payu/upisdk/upiintent/d;Lcom/payu/upisdk/bean/UpiConfig;)Lcom/payu/upisdk/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;",
            "Lcom/payu/upisdk/upiintent/d;",
            "Lcom/payu/upisdk/bean/UpiConfig;",
            ")",
            "Lcom/payu/upisdk/a;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/payu/upisdk/a;

    invoke-direct {v0}, Lcom/payu/upisdk/a;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 88
    const-string p0, "cb_config"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    const-string p0, "paymentResponse"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/payu/upisdk/a;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v0
.end method

.method private a()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->setIndeterminate(Z)V

    .line 137
    iget-object v0, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/upisdk/R$color;->cb_progress_bar_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    .line 1293
    invoke-virtual {v0}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/payu/upisdk/a;->s:Z

    return p0
.end method

.method static synthetic a(Lcom/payu/upisdk/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/payu/upisdk/a;->s:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .line 365
    const-string v0, "isVPAValid"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    .line 368
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 370
    return v1
.end method

.method static synthetic b(Lcom/payu/upisdk/a;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 381
    const-string v0, "payerAccountName"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 386
    :cond_0
    goto :goto_0

    .line 385
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 387
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 13146
    iget-object v1, v1, Lcom/payu/upisdk/upiintent/d;->j:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&action=sdkFallback&customerVpa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/payu/upisdk/a;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "&fallbackReasonCode=E1902"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LaunchBrowserGoing to happen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 303
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    iget-object v2, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    const-string v3, "upi_generic"

    invoke-virtual {v2, v3}, Lcom/payu/upisdk/bean/UpiConfig;->setPaymentType(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    const-string v4, "upiConfig"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    const-string v2, "postdata_collect"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v0}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    const-string v2, "postData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 14082
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->b:Ljava/lang/String;

    .line 308
    const-string v2, "returnUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v0, "payment_type"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v0}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "merchantid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v0}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantResponseTimeout()I

    move-result v0

    const-string v2, "merchantResponseTimeout"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 314
    iget-object v0, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 319
    return-void
.end method

.method private c()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 332
    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 333
    iget-object v1, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    sget v2, Lcom/payu/upisdk/R$drawable;->cb_ic_edit_black:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 334
    iget-object v1, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    iget-object v0, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 337
    iget-object v0, p0, Lcom/payu/upisdk/a;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/payu/upisdk/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/payu/upisdk/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    return-void
.end method

.method static synthetic c(Lcom/payu/upisdk/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/payu/upisdk/a;->v:Z

    return p0
.end method

.method private d()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 348
    iget-object v0, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 350
    iget-object v0, p0, Lcom/payu/upisdk/a;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/payu/upisdk/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/upisdk/a;->s:Z

    .line 353
    iget-object v0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 354
    invoke-direct {p0}, Lcom/payu/upisdk/a;->h()V

    .line 355
    return-void
.end method

.method static synthetic d(Lcom/payu/upisdk/a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/payu/upisdk/a;->c()V

    return-void
.end method

.method static synthetic e(Lcom/payu/upisdk/a;)Landroid/widget/ScrollView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payu/upisdk/a;->t:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 391
    iput-object p0, p0, Lcom/payu/upisdk/a;->b:Lcom/payu/upisdk/upi/IValidityCheck;

    .line 392
    iget-object v0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/upisdk/util/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 394
    invoke-direct {p0}, Lcom/payu/upisdk/a;->a()V

    .line 395
    iget-object v0, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 14098
    iput-object p0, v0, Lcom/payu/upisdk/b;->e:Lcom/payu/upisdk/upi/IValidityCheck;

    .line 397
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 15081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 397
    if-eqz v0, :cond_1

    .line 398
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 16081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 398
    iget-object v1, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/a;->b:Lcom/payu/upisdk/upi/IValidityCheck;

    invoke-virtual {v0, v1, v2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onVpaEntered(Ljava/lang/String;Lcom/payu/upisdk/upi/IValidityCheck;)V

    return-void

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/payu/upisdk/a;->g()V

    .line 403
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 409
    invoke-direct {p0}, Lcom/payu/upisdk/a;->b()V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Launch Browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->dismiss()V

    .line 412
    return-void
.end method

.method private g()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/upisdk/R$string;->cb_invalid_vpa:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    return-void
.end method

.method private h()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 516
    if-eqz v0, :cond_0

    .line 517
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 518
    :cond_0
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 441
    iget-object p1, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object p1, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/payu/upisdk/util/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string v1, "0"

    const v2, 0x3eb33333    # 0.35f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 16138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 443
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 17138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 443
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 447
    iget-object p1, p0, Lcom/payu/upisdk/a;->r:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 450
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    .line 453
    :cond_1
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 454
    iget-object p1, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 455
    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 18138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 455
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 19138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 455
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 456
    nop

    .end local p0    # "this":Lcom/payu/upisdk/a;
    iget-object p1, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 432
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    nop

    .end local p0    # "this":Lcom/payu/upisdk/a;
    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    .line 145
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 323
    nop

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 324
    iget-object p1, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    check-cast p1, Lcom/payu/upisdk/b/a;

    .end local p0    # "this":Lcom/payu/upisdk/a;
    iget-boolean v0, p0, Lcom/payu/upisdk/a;->u:Z

    invoke-interface {p1, v0}, Lcom/payu/upisdk/b/a;->a(Z)V

    .line 325
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/upisdk/R$id;->tv_vpa_submit:I

    const-string v2, "Class Name: "

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 9138
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 239
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requesting Vpa tv_vpa_submit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/payu/upisdk/a;->e()V

    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proceed  Vpa tv_vpa_submit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/payu/upisdk/a;->f()V

    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/upisdk/R$id;->tvVerifyVpa:I

    if-ne v0, v1, :cond_2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proceed  Vpa tvVerifyVpa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/payu/upisdk/a;->e()V

    return-void

    .line 250
    :cond_2
    nop

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/payu/upisdk/R$id;->tvHeading:I

    if-ne p1, v0, :cond_3

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Proceed  Vpa tvHeading"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 252
    nop

    .end local p0    # "this":Lcom/payu/upisdk/a;
    invoke-direct {p0}, Lcom/payu/upisdk/a;->d()V

    .line 254
    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 101
    nop

    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    sget p3, Lcom/payu/upisdk/R$layout;->cb_layout_generic_upi:I

    .end local p2    # "container":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    nop

    .line 1118
    move-object p2, p1

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->t:Landroid/widget/ScrollView;

    .line 1119
    sget p2, Lcom/payu/upisdk/R$id;->rvApps:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1120
    sget p2, Lcom/payu/upisdk/R$id;->ll_vpa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/payu/upisdk/a;->e:Landroid/widget/LinearLayout;

    .line 1121
    sget p2, Lcom/payu/upisdk/R$id;->ll_app_selector:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/payu/upisdk/a;->f:Landroid/widget/LinearLayout;

    .line 1122
    sget p2, Lcom/payu/upisdk/R$id;->rlInputVpa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/payu/upisdk/a;->i:Landroid/widget/RelativeLayout;

    .line 1123
    sget p2, Lcom/payu/upisdk/R$id;->llPayment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/payu/upisdk/a;->g:Landroid/widget/LinearLayout;

    .line 1124
    sget p2, Lcom/payu/upisdk/R$id;->ll_separator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/payu/upisdk/a;->h:Landroid/widget/LinearLayout;

    .line 1125
    sget p2, Lcom/payu/upisdk/R$id;->edit_vpa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    .line 1126
    sget p2, Lcom/payu/upisdk/R$id;->tv_vpa_submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    .line 1127
    sget p2, Lcom/payu/upisdk/R$id;->tvHeading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->k:Landroid/widget/TextView;

    .line 1128
    sget p2, Lcom/payu/upisdk/R$id;->tvVerifyVpa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    .line 1129
    sget p2, Lcom/payu/upisdk/R$id;->tvVpaName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    .line 1130
    sget p2, Lcom/payu/upisdk/R$id;->upi_progressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    iput-object p2, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    .line 1131
    sget p2, Lcom/payu/upisdk/R$id;->ivVpaSuccess:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/payu/upisdk/a;->r:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "list"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/payu/upisdk/a;->d:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "paymentResponse"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/payu/upisdk/upiintent/d;

    iput-object p2, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 106
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cb_config"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/payu/upisdk/bean/UpiConfig;

    iput-object p2, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    .line 108
    nop

    .end local p0    # "this":Lcom/payu/upisdk/a;
    invoke-direct {p0}, Lcom/payu/upisdk/a;->c()V

    .line 109
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 420
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 422
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 496
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 497
    iget-object v0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    .line 19506
    iget-object v1, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 19507
    if-eqz v1, :cond_0

    .line 19508
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 498
    :cond_0
    return-void
.end method

.method public final onPayuNetworkAsyncTaskResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cbAsynTaskResponse"    # Ljava/lang/String;

    .line 258
    iget-object p2, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 259
    iget-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object p2, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-virtual {p2}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->b()V

    .line 261
    iget-object p2, p0, Lcom/payu/upisdk/a;->x:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->setVisibility(I)V

    .line 263
    invoke-static {p1}, Lcom/payu/upisdk/a;->a(Ljava/lang/String;)Z

    move-result p2

    const-string v3, "1"

    if-eqz p2, :cond_3

    .line 264
    iget-object p2, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 10138
    iget-object p2, p2, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 264
    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 11138
    iget-object p2, p2, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 264
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/payu/upisdk/a;->f()V

    return-void

    .line 267
    :cond_0
    nop

    .line 11477
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11478
    iget-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11479
    iget-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payu/upisdk/R$string;->proceed_to_pay:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11480
    iget-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11481
    iget-object p2, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 268
    :cond_1
    iget-object p2, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    nop

    .end local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    invoke-static {p1}, Lcom/payu/upisdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    if-eqz p1, :cond_2

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 271
    iget-object p2, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object p2, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/upisdk/R$color;->cb_item_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object p2, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/payu/upisdk/a;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/payu/upisdk/a;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iput-boolean v0, p0, Lcom/payu/upisdk/a;->a:Z

    .line 279
    return-void

    .line 282
    :cond_3
    invoke-direct {p0}, Lcom/payu/upisdk/a;->g()V

    .line 283
    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 12138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 283
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 13138
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 283
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 284
    iget-object p1, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 286
    iget-object p1, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    .end local p0    # "this":Lcom/payu/upisdk/a;
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/payu/upisdk/R$string;->cb_verify:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 426
    nop

    .end local p0    # "this":Lcom/payu/upisdk/a;
    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    return-void
.end method

.method public final onStart()V
    .locals 9

    .line 149
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 150
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 154
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 155
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lcom/payu/upisdk/R$style;->upi_sdk_dialog_slide_animation:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 158
    iget-object v0, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/payu/upisdk/a$1;

    invoke-direct {v3, p0, v0}, Lcom/payu/upisdk/a$1;-><init>(Lcom/payu/upisdk/a;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/a;->d:Ljava/util/ArrayList;

    const/4 v2, 0x4

    const-string v3, "1"

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/payu/upisdk/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/payu/upisdk/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v7, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 192
    iget-object v0, p0, Lcom/payu/upisdk/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/payu/upisdk/upiintent/b;

    iget-object v7, p0, Lcom/payu/upisdk/a;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/payu/upisdk/a;->l:Landroid/app/Activity;

    invoke-direct {v6, v7, v8, p0}, Lcom/payu/upisdk/upiintent/b;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/payu/upisdk/a;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 2130
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->g:Ljava/lang/String;

    .line 194
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 3130
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->g:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iput-boolean v1, p0, Lcom/payu/upisdk/a;->u:Z

    .line 197
    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/payu/upisdk/a;->d()V

    .line 200
    iput-boolean v4, p0, Lcom/payu/upisdk/a;->v:Z

    .line 201
    iget-object v0, p0, Lcom/payu/upisdk/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/payu/upisdk/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 4130
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->g:Ljava/lang/String;

    .line 205
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 5130
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->g:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/payu/upisdk/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/payu/upisdk/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/payu/upisdk/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 5138
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 213
    const v2, 0x3eb33333    # 0.35f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 6138
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    nop

    .line 6466
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/payu/upisdk/R$string;->cb_verify_and_proceed:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6467
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6468
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payu/upisdk/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6469
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6470
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    goto :goto_2

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/payu/upisdk/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/payu/upisdk/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 222
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 7154
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->k:Ljava/lang/String;

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/upisdk/a;->m:Lcom/payu/upisdk/upiintent/d;

    .line 8154
    iget-object v2, v2, Lcom/payu/upisdk/upiintent/d;->k:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_5

    .line 226
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    .line 228
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/payu/upisdk/a;->w:Ljava/lang/StringBuilder;

    const-string v1, "^[^@]+@[^@]+$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 437
    return-void
.end method

.method public final verifyVpa(Ljava/lang/String;)V
    .locals 3
    .param p1, "verifyVpaHash"    # Ljava/lang/String;

    .line 522
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 20098
    iput-object p0, v0, Lcom/payu/upisdk/b;->e:Lcom/payu/upisdk/upi/IValidityCheck;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&var1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/upisdk/a;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&command=validateVPA&hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p1    # "verifyVpaHash":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    new-instance v0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-direct {v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;-><init>()V

    .line 526
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/payu/upisdk/a;->o:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getWebServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 530
    new-instance p1, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;

    .end local p0    # "this":Lcom/payu/upisdk/a;
    const-string v1, "VERIFY"

    invoke-direct {p1, p0, v1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;-><init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 531
    return-void
.end method
