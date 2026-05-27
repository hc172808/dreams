.class public Leasypay/AnalyticsManagerInfoDisplayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AnalyticsManagerInfoDisplayActivity.java"


# instance fields
.field protected mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTvAcsUrl:Landroid/widget/TextView;

.field private mTvAcsUrlLoaded:Landroid/widget/TextView;

.field private mTvAcsUrlRequested:Landroid/widget/TextView;

.field private mTvAppName:Landroid/widget/TextView;

.field private mTvCardType:Landroid/widget/TextView;

.field private mTvCardUser:Landroid/widget/TextView;

.field private mTvIsAssistEnabled:Landroid/widget/TextView;

.field private mTvIsAssistPopped:Landroid/widget/TextView;

.field private mTvIsSmsRead:Landroid/widget/TextView;

.field private mTvIsSubmitted:Landroid/widget/TextView;

.field private mTvMid:Landroid/widget/TextView;

.field private mTvOrderId:Landroid/widget/TextView;

.field private mTvOtp:Landroid/widget/TextView;

.field private mTvSender:Landroid/widget/TextView;

.field private mTvSmspermission:Landroid/widget/TextView;

.field private mTvredirectUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 59
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_RedirectUrls:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvredirectUrl:Landroid/widget/TextView;

    .line 60
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_mid:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvMid:Landroid/widget/TextView;

    .line 61
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_cardType:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvCardType:Landroid/widget/TextView;

    .line 62
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_RedirectUrls:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvOrderId:Landroid/widget/TextView;

    .line 63
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_acsUrlRequested:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrlRequested:Landroid/widget/TextView;

    .line 64
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_cardIssuer:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvCardUser:Landroid/widget/TextView;

    .line 65
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_appName:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAppName:Landroid/widget/TextView;

    .line 66
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_smsPermission:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvSmspermission:Landroid/widget/TextView;

    .line 67
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_isSubmitted:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsSubmitted:Landroid/widget/TextView;

    .line 68
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_acsUrl:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrl:Landroid/widget/TextView;

    .line 69
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_isSMSRead:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsSmsRead:Landroid/widget/TextView;

    .line 70
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_isAssistEnable:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsAssistEnabled:Landroid/widget/TextView;

    .line 71
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_otp:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvOtp:Landroid/widget/TextView;

    .line 72
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_acsUrlLoaded:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrlLoaded:Landroid/widget/TextView;

    .line 73
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_sender:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvSender:Landroid/widget/TextView;

    .line 74
    sget v0, Lpaytm/assist/easypay/easypay/R$id;->tv_isAssistPopped:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsAssistPopped:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method private setValues()V
    .locals 4

    .line 36
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvredirectUrl:Landroid/widget/TextView;

    const-string v2, "redirectUrls"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvMid:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v2, "mid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvCardType:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "cardType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvOrderId:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "orderId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrlRequested:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "acsUrlRequested"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvCardUser:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "cardIssuer"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAppName:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "appName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvSmspermission:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "smsPermission"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsSubmitted:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "isSubmitted"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrl:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "acsUrl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsSmsRead:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v3, "isSMSRead"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsAssistEnabled:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvOtp:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v2, "otp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvAcsUrlLoaded:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v2, "acsUrlLoaded"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvSender:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mTvIsAssistPopped:Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    const-string v2, "isAssistPopped"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lpaytm/assist/easypay/easypay/R$layout;->activity_analytics_manager_info_display:I

    invoke-virtual {p0, v0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Leasypay/AnalyticsManagerInfoDisplayActivity;->mEventMap:Ljava/util/HashMap;

    .line 27
    invoke-direct {p0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->initView()V

    .line 32
    invoke-direct {p0}, Leasypay/AnalyticsManagerInfoDisplayActivity;->setValues()V

    .line 33
    return-void
.end method
