.class public Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ForgotActivity.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private countryCodePicker:Lcom/hbb20/CountryCodePicker;

.field private editTextMobile:Landroid/widget/EditText;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private strCountryCode:Ljava/lang/String;

.field private strMobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    .line 31
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    .line 31
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strMobile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    .line 31
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 58
    return-void
.end method

.method private verifyUserMobile()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 87
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strMobile:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->verifyUserMobile(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 88
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->setContentView(I)V

    .line 45
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 46
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 48
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->changeStatusBarColor()V

    .line 50
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->editTextMobile:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    .line 52
    return-void
.end method

.method public onLoginClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->onBackPressed()V

    .line 62
    const v0, 0x7f010026

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->overridePendingTransition(II)V

    .line 63
    return-void
.end method

.method public onOTPClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 68
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strCountryCode:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->editTextMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strMobile:Ljava/lang/String;

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Please enter mobile no"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->strMobile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 79
    const-string v0, "Please enter valid mobile no"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;->verifyUserMobile()V

    .line 83
    :goto_1
    return-void
.end method
