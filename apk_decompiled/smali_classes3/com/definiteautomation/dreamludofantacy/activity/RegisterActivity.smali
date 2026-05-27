.class public Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final REQ_CODE:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "SignInActivity"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field public bottomSheetNumber:Landroid/widget/LinearLayout;

.field public btnFB:Landroid/widget/ImageView;

.field public btnGoogle:Landroid/widget/ImageView;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private countryCodePicker:Lcom/hbb20/CountryCodePicker;

.field private editTextEmail:Landroid/widget/EditText;

.field private editTextMobile:Landroid/widget/EditText;

.field private editTextName:Landroid/widget/EditText;

.field private editTextPassword:Landroid/widget/EditText;

.field private editTextReferral:Landroid/widget/EditText;

.field public emailPattern:Ljava/lang/String;

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private parentLyt:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private strCountryCode:Ljava/lang/String;

.field private strDeviceId:Ljava/lang/String;

.field private strEmail:Ljava/lang/String;

.field private strMobile:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private strPassword:Ljava/lang/String;

.field private strReferral:Ljava/lang/String;

.field private strUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 72
    const-string v0, "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->emailPattern:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Lcom/facebook/login/LoginResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
    .param p1, "x1"    # Lcom/facebook/login/LoginResult;

    .line 64
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->setFacebookData(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 200
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 201
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 202
    return-void
.end method

.method private disconnectFromGoogle()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 605
    return-void
.end method

.method static synthetic lambda$disconnectFromFacebook$8(Lcom/facebook/GraphResponse;)V
    .locals 1
    .param p0, "graphResponse"    # Lcom/facebook/GraphResponse;

    .line 611
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

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

    .line 453
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$essfBa2-B4EupkwbeIM76mOdjaA;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$essfBa2-B4EupkwbeIM76mOdjaA;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 498
    .local v0, "request":Lcom/facebook/GraphRequest;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,email,name,first_name,last_name"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 501
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 502
    return-void
.end method

.method private showBottomSheetDialog()V
    .locals 19

    .line 249
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 253
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 262
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f08016e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 263
    .local v10, "etPhoneBotom":Landroid/widget/EditText;
    const v0, 0x7f08018e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 264
    .local v11, "etCouponSocial":Landroid/widget/EditText;
    const v0, 0x7f08013a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/cardview/widget/CardView;

    .line 265
    .local v12, "cvApplyCouponSocial":Landroidx/cardview/widget/CardView;
    const v0, 0x7f0801ec

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 266
    .local v13, "imgRemoveCouponSocial":Landroid/widget/TextView;
    const v0, 0x7f0802ea

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 267
    .local v14, "promoAppliedTextSocial":Landroid/widget/TextView;
    const v0, 0x7f080411

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 268
    .local v15, "txtApplySocial":Landroid/widget/TextView;
    const v0, 0x7f080132

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/hbb20/CountryCodePicker;

    .line 269
    .local v16, "ccp":Lcom/hbb20/CountryCodePicker;
    const v0, 0x7f0800ef

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 270
    .local v7, "cardSubmitNumber":Landroid/widget/LinearLayout;
    const v0, 0x7f0801e2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    .line 272
    .local v17, "imgCheckSocial":Landroid/widget/ImageView;
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$8_WrIeFJ2z_McV26ou06K1q09wo;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v18, v7

    .end local v7    # "cardSubmitNumber":Landroid/widget/LinearLayout;
    .local v18, "cardSubmitNumber":Landroid/widget/LinearLayout;
    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$8_WrIeFJ2z_McV26ou06K1q09wo;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/EditText;)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$X7umtwh1Pq594FZniUnN0SEFVZo;

    move-object v1, v0

    move-object v3, v11

    move-object v4, v14

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$X7umtwh1Pq594FZniUnN0SEFVZo;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v0, 0x7f0801e4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$QwKhtjkBqNW3B4gq7pXfXJaoegU;

    invoke-direct {v1, v8}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$QwKhtjkBqNW3B4gq7pXfXJaoegU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$s-_pexzYXMEW3fOqNxR3-_lJOhI;

    move-object v1, v0

    move-object/from16 v3, v18

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$s-_pexzYXMEW3fOqNxR3-_lJOhI;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/hbb20/CountryCodePicker;Landroid/widget/EditText;)V

    move-object/from16 v1, v18

    .end local v18    # "cardSubmitNumber":Landroid/widget/LinearLayout;
    .local v1, "cardSubmitNumber":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, v8}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 441
    invoke-virtual {v0, v9}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 442
    iget-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 445
    :try_start_0
    iget-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    .line 449
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    iget-object v0, v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$9wyIXSSnqIqz7ORehEBjPQocN4k;

    invoke-direct {v2, v8}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$9wyIXSSnqIqz7ORehEBjPQocN4k;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 450
    return-void
