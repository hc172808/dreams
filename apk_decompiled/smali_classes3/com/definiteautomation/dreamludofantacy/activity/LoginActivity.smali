.class public Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final REQ_CODE:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "SignInActivity"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field public btnFB:Landroid/widget/ImageView;

.field public btnGoogle:Landroid/widget/ImageView;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private editTextEmail:Landroid/widget/EditText;

.field private editTextPassword:Landroid/widget/EditText;

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private strEmail:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private strPassword:Ljava/lang/String;

.field private strUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;Lcom/facebook/login/LoginResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;
    .param p1, "x1"    # Lcom/facebook/login/LoginResult;

    .line 54
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->setFacebookData(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 148
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 150
    return-void
.end method

.method private disconnectFromGoogle()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 391
    return-void
.end method

.method static synthetic lambda$disconnectFromFacebook$3(Lcom/facebook/GraphResponse;)V
    .locals 1
    .param p0, "graphResponse"    # Lcom/facebook/GraphResponse;

    .line 397
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method private loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "strEmail"    # Ljava/lang/String;
    .param p3, "strPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "strEmail",
            "strPassword"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 191
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1, p2, p3, p1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 192
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 247
    return-void
.end method

.method private setFacebookData(Lcom/facebook/login/LoginResult;)V
    .locals 4
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loginResult"
        }
    .end annotation

    .line 251
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$rxeoYn6cFqDsDo0QuQPG40S9W8k;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$rxeoYn6cFqDsDo0QuQPG40S9W8k;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 298
    .local v0, "request":Lcom/facebook/GraphRequest;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,email,name,first_name,last_name"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 302
    return-void
.end method

.method private updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3
    .param p1, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strName:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 334
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "resArray1":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strUsername:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 339
    .end local v0    # "resArray1":[Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 342
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    const-string v0, "social"

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 345
    goto :goto_3

    .line 343
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 348
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    goto :goto_4

    .line 346
    :catch_4
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method public disconnectFromFacebook()V
    .locals 7

    .line 394
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 397
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;

    const-string v3, "/me/permissions/"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 398
    return-void
.end method

.method public handleSignInResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completedTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p1, "completedTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 315
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Lcom/google/android/gms/common/api/ApiException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signInResult:failed code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 322
    .end local v0    # "e":Lcom/google/android/gms/common/api/ApiException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$LoginActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 100
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const-string v1, "public_profile"

    const-string v2, "email"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 102
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Please check your connection"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$1$LoginActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 132
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->disconnectFromGoogle()V

    .line 135
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->signIn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCONNECT ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Please check your connection"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    :goto_1
    return-void
.end method

.method public synthetic lambda$setFacebookData$2$LoginActivity(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .line 253
    const-string v0, "id"

    const-string v1, "email"

    const-string v2, "name"

    const-string v3, "null"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 255
    :try_start_0
    const-string v4, "Response"

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a

    .line 258
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strName:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b

    .line 263
    :cond_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_a

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b

    .line 271
    :cond_1
    goto :goto_3

    .line 269
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "resArray":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strUsername:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    .line 278
    .end local v1    # "resArray":[Ljava/lang/String;
    goto :goto_5

    .line 276
    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a

    .line 281
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_b

    .line 286
    :cond_2
    goto :goto_7

    .line 284
    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_a

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string v0, "social"

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8

    .line 292
    goto :goto_9

    .line 290
    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_a

    .line 295
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_9
    goto :goto_b

    .line 293
    :catch_a
    move-exception v0

    goto :goto_a

    :catch_b
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :goto_a
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_b
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "responseCode",
            "intent"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 376
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 383
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 384
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    .line 386
    .end local v0    # "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionResult"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 79
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 80
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->setContentView(I)V

    .line 81
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 82
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 84
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->changeStatusBarColor()V

    .line 86
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->editTextEmail:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->editTextPassword:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->btnGoogle:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->btnFB:Landroid/widget/ImageView;

    .line 92
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 93
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 95
    .local v1, "isLoggedIn":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->disconnectFromFacebook()V

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->btnFB:Landroid/widget/ImageView;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$jFOT7xsPJYeZJ-5bb8wm1sho7nk;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$jFOT7xsPJYeZJ-5bb8wm1sho7nk;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 128
    .local v2, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    invoke-static {p0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v3

    iput-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 129
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->disconnectFromGoogle()V

    .line 131
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->btnGoogle:Landroid/widget/ImageView;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$ow0obwikvhKuAuaz0ukvzlpAHUI;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$ow0obwikvhKuAuaz0ukvzlpAHUI;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public onForgotClick(Landroid/view/View;)V
    .locals 2
    .param p1, "View"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/definiteautomation/dreamludofantacy/activity/ForgotActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    const v0, 0x7f010027

    const v1, 0x7f01002b

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->overridePendingTransition(II)V

    .line 161
    return-void
.end method

.method public onMainClick(Landroid/view/View;)V
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

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "All fields are mandatory"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "Please enter email"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "Please enter password"

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->strPassword:Ljava/lang/String;

    const-string v2, "regular"

    invoke-direct {p0, v2, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_3
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 368
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 369
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 370
    return-void
.end method

.method public onRegisterClick(Landroid/view/View;)V
    .locals 2
    .param p1, "View"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    const v0, 0x7f010027

    const v1, 0x7f01002b

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->overridePendingTransition(II)V

    .line 155
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 361
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 362
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->disconnectFromFacebook()V

    .line 363
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->disconnectFromGoogle()V

    .line 364
    return-void
.end method

.method public signIn()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, "signInIntent":Landroid/content/Intent;
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void
.end method
