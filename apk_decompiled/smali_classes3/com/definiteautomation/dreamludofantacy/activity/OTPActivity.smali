.class public Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OTPActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneAuth"


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private auth:Lcom/google/firebase/auth/FirebaseAuth;

.field public counter:I

.field private deviceIdSt:Ljava/lang/String;

.field public mDatabase:Lcom/google/firebase/database/DatabaseReference;

.field private mobileSt:Ljava/lang/String;

.field private otpView:Lcom/goodiebag/pinview/Pinview;

.field private pageSt:Ljava/lang/String;

.field private phoneVerificationId:Ljava/lang/String;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private reEnterTv:Landroid/widget/TextView;

.field private resendToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

.field private timerTv:Landroid/widget/TextView;

.field private tokenSt:Ljava/lang/String;

.field private verificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->counter:I

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->timerTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->reEnterTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .param p1, "x1"    # Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 49
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->signInWithPhoneAuthCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method static synthetic access$302(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->phoneVerificationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .param p1, "x1"    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 49
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->resendToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    return-object p1
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->registerUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method private changeStatusBarColor()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 120
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 122
    return-void
.end method

.method private customerRegistrationWithRefer()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 257
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$DpLWUf53JJko2eiTuyKIZYNqsR8;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$DpLWUf53JJko2eiTuyKIZYNqsR8;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 305
    return-void
.end method

.method private customerRegistrationWithoutRefer()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 310
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$mYQSgOsJ2qT6MkXkeDv8LJ60a2Q;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$mYQSgOsJ2qT6MkXkeDv8LJ60a2Q;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 358
    return-void
.end method

.method private registerUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 361
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "Users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->mDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 364
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LsKKbfimSDeHSFdE-RbQOTxxRo8;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LsKKbfimSDeHSFdE-RbQOTxxRo8;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 393
    return-void
.end method

.method private resendVerificationCode(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 8
    .param p1, "token"    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance()Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->mobileSt:Ljava/lang/String;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->verificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    const-wide/16 v2, 0x3c

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    .line 251
    return-void
.end method

.method private setUpVerificationCallbacks()V
    .locals 1

    .line 166
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;

    invoke-direct {v0, p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->verificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 192
    return-void
.end method

.method private signInWithPhoneAuthCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2
    .param p1, "credential"    # Lcom/google/firebase/auth/PhoneAuthCredential;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "credential"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->auth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LkKxjctb-wPoq37XIh9K7Bjd7BY;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LkKxjctb-wPoq37XIh9K7Bjd7BY;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 220
    return-void
.end method


# virtual methods
.method public synthetic lambda$customerRegistrationWithRefer$1$OTPActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 12
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 258
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->tokenSt:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_FULL_NAME"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_USERNAME"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_EMAIL"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_COUNTRY_CODE"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_MOBILE"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_PASSWORD"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->tokenSt:Ljava/lang/String;

    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->deviceIdSt:Ljava/lang/String;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_REFER_CODE"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "1234567890"

    invoke-interface/range {v1 .. v11}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->customerRegistrationWithRefer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 267
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$4;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 304
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_1
    return-void
.end method

.method public synthetic lambda$customerRegistrationWithoutRefer$2$OTPActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 11
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 311
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->tokenSt:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_FULL_NAME"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_USERNAME"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_EMAIL"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_COUNTRY_CODE"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_MOBILE"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_PASSWORD"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->tokenSt:Ljava/lang/String;

    iget-object v10, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->deviceIdSt:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface/range {v1 .. v10}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->customerRegistrationWithoutRefer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 320
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$5;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 357
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_1
    return-void
.end method

.method public synthetic lambda$registerUser$3$OTPActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1, "task1"    # Lcom/google/android/gms/tasks/Task;

    .line 382
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v0, "mainIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->finish()V

    .line 390
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public synthetic lambda$registerUser$4$OTPActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 365
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 373
    .local v0, "device_token":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v1, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_FULL_NAME"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "status"

    const-string v3, "Hi there I\'m using Ludo King Cash App."

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v2, "image"

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "thumb_image"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v2, "device_token"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->mDatabase:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$kMHt5byDxtN5oa1ZlCT32M18W8A;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$kMHt5byDxtN5oa1ZlCT32M18W8A;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 392
    .end local v0    # "device_token":Ljava/lang/String;
    .end local v1    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public synthetic lambda$signInWithPhoneAuthCredential$0$OTPActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->pageSt:Ljava/lang/String;

    const-string v1, "Register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_REFER_CODE"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->customerRegistrationWithRefer()V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->customerRegistrationWithoutRefer()V

    goto :goto_0

    .line 207
    :cond_1
    const-string v0, "Otp is verified.."

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    const-class v0, Lcom/definiteautomation/dreamludofantacy/activity/ResetActivity;

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->fireIntent(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->finish()V

    .line 210
    const v0, 0x7f010027

    const v1, 0x7f01002b

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_3

    .line 216
    const/4 v0, 0x0

    const-string v1, "verification code entered was invalid."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->setContentView(I)V

    .line 73
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->auth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 74
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 75
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 76
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->deviceIdSt:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->changeStatusBarColor()V

    .line 80
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PAGE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->pageSt:Ljava/lang/String;

    .line 84
    :cond_0
    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/goodiebag/pinview/Pinview;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->otpView:Lcom/goodiebag/pinview/Pinview;

    .line 85
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->reEnterTv:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0803ce

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->timerTv:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->setUpVerificationCallbacks()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_COUNTRY_CODE"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_MOBILE"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->mobileSt:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance()Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->mobileSt:Ljava/lang/String;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->verificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    .line 97
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;

    const-wide/32 v10, 0xea60

    const-wide/16 v12, 0x3e8

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;JJ)V

    .line 115
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$1;->start()Landroid/os/CountDownTimer;

    .line 116
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

    .line 125
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->onBackPressed()V

    .line 126
    const v0, 0x7f010026

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->overridePendingTransition(II)V

    .line 127
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 397
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 398
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 399
    return-void
.end method

.method public onResendClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->resendToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->resendVerificationCode(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    .line 142
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;JJ)V

    .line 160
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$2;->start()Landroid/os/CountDownTimer;

    .line 162
    return-void
.end method

.method public onSubmitClick(Landroid/view/View;)V
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

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->verifyCode()V

    .line 138
    return-void
.end method

.method public verifyCode()V
    .locals 3

    .line 224
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->otpView:Lcom/goodiebag/pinview/Pinview;

    invoke-virtual {v1}, Lcom/goodiebag/pinview/Pinview;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "code":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->phoneVerificationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v0

    .line 233
    .local v0, "credential":Lcom/google/firebase/auth/PhoneAuthCredential;
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->signInWithPhoneAuthCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "credential":Lcom/google/firebase/auth/PhoneAuthCredential;
    goto :goto_2

    .line 234
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 236
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    goto :goto_3

    .line 239
    :cond_0
    const-string v2, "verification code entered was invalid."

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    :goto_3
    return-void
.end method
