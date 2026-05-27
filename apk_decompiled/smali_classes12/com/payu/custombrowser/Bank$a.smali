.class public Lcom/payu/custombrowser/Bank$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/Bank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 3349
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 3352
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$a;->b:Landroid/view/View;

    .line 3353
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 3357
    nop

    .line 3358
    instance-of v0, p1, Landroid/widget/Button;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3359
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3360
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3361
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3360
    :cond_1
    move-object v0, v1

    .line 3362
    :goto_0
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/Bank;->b(Ljava/lang/String;)I

    move-result v0

    .line 3363
    const-string v2, "javascript:"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "user_input"

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 3378
    :pswitch_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-boolean v7, v0, Lcom/payu/custombrowser/Bank;->ao:Z

    .line 3379
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->g(Lcom/payu/custombrowser/Bank;)V

    .line 3380
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v1, "otp_click"

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 3381
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_a

    .line 3383
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-object v4, v0, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    .line 3384
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->m()V

    goto/16 :goto_4

    .line 3389
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->d()V

    .line 3390
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-object v4, v0, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    .line 3391
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-boolean v5, v0, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 3392
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    .line 3393
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 3394
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 3395
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput v7, v0, Lcom/payu/custombrowser/Bank;->y:I

    .line 3396
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->m()V

    .line 3397
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->b:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_2

    .line 3398
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v3, "approved_otp"

    iput-object v3, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 3399
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v3, "Approve_btn_clicked_time"

    const-string v4, "-1"

    invoke-virtual {v0, v3, v4}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_process_otp:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->b:Landroid/view/View;

    sget v4, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3402
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->b:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3406
    :cond_2
    goto/16 :goto_4

    .line 3404
    :catch_0
    move-exception v0

    .line 3405
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3407
    goto/16 :goto_4

    .line 3410
    :pswitch_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$layout;->wait_for_otp:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3411
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 3412
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v2, "enter_manually_click"

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    goto :goto_1

    .line 3414
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v2, "enter_manually_ontimer_click"

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 3416
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v2, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget v1, v1, Lcom/payu/custombrowser/Bank;->ad:I

    if-nez v1, :cond_4

    .line 3419
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 3420
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Lcom/payu/custombrowser/Bank;->ad:I

    .line 3423
    :cond_4
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3424
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3426
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    .line 3427
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput v2, v1, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_2

    .line 3429
    :cond_5
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->f()V

    .line 3432
    :goto_2
    sget v1, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3433
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3435
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 3436
    iget-object v4, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3438
    :cond_6
    sget v1, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3439
    const v1, 0x3e99999a    # 0.3f

    .line 3440
    sget v4, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3441
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 3443
    sget v6, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 3444
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v8}, Lcom/payu/custombrowser/Bank;->l(Lcom/payu/custombrowser/Bank;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3445
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3

    .line 3447
    :cond_7
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 3449
    :goto_3
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v2, v6}, Lcom/payu/custombrowser/Bank;->a(Landroid/view/View;)V

    .line 3450
    invoke-static {v1, v4}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 3452
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 3453
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3454
    sget v1, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3455
    sget v1, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3456
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v6}, Lcom/payu/custombrowser/Bank;->a(Landroid/view/View;)V

    .line 3458
    new-instance v1, Lcom/payu/custombrowser/Bank$a$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/payu/custombrowser/Bank$a$1;-><init>(Lcom/payu/custombrowser/Bank$a;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3490
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 3491
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 3493
    goto/16 :goto_4

    .line 3366
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v1, "regenerate_click"

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 3367
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-object v4, v0, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    .line 3369
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_regen_otp:I

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->m()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3373
    goto/16 :goto_4

    .line 3371
    :catch_1
    move-exception v0

    .line 3372
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3374
    goto/16 :goto_4

    .line 3498
    :pswitch_4
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput-boolean v7, v0, Lcom/payu/custombrowser/Bank;->ac:Z

    .line 3499
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    .line 3500
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 3501
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iput v7, v0, Lcom/payu/custombrowser/Bank;->y:I

    .line 3502
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 3504
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 3505
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3507
    :cond_8
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 3508
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3511
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3512
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    const-string v1, "password_click"

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 3513
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3516
    goto :goto_4

    .line 3514
    :catch_2
    move-exception v0

    .line 3515
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3517
    goto :goto_4

    .line 3519
    :pswitch_5
    sget-boolean v0, Lcom/payu/custombrowser/a;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 3520
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-string v1, "button text not matching any click listener option"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3523
    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