.end method

.method private updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2
    .param p1, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 525
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    .line 529
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 533
    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 534
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "resArray1":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 539
    .end local v0    # "resArray1":[Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 543
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 548
    :cond_1
    goto :goto_2

    .line 557
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    .line 546
    :catch_4
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 552
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 556
    :cond_2
    goto :goto_3

    .line 554
    :catch_5
    move-exception v0

    .line 555
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_5

    .line 558
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 562
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    goto :goto_6

    .line 560
    :catch_6
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method


# virtual methods
.method public disconnectFromFacebook()V
    .locals 7

    .line 608
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    return-void

    .line 611
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$pi9MSlcPOz1yviubucst3EMJi0c;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$pi9MSlcPOz1yviubucst3EMJi0c;

    const-string v3, "/me/permissions/"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 612
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

    .line 512
    .local p1, "completedTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 515
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 519
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

    .line 520
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->updateUI(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 522
    .end local v0    # "e":Lcom/google/android/gms/common/api/ApiException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$RegisterActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 151
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const-string v1, "public_profile"

    const-string v2, "email"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 153
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Please check your connection"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$1$RegisterActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 182
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromGoogle()V

    .line 185
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->signIn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCONNECT ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Please check your connection"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    :goto_1
    return-void
.end method

.method public synthetic lambda$setFacebookData$7$RegisterActivity(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .line 455
    const-string v0, "name"

    const-string v1, "id"

    const-string v2, "email"

    const-string v3, "null"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 457
    :try_start_0
    const-string v4, "Response"

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9

    .line 460
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a

    .line 465
    :cond_0
    goto :goto_1

    .line 463
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9

    .line 468
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    .line 470
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_a

    .line 474
    :cond_1
    goto :goto_3

    .line 472
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_a

    .line 483
    :cond_2
    goto :goto_5

    .line 481
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 482
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "resArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6

    .line 492
    .end local v0    # "resArray":[Ljava/lang/String;
    :cond_3
    goto :goto_7

    .line 490
    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_9

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    goto :goto_9

    .line 493
    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_9
    return-void
.end method

.method public synthetic lambda$showBottomSheetDialog$2$RegisterActivity(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1
    .param p1, "cvApplyCouponSocial"    # Landroidx/cardview/widget/CardView;
    .param p2, "imgRemoveCouponSocial"    # Landroid/widget/TextView;
    .param p3, "promoAppliedTextSocial"    # Landroid/widget/TextView;
    .param p4, "imgCheckSocial"    # Landroid/widget/ImageView;
    .param p5, "etCouponSocial"    # Landroid/widget/EditText;
    .param p6, "v"    # Landroid/view/View;

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 274
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public synthetic lambda$showBottomSheetDialog$3$RegisterActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 9
    .param p1, "etCouponSocial"    # Landroid/widget/EditText;
    .param p2, "promoAppliedTextSocial"    # Landroid/widget/TextView;
    .param p3, "cvApplyCouponSocial"    # Landroidx/cardview/widget/CardView;
    .param p4, "imgRemoveCouponSocial"    # Landroid/widget/TextView;
    .param p5, "imgCheckSocial"    # Landroid/widget/ImageView;
    .param p6, "v"    # Landroid/view/View;

    .line 283
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    .line 285
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->verifyUserRefer(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 287
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v8, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/EditText;)V

    invoke-interface {v0, v8}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 358
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_0
    return-void
.end method

.method public synthetic lambda$showBottomSheetDialog$4$RegisterActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "view1"    # Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showBottomSheetDialog$5$RegisterActivity(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/hbb20/CountryCodePicker;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "cardSubmitNumber"    # Landroid/widget/LinearLayout;
    .param p2, "etPhoneBotom"    # Landroid/widget/EditText;
    .param p3, "ccp"    # Lcom/hbb20/CountryCodePicker;
    .param p4, "etCouponSocial"    # Landroid/widget/EditText;
    .param p5, "v"    # Landroid/view/View;

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 365
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 366
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    nop

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    .line 372
    invoke-virtual {p3}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strCountryCode:Ljava/lang/String;

    .line 373
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 378
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface/range {v1 .. v6}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->verifyUserRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 379
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 428
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    goto :goto_1

    .line 430
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 431
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->parentLyt:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v2, "Mobile Number should be of 8 to 13 Digits"

    invoke-static {v1, v2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 432
    .local v0, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, "view12":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 434
    .local v2, "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 435
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 438
    .end local v0    # "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    .end local v1    # "view12":Landroid/view/View;
    .end local v2    # "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :goto_1
    return-void
.end method

.method public synthetic lambda$showBottomSheetDialog$6$RegisterActivity(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

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

    .line 589
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 590
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 594
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 597
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 598
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    .line 600
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

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
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

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 92
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 93
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->setContentView(I)V

    .line 94
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 95
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 96
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strDeviceId:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->changeStatusBarColor()V

    .line 100
    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextName:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextEmail:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextMobile:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextPassword:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextReferral:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    .line 106
    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->parentLyt:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 108
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "FULL_NAME_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "USERNAME_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "EMAIL_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "PASSWORD_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_1
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 132
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    :cond_2
    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->btnGoogle:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->btnFB:Landroid/widget/ImageView;

    .line 143
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 144
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 146
    .local v1, "isLoggedIn":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromFacebook()V

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->btnFB:Landroid/widget/ImageView;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$ur32neKNYU5ZpcyndFcKsfRn6Ns;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$ur32neKNYU5ZpcyndFcKsfRn6Ns;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 178
    .local v2, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    invoke-static {p0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v3

    iput-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 179
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromGoogle()V

    .line 181
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->btnGoogle:Landroid/widget/ImageView;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$GJxbaozC7j09NWRcb5fdR5VlDqQ;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$GJxbaozC7j09NWRcb5fdR5VlDqQ;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v3, 0x7f0800c6

    invoke-virtual {p0, v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->bottomSheetNumber:Landroid/widget/LinearLayout;

    .line 195
    invoke-static {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    iput-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 196
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

    .line 205
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->onBackPressed()V

    .line 206
    const v0, 0x7f010026

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->overridePendingTransition(II)V

    .line 208
    return-void
.end method

.method public onMainClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    nop

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strCountryCode:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextMobile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->editTextReferral:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strReferral:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strMobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "All fields are mandatory"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->emailPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const-string v1, "Enter valid email id"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "Please enter password"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 232
    const-string v1, "Minimum 6 character"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 235
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strEmail:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 236
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "resArray":[Ljava/lang/String;
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->strUsername:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .end local v1    # "resArray":[Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 239
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->showBottomSheetDialog()V

    .line 246
    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 582
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 583
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 584
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 575
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 576
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromFacebook()V

    .line 577
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->disconnectFromGoogle()V

    .line 578
    return-void
.end method

.method public signIn()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 507
    .local v0, "signInIntent":Landroid/content/Intent;
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return-void
.end method
