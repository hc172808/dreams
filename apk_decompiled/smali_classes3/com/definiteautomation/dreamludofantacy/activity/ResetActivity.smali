.class public Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ResetActivity.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private editTextConfirmPassword:Landroid/widget/EditText;

.field private editTextNewPassword:Landroid/widget/EditText;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private strConfirmPassword:Ljava/lang/String;

.field private strNewPassword:Ljava/lang/String;

.field public submitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;

    .line 31
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 87
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 89
    return-void
.end method

.method private userResetPassword()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 99
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_MOBILE"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strConfirmPassword:Ljava/lang/String;

    const-string v3, "1234567890"

    invoke-interface {v0, v3, v1, v2}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->userResetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 100
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 130
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ResetActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->editTextNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strNewPassword:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strConfirmPassword:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strNewPassword:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strConfirmPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "All fields are mandatory"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strNewPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "Please enter password"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strNewPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 71
    const-string v0, "Minimum 6 character"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strNewPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->strConfirmPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "Password mismatch"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_3
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->userResetPassword()V

    .line 81
    :cond_4
    :goto_1
    return-void
.end method

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
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->setContentView(I)V

    .line 45
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 46
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 48
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->changeStatusBarColor()V

    .line 50
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->editTextNewPassword:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f080377

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->submitButton:Landroid/widget/Button;

    .line 54
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ResetActivity$rfV14LnpcVGCTkEiFfe0Io-I8FI;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ResetActivity$rfV14LnpcVGCTkEiFfe0Io-I8FI;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
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

    .line 92
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->onBackPressed()V

    .line 93
    const v0, 0x7f010026

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;->overridePendingTransition(II)V

    .line 94
    return-void
.end method
