.class public Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private final handler:Landroid/os/Handler;

.field public pageSt:Ljava/lang/String;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;

    invoke-direct {v0, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    .line 32
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webViewGoBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    .line 32
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    .line 32
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getAboutUs()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 196
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getAboutUs(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 197
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$5;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$5;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 221
    return-void
.end method

.method private getFAQ()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 106
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getFAQ(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 107
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 131
    return-void
.end method

.method private getLegalPolicy()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 166
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getLegalPolicy(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 167
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$4;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 191
    return-void
.end method

.method private getPrivacyPolicy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 136
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getPrivacyPolicy(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 137
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 161
    return-void
.end method

.method private getTermsCondition()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 226
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getTermsCondition(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 227
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$6;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$6;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 251
    return-void
.end method

.method private webViewGoBack()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 256
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$WebviewActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$WebviewActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 71
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return v1

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 56
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 58
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 59
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WebviewActivity$paC4OQ0kFbxxQgEIO7MrxAIH1zA;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WebviewActivity$paC4OQ0kFbxxQgEIO7MrxAIH1zA;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x7f080439

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;

    invoke-direct {v5, p0, v4}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$MyWebViewClient;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 68
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WebviewActivity$d5JOWAJOQszHUahUUJ_NHPg2UWI;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WebviewActivity$d5JOWAJOQszHUahUUJ_NHPg2UWI;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "PAGE_KEY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->pageSt:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->pageSt:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "About Us"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "Terms & Conditions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "legal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "FAQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v1, "Privacy Policy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getTermsCondition()V

    goto :goto_2

    .line 93
    :pswitch_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getAboutUs()V

    .line 94
    goto :goto_2

    .line 90
    :pswitch_2
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getLegalPolicy()V

    .line 91
    goto :goto_2

    .line 87
    :pswitch_3
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getPrivacyPolicy()V

    .line 88
    goto :goto_2

    .line 84
    :pswitch_4
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getFAQ()V

    .line 101
    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fbde6f6 -> :sswitch_4
        0x10ef6 -> :sswitch_3
        0x62162b9 -> :sswitch_2
        0x4f912d2b -> :sswitch_1
        0x645efc51 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
