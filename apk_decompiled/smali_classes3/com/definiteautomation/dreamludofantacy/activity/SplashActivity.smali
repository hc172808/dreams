.class public Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private forceUpdate:Ljava/lang/String;

.field private latestVersionCode:Ljava/lang/String;

.field private latestVersionName:Ljava/lang/String;

.field private statusTv:Landroid/widget/TextView;

.field private updateDate:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private whatsNew:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->forceUpdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->forceUpdate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->whatsNew:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->whatsNew:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->updateDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->latestVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->latestVersionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->latestVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->latestVersionCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->updateUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;

    .line 37
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->statusTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 70
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 72
    return-void
.end method

.method private getAppDetails()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getAppDetails(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 113
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/AppModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 198
    return-void
.end method

.method private printHashKey()V
    .locals 9

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 77
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 78
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v6, "SHA"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 79
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 80
    const-string v7, "KeyHash:"

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .end local v5    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "md":Ljava/security/MessageDigest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private updateUserProfileFCM()V
    .locals 2

    .line 88
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$SplashActivity$bi4Pk09yIzpGNuMXrvi1nq59r3M;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$SplashActivity$bi4Pk09yIzpGNuMXrvi1nq59r3M;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateUserProfileFCM$0$SplashActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_USER_ID"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1234567890"

    invoke-interface {v1, v3, v2, v0}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateUserProfileToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 95
    .local v1, "callToken":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 107
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "callToken":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_0
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

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->setContentView(I)V

    .line 48
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 50
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->changeStatusBarColor()V

    .line 51
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->printHashKey()V

    .line 53
    const v0, 0x7f08036d

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->statusTv:Landroid/widget/TextView;

    .line 55
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_USER_ID"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->updateUserProfileFCM()V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->getAppDetails()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/SplashActivity;->statusTv:Landroid/widget/TextView;

    const-string v1, "No internet Connection, please try again later."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void
.end method
