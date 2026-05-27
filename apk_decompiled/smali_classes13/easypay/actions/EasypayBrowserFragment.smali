.class public Leasypay/actions/EasypayBrowserFragment;
.super Landroidx/fragment/app/Fragment;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Leasypay/listeners/WebClientListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final SMS_CONSENT_REQUEST:I = 0xb


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private browser:Landroid/webkit/WebView;

.field private currentCustomJsHelper:Leasypay/actions/CustomJsHelper;

.field private currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

.field private currentOtpHelper:Leasypay/actions/OtpHelper;

.field private currentPasswordHelper:Leasypay/actions/PasswordHelper;

.field private currentProceedHelper:Leasypay/actions/ProceedHelper;

.field private currentRadioHelper:Leasypay/actions/RadioHelper;

.field private downloadListener:Landroid/content/BroadcastReceiver;

.field private historicTvArray:[Landroid/widget/TextView;

.field private in:Ljava/io/InputStream;

.field private isAssistNewFlow:Z

.field public isAssistVisible:Z

.field isHideAssistClicked:Z

.field isNbOtpFired:Z

.field private isPaytmAssistOnOffEventSent:Z

.field isSaveIdChecked:Z

.field private isSavePointer:Z

.field private isShow:Z

.field private jsonActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ll_historic_id:Landroid/widget/LinearLayout;

.field private mAllowEasyPay:Z

.field private mAnalyticsManager:Leasypay/actions/GAEventManager;

.field private mBottomContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBtnSubmitOtp:Landroid/widget/Button;

.field private mCurrentUserId:Ljava/lang/String;

.field private mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

.field private mEasyPayHelper:Leasypay/manager/EasyPayHelper;

.field private mEtCurrentText:Ljava/lang/String;

.field private mHideButton:Landroid/widget/ImageView;

.field mInputPassCode:Leasypay/widget/OtpEditText;

.field mLoaderCount:I

.field private mNBUserId:Landroid/widget/EditText;

.field private mNbButton:Landroid/widget/Button;

.field private mNbImageNext:Landroid/widget/ImageButton;

.field private mNbImagePrevious:Landroid/widget/ImageButton;

.field private mNbOpMapSearch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mNbPwd:Landroid/widget/EditText;

.field private mNbUserIdWatcher:Landroid/text/TextWatcher;

.field private mNbUserName:Landroid/widget/CheckBox;

.field private mOtpTimer:Landroid/widget/TextView;

.field private mPaytmAssistBanner:Landroid/widget/ImageView;

.field private mRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mShowAssist:Landroid/widget/ImageView;

.field private mShowSuggestionBox:Z

.field private mTvOtpLabel:Landroid/widget/TextView;

.field private mTvTapToPause:Landroid/widget/TextView;

.field private mWebViewClient:Leasypay/manager/EasypayWebViewClient;

.field private nbHelper:Leasypay/actions/NBHelper;

.field private nbPwdViewer:Landroid/widget/TextView;

.field private nbUserId:Ljava/lang/String;

.field private netBankingHelper:Leasypay/actions/NetBankingHelper;

.field private netBankingLoginLayout:Landroid/widget/LinearLayout;

.field private opMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private parentPanel:Landroid/widget/RelativeLayout;

.field private pwdBuilder:Ljava/lang/StringBuilder;

.field private redirectUrl:Ljava/lang/StringBuilder;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private sharedPrefForEvents:Landroid/content/SharedPreferences;

.field private smsVerificationReceiver:Landroid/content/BroadcastReceiver;

.field private timeFinish:Ljava/lang/Long;

.field private timeStart:Ljava/lang/Long;

.field private timer:Landroid/os/CountDownTimer;

.field private tvIdOne:Landroid/widget/TextView;

.field private tvIdThree:Landroid/widget/TextView;

.field private tvIdTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->redirectUrl:Ljava/lang/StringBuilder;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isHideAssistClicked:Z

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    .line 124
    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    .line 126
    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isPaytmAssistOnOffEventSent:Z

    .line 127
    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isSavePointer:Z

    .line 128
    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    .line 129
    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistNewFlow:Z

    .line 130
    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowSuggestionBox:Z

    .line 138
    const-string v1, ""

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mEtCurrentText:Ljava/lang/String;

    .line 147
    iput v0, p0, Leasypay/actions/EasypayBrowserFragment;->mLoaderCount:I

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    .line 167
    new-instance v0, Leasypay/actions/EasypayBrowserFragment$1;

    invoke-direct {v0, p0}, Leasypay/actions/EasypayBrowserFragment$1;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->downloadListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->loadConfigurationFromSharedPrefs()V

    return-void
.end method

.method static synthetic access$100(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->loadConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImagePrevious:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImageNext:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mOtpTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Leasypay/actions/EasypayBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->startSubmission()V

    return-void
.end method

.method static synthetic access$300(Leasypay/actions/EasypayBrowserFragment;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1, p2}, Leasypay/actions/EasypayBrowserFragment;->toggleSavedUserIdTextView(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Leasypay/actions/EasypayBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mEtCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Leasypay/actions/EasypayBrowserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment;->mEtCurrentText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method static synthetic access$600(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBottomContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method static synthetic access$700(Leasypay/actions/EasypayBrowserFragment;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    return-object v0
.end method

.method static synthetic access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 99
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->netBankingLoginLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private assistNewFlow(Landroid/webkit/WebView;Ljava/lang/String;Leasypay/entity/AssistDetailsResponse;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "detailsResponse"    # Leasypay/entity/AssistDetailsResponse;

    .line 696
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In assistNewFlow():mdetailresponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v1}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v1}, Leasypay/entity/AssistDetailsResponse;->getResponse()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    if-eqz v0, :cond_8

    .line 698
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    .line 699
    invoke-virtual {p3}, Leasypay/entity/AssistDetailsResponse;->getResponse()Ljava/util/ArrayList;

    move-result-object v0

    .line 700
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/AssistUrlResponse;>;"
    invoke-virtual {p3}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    const-string v1, "NB"

    invoke-virtual {p3}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 733
    invoke-direct {p0, p2, p3}, Leasypay/actions/EasypayBrowserFragment;->loadActions(Ljava/lang/String;Leasypay/entity/AssistDetailsResponse;)V

    goto/16 :goto_3

    .line 701
    :cond_1
    :goto_0
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "com.paytm.com.paytm.pgsdk.easypay.PREFERENCE_FILE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPref:Landroid/content/SharedPreferences;

    .line 702
    const-string v2, "enableEasyPay"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->mAllowEasyPay:Z

    .line 703
    iget-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isPaytmAssistOnOffEventSent:Z

    if-nez v1, :cond_2

    .line 704
    const/4 v1, 0x1

    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isPaytmAssistOnOffEventSent:Z

    .line 706
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/entity/AssistUrlResponse;

    .line 707
    .local v2, "urlResponse":Leasypay/entity/AssistUrlResponse;
    invoke-virtual {v2}, Leasypay/entity/AssistUrlResponse;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Leasypay/actions/EasypayBrowserFragment;->containsBankUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 708
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_3

    .line 709
    invoke-virtual {v3, p2}, Leasypay/actions/GAEventManager;->assistAcsUrl(Ljava/lang/String;)V

    .line 711
    :cond_3
    invoke-virtual {v2}, Leasypay/entity/AssistUrlResponse;->getOperations()Ljava/util/ArrayList;

    move-result-object v3

    .line 712
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/Operation;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 713
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leasypay/entity/Operation;

    .line 714
    .local v5, "operation":Leasypay/entity/Operation;
    iget-object v6, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Leasypay/entity/Operation;->getActionType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Leasypay/entity/Operation;->getActionType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    .end local v5    # "operation":Leasypay/entity/Operation;
    goto :goto_2

    .line 719
    .end local v2    # "urlResponse":Leasypay/entity/AssistUrlResponse;
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/Operation;>;"
    :cond_4
    goto :goto_1

    .line 720
    :cond_5
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    if-nez v1, :cond_6

    .line 721
    const-string v1, "making object newotphelper"

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    new-instance v1, Leasypay/actions/NewOtpHelper;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    invoke-direct {v1, v2, p1, p0, v3}, Leasypay/actions/NewOtpHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    .line 725
    :cond_6
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 726
    const-string v1, "Easypay browser fragment:fire do action-Filler from web "

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Leasypay/actions/NewOtpHelper;->setMap(Ljava/util/HashMap;)V

    .line 728
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    const-string v2, "FILLER_FROM_WEB"

    invoke-virtual {v1, v2}, Leasypay/actions/NewOtpHelper;->doAction(Ljava/lang/String;)V

    goto :goto_3

    .line 730
    :cond_7
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->resetActions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/AssistUrlResponse;>;"
    :cond_8
    :goto_3
    goto :goto_4

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private bindClickHandler()V
    .locals 1

    .line 343
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImageNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvOtpLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvTapToPause:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mPaytmAssistBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowAssist:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-void
.end method

.method private containsBankUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webUrl"    # Ljava/lang/String;

    .line 771
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private disableAutoSubmitUI()V
    .locals 2

    .line 1580
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvTapToPause:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mOtpTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1583
    return-void
.end method

.method private doActions(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 32
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "routedAction"    # Ljava/lang/String;

    .line 775
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "EXCEPTION"

    const/4 v1, 0x0

    .line 779
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    const/4 v15, 0x1

    :try_start_0
    invoke-direct {v10, v12}, Leasypay/actions/EasypayBrowserFragment;->getActions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 780
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->sharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 781
    const-string v2, "enableEasyPay"

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Leasypay/actions/EasypayBrowserFragment;->mAllowEasyPay:Z

    .line 782
    iget-boolean v0, v10, Leasypay/actions/EasypayBrowserFragment;->isPaytmAssistOnOffEventSent:Z

    if-nez v0, :cond_0

    .line 783
    iput-boolean v15, v10, Leasypay/actions/EasypayBrowserFragment;->isPaytmAssistOnOffEventSent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    move-object/from16 v16, v1

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    invoke-static {v13, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v16, v1

    .line 791
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v16, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 792
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    .line 793
    .local v9, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "active"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 794
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    goto :goto_1

    .line 797
    :cond_1
    iput-object v9, v10, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    .line 798
    const-string v0, "selector"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 799
    .local v8, "selector":Ljava/lang/String;
    const-string v0, "customjs"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 800
    .local v1, "customjs":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 801
    const-string v1, "customJs=function(){};"

    move-object v7, v1

    goto :goto_2

    .line 800
    :cond_2
    move-object v7, v1

    .line 803
    .end local v1    # "customjs":Ljava/lang/String;
    .local v7, "customjs":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function(){ try { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "functionStart"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v1, "functionEnd"

    const-string v2, "}catch(e){ Android.logError(\" + element not found + \"); } })();"

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v6, "if(fields.length == 0){Android.showLog(\'not found - \' + fields.length); throw \'error\';}"

    .line 807
    .local v6, "fieldsChecker":Ljava/lang/String;
    const-string v1, "msgPattern"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    .line 808
    .local v18, "msgPattern":Ljava/lang/String;
    const-string v1, "msgSender"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/String;

    .line 809
    .local v19, "msgSender":Ljava/lang/String;
    const-string v1, "msgKeywords"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    .line 811
    .local v20, "msgKeywords":Ljava/lang/String;
    const-string v1, "action"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 812
    .local v5, "actionName":Ljava/lang/String;
    const-string v1, "selectorType"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 813
    .local v4, "selectorType":Ljava/lang/String;
    const-string v1, "buttonSelectorName"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/String;

    .line 814
    .local v21, "passwordSubmitButton":Ljava/lang/String;
    const-string v1, "userId"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 815
    .local v3, "userId":Ljava/lang/String;
    const-string v1, ""

    .line 816
    .local v1, "fields":Ljava/lang/String;
    const/16 v22, 0x5

    const/16 v23, 0x2

    const/16 v24, -0x1

    const-string v2, "netbanking"

    if-eqz v4, :cond_6

    .line 817
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :cond_3
    goto :goto_3

    :sswitch_0
    const-string v14, "password"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x4

    goto :goto_4

    :sswitch_1
    const-string v14, "text"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x5

    goto :goto_4

    :sswitch_2
    const-string v14, "name"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_4

    :sswitch_3
    const-string v14, "id"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x2

    goto :goto_4

    :sswitch_4
    const-string v14, "custom"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    goto :goto_4

    :sswitch_5
    const-string v14, "tagname"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :goto_3
    const/4 v14, -0x1

    :goto_4
    const-string v15, "var fields = document.getElementsByName(\'"

    move-object/from16 v27, v1

    .end local v1    # "fields":Ljava/lang/String;
    .local v27, "fields":Ljava/lang/String;
    const-string v1, "\');"

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_5

    .line 855
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v27    # "fields":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/lang/String;
    goto/16 :goto_6

    .line 850
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :pswitch_1
    const-string v1, "customSelector"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 851
    .local v1, "customSelector":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 852
    .end local v27    # "fields":Ljava/lang/String;
    .local v14, "fields":Ljava/lang/String;
    goto/16 :goto_6

    .line 837
    .end local v1    # "customSelector":Ljava/lang/String;
    .end local v14    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :pswitch_2
    if-eqz v5, :cond_7

    .line 838
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v14, "\'); var fields = field ? [field] : [];"

    const-string v15, "var field = document.getElementById(\'"

    if-eqz v1, :cond_4

    iget-boolean v1, v10, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    if-nez v1, :cond_4

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v27    # "fields":Ljava/lang/String;
    .local v1, "fields":Ljava/lang/String;
    goto/16 :goto_6

    .line 843
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v27    # "fields":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/lang/String;
    goto :goto_6

    .line 833
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :pswitch_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "var fields = document.getElementsByTagName(\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .end local v27    # "fields":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/lang/String;
    move-object v14, v1

    goto :goto_6

    .line 819
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :pswitch_4
    if-eqz v5, :cond_7

    .line 820
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-boolean v14, v10, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    if-nez v14, :cond_5

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "var field = document.getElementsByName("

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "); var fields = field ? [field] : [];"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v27    # "fields":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/lang/String;
    goto :goto_6

    .line 827
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v27    # "fields":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/lang/String;
    goto :goto_6

    .line 816
    :cond_6
    move-object/from16 v27, v1

    .line 861
    .end local v1    # "fields":Ljava/lang/String;
    .restart local v27    # "fields":Ljava/lang/String;
    :cond_7
    :goto_5
    move-object/from16 v14, v27

    .end local v27    # "fields":Ljava/lang/String;
    .restart local v14    # "fields":Ljava/lang/String;
    :goto_6
    const-string v1, "fields"

    invoke-interface {v9, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v15, ""

    if-eqz v5, :cond_13

    .line 864
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_8
    goto :goto_7

    :sswitch_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    goto :goto_8

    :sswitch_7
    const-string v0, "otphelper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    goto :goto_8

    :sswitch_8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x4

    goto :goto_8

    :sswitch_9
    const-string v0, "radiohelper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    goto :goto_8

    :sswitch_a
    const-string v0, "passwordtracker"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :sswitch_b
    const-string v0, "proceedhelper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_8

    :goto_7
    const/4 v2, -0x1

    :goto_8
    const-string v0, "time not captured"

    packed-switch v2, :pswitch_data_1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v23, "userId":Ljava/lang/String;
    .local v24, "selectorType":Ljava/lang/String;
    .local v25, "actionName":Ljava/lang/String;
    .local v27, "fieldsChecker":Ljava/lang/String;
    .local v28, "customjs":Ljava/lang/String;
    .local v29, "selector":Ljava/lang/String;
    .local v30, "fields":Ljava/lang/String;
    goto/16 :goto_10

    .line 917
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :pswitch_5
    iget-boolean v1, v10, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    if-nez v1, :cond_f

    .line 919
    :try_start_1
    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_b

    .line 922
    :try_start_2
    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    if-eqz v2, :cond_9

    .line 923
    invoke-virtual {v1, v12}, Leasypay/actions/GAEventManager;->assistAcsUrl(Ljava/lang/String;)V

    .line 926
    :cond_9
    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    if-eqz v1, :cond_a

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "timeStampStart":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "timeStampFinish":Ljava/lang/String;
    goto :goto_9

    .line 930
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v1    # "timeStampFinish":Ljava/lang/String;
    :cond_a
    move-object v1, v0

    .line 931
    .local v1, "timeStampStart":Ljava/lang/String;
    move-object/from16 v31, v1

    move-object v1, v0

    move-object/from16 v0, v31

    .line 934
    .restart local v0    # "timeStampStart":Ljava/lang/String;
    .local v1, "timeStampFinish":Ljava/lang/String;
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 935
    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v2, v0}, Leasypay/actions/GAEventManager;->onAcsUrlRequested(Ljava/lang/String;)V

    .line 936
    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v2, v1}, Leasypay/actions/GAEventManager;->onAcsUrlLoaded(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    .line 955
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v1    # "timeStampFinish":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    goto/16 :goto_c

    .line 941
    :cond_b
    :goto_a
    :try_start_3
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->netBankingHelper:Leasypay/actions/NetBankingHelper;

    if-nez v0, :cond_c

    .line 942
    new-instance v0, Leasypay/actions/NetBankingHelper;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v23, v3

    .end local v3    # "userId":Ljava/lang/String;
    .restart local v23    # "userId":Ljava/lang/String;
    move-object/from16 v3, p1

    move-object/from16 v24, v4

    .end local v4    # "selectorType":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v25, v5

    .end local v5    # "actionName":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    move-object v5, v9

    move-object/from16 v27, v6

    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    move-object/from16 v6, v22

    :try_start_4
    invoke-direct/range {v1 .. v6}, Leasypay/actions/NetBankingHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->netBankingHelper:Leasypay/actions/NetBankingHelper;

    goto :goto_b

    .line 944
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    :cond_c
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    iget-boolean v0, v0, Leasypay/actions/NetBankingHelper;->isSubmitClicked:Z

    if-eqz v0, :cond_d

    .line 945
    return-void

    .line 947
    :cond_d
    new-instance v0, Leasypay/actions/NetBankingHelper;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, v10, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    move-object v1, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Leasypay/actions/NetBankingHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->netBankingHelper:Leasypay/actions/NetBankingHelper;

    .line 952
    :goto_b
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_e

    .line 953
    invoke-virtual {v0, v12}, Leasypay/actions/GAEventManager;->onPasswordHelperURL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 958
    :cond_e
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    goto/16 :goto_10

    .line 955
    :catch_2
    move-exception v0

    goto :goto_c

    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .line 956
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 957
    invoke-static {v13, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    goto/16 :goto_10

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    :cond_f
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    goto/16 :goto_10

    .line 914
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    new-instance v0, Leasypay/actions/CustomJsHelper;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v11, v10, v9}, Leasypay/actions/CustomJsHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentCustomJsHelper:Leasypay/actions/CustomJsHelper;

    .line 915
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    goto/16 :goto_10

    .line 884
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    :try_start_5
    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    if-nez v1, :cond_12

    .line 887
    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v1, :cond_11

    .line 889
    :try_start_6
    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    if-eqz v1, :cond_10

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "timeStampStart":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "timeStampFinish":Ljava/lang/String;
    goto :goto_d

    .line 893
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v1    # "timeStampFinish":Ljava/lang/String;
    :cond_10
    move-object v1, v0

    .line 894
    .local v1, "timeStampStart":Ljava/lang/String;
    move-object/from16 v31, v1

    move-object v1, v0

    move-object/from16 v0, v31

    .line 897
    .restart local v0    # "timeStampStart":Ljava/lang/String;
    .local v1, "timeStampFinish":Ljava/lang/String;
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 898
    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v2, v0}, Leasypay/actions/GAEventManager;->onAcsUrlRequested(Ljava/lang/String;)V

    .line 899
    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v2, v1}, Leasypay/actions/GAEventManager;->onAcsUrlLoaded(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_e

    .line 908
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v1    # "timeStampFinish":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    goto :goto_f

    .line 904
    :cond_11
    :goto_e
    :try_start_7
    new-instance v0, Leasypay/actions/OtpHelper;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, v10, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v1, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v5, v9

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    move-object/from16 v28, v7

    .end local v7    # "customjs":Ljava/lang/String;
    .restart local v28    # "customjs":Ljava/lang/String;
    move-object/from16 v7, v18

    move-object/from16 v29, v8

    .end local v8    # "selector":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    move-object/from16 v8, v20

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v30    # "fields":Ljava/lang/String;
    move-object/from16 v9, v22

    :try_start_8
    invoke-direct/range {v1 .. v9}, Leasypay/actions/OtpHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 911
    goto/16 :goto_10

    .line 908
    :catch_5
    move-exception v0

    goto :goto_f

    .line 906
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :cond_12
    return-void

    .line 908
    :catch_6
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .line 909
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "customjs":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    .restart local v30    # "fields":Ljava/lang/String;
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 910
    invoke-static {v13, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_10

    .line 880
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v28    # "customjs":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    .restart local v30    # "fields":Ljava/lang/String;
    new-instance v0, Leasypay/actions/RadioHelper;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v11, v10, v14}, Leasypay/actions/RadioHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentRadioHelper:Leasypay/actions/RadioHelper;

    .line 881
    goto/16 :goto_10

    .line 873
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v28    # "customjs":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    .restart local v30    # "fields":Ljava/lang/String;
    new-instance v0, Leasypay/actions/ProceedHelper;

    iget-object v1, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v11, v10, v14}, Leasypay/actions/ProceedHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentProceedHelper:Leasypay/actions/ProceedHelper;

    .line 875
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_14

    .line 876
    invoke-virtual {v0, v12}, Leasypay/actions/GAEventManager;->onProceedHelperURL(Ljava/lang/String;)V

    goto :goto_10

    .line 866
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v28    # "customjs":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    .restart local v30    # "fields":Ljava/lang/String;
    new-instance v0, Leasypay/actions/PasswordHelper;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Leasypay/actions/PasswordHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentPasswordHelper:Leasypay/actions/PasswordHelper;

    .line 868
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_14

    .line 869
    invoke-virtual {v0, v12}, Leasypay/actions/GAEventManager;->onPasswordHelperURL(Ljava/lang/String;)V

    goto :goto_10

    .line 863
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "selectorType":Ljava/lang/String;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "fieldsChecker":Ljava/lang/String;
    .restart local v7    # "customjs":Ljava/lang/String;
    .restart local v8    # "selector":Ljava/lang/String;
    .restart local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fields":Ljava/lang/String;
    :cond_13
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object v14, v9

    .line 962
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "selectorType":Ljava/lang/String;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "fieldsChecker":Ljava/lang/String;
    .end local v7    # "customjs":Ljava/lang/String;
    .end local v8    # "selector":Ljava/lang/String;
    .end local v9    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "userId":Ljava/lang/String;
    .restart local v24    # "selectorType":Ljava/lang/String;
    .restart local v25    # "actionName":Ljava/lang/String;
    .restart local v27    # "fieldsChecker":Ljava/lang/String;
    .restart local v28    # "customjs":Ljava/lang/String;
    .restart local v29    # "selector":Ljava/lang/String;
    .restart local v30    # "fields":Ljava/lang/String;
    :cond_14
    :goto_10
    const-string v0, "nbotphelper"

    move-object/from16 v9, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 963
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_15

    .line 964
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Leasypay/actions/GAEventManager;->isNbOtpSelected(Z)V

    goto :goto_11

    .line 963
    :cond_15
    const/4 v8, 0x1

    .line 965
    :goto_11
    const/4 v1, 0x3

    invoke-virtual {v10, v15, v1}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    .line 966
    iget-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    if-nez v0, :cond_16

    .line 967
    new-instance v0, Leasypay/actions/OtpHelper;

    iget-object v2, v10, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v15, v10, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    move-object v1, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    const/16 v22, 0x1

    move-object/from16 v8, v20

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Leasypay/actions/OtpHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v0, v10, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    goto :goto_12

    .line 969
    :cond_16
    return-void

    .line 962
    :cond_17
    const/16 v22, 0x1

    .line 973
    .end local v14    # "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "msgPattern":Ljava/lang/String;
    .end local v19    # "msgSender":Ljava/lang/String;
    .end local v20    # "msgKeywords":Ljava/lang/String;
    .end local v21    # "passwordSubmitButton":Ljava/lang/String;
    .end local v23    # "userId":Ljava/lang/String;
    .end local v24    # "selectorType":Ljava/lang/String;
    .end local v25    # "actionName":Ljava/lang/String;
    .end local v27    # "fieldsChecker":Ljava/lang/String;
    .end local v28    # "customjs":Ljava/lang/String;
    .end local v29    # "selector":Ljava/lang/String;
    .end local v30    # "fields":Ljava/lang/String;
    :goto_12
    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1

    .line 976
    :cond_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c4822db -> :sswitch_5
        -0x5069748f -> :sswitch_4
        0xd1b -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x36452d -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x56018e24 -> :sswitch_b
        -0x457f7c3 -> :sswitch_a
        0xacffb69 -> :sswitch_9
        0x2421807a -> :sswitch_8
        0x37a87299 -> :sswitch_7
        0x747fd3e9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private enableAutosubmitUI()V
    .locals 2

    .line 1586
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvTapToPause:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1587
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mOtpTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1589
    return-void
.end method

.method private getActions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v0, "matchedRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "enableEasyPay"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->mAllowEasyPay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    if-nez v1, :cond_0

    .line 1299
    return-object v0

    .line 1305
    :cond_0
    goto :goto_0

    .line 1302
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1304
    const-string v2, "EXCEPTION"

    invoke-static {v2, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1306
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private initNbViews()V
    .locals 4

    .line 263
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->ll_nb_login:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->netBankingLoginLayout:Landroid/widget/LinearLayout;

    .line 264
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->cb_nb_userId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    .line 265
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->et_nb_password:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    .line 266
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->et_nb_userIdCustomerId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    .line 267
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->ll_nb_user_id_Selector:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    .line 268
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->parentPanel:Landroid/widget/RelativeLayout;

    .line 269
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->nb_bt_submit:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbButton:Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_one:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdOne:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_two:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdTwo:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_three:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdThree:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->nb_image_bt_previous:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImagePrevious:Landroid/widget/ImageButton;

    .line 274
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->nb_image_bt_next:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImageNext:Landroid/widget/ImageButton;

    .line 275
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->img_pwd_show:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->pwdBuilder:Ljava/lang/StringBuilder;

    .line 277
    new-instance v0, Leasypay/actions/EasypayBrowserFragment$2;

    invoke-direct {v0, p0}, Leasypay/actions/EasypayBrowserFragment$2;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserIdWatcher:Landroid/text/TextWatcher;

    .line 304
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdOne:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 305
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdTwo:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 306
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdThree:Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 307
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    sget v1, Lpaytm/assist/easypay/easypay/R$drawable;->ic_checkbox_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 311
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserIdWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpaytm/assist/easypay/easypay/R$drawable;->ic_show_passcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x18

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method

.method private initOtpViews()V
    .locals 2

    .line 318
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->img_show_assist:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowAssist:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_detection_status:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvOtpLabel:Landroid/widget/TextView;

    .line 320
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->img_hide_assist:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mHideButton:Landroid/widget/ImageView;

    .line 321
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->edit_text_otp:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leasypay/widget/OtpEditText;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    .line 322
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_submit_otp_time:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mOtpTimer:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_tap_to_pause:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvTapToPause:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->btn_submit_otp:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    .line 325
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->cl_show_assist:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 326
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->cl_hide_assist:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBottomContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 327
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->img_paytm_assist_banner:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mPaytmAssistBanner:Landroid/widget/ImageView;

    .line 328
    return-void
.end method

.method private initSmsConsent()V
    .locals 6

    .line 1652
    :try_start_0
    new-instance v0, Leasypay/actions/EasypayBrowserFragment$11;

    invoke-direct {v0, p0}, Leasypay/actions/EasypayBrowserFragment$11;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->smsVerificationReceiver:Landroid/content/BroadcastReceiver;

    .line 1690
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 1691
    .local v0, "task":Lcom/google/android/gms/tasks/Task;
    new-instance v2, Leasypay/actions/EasypayBrowserFragment$12;

    invoke-direct {v2, p0}, Leasypay/actions/EasypayBrowserFragment$12;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1697
    new-instance v2, Leasypay/actions/EasypayBrowserFragment$13;

    invoke-direct {v2, p0}, Leasypay/actions/EasypayBrowserFragment$13;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1703
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->smsVerificationReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.google.android.gms.auth.api.phone.permission.SEND"

    invoke-virtual {v3, v4, v2, v5, v1}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1705
    const-string v1, "Receiver registered"

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    .end local v0    # "task":Lcom/google/android/gms/tasks/Task;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1709
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private loadActions(Ljava/lang/String;Leasypay/entity/AssistDetailsResponse;)V
    .locals 6
    .param p1, "currentUrl"    # Ljava/lang/String;
    .param p2, "detailsResponse"    # Leasypay/entity/AssistDetailsResponse;

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    .line 747
    invoke-virtual {p2}, Leasypay/entity/AssistDetailsResponse;->getResponse()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/entity/AssistUrlResponse;

    .line 748
    .local v1, "urlResponse":Leasypay/entity/AssistUrlResponse;
    invoke-virtual {v1}, Leasypay/entity/AssistUrlResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v2, :cond_0

    .line 750
    invoke-virtual {v2, p1}, Leasypay/actions/GAEventManager;->assistAcsUrl(Ljava/lang/String;)V

    .line 754
    :cond_0
    invoke-virtual {v1}, Leasypay/entity/AssistUrlResponse;->getOperations()Ljava/util/ArrayList;

    move-result-object v2

    .line 756
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/Operation;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 757
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leasypay/entity/Operation;

    .line 758
    .local v3, "operation":Leasypay/entity/Operation;
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v3}, Leasypay/entity/Operation;->getActionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .end local v3    # "operation":Leasypay/entity/Operation;
    goto :goto_1

    .line 761
    :cond_1
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 762
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v0, v3, v4}, Leasypay/actions/NBHelper;->startNbFeatures(Ljava/util/HashMap;Leasypay/entity/AssistDetailsResponse;)V

    goto :goto_2

    .line 766
    .end local v1    # "urlResponse":Leasypay/entity/AssistUrlResponse;
    .end local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/Operation;>;"
    :cond_2
    goto :goto_0

    .line 768
    :cond_3
    :goto_2
    return-void
.end method

.method private loadConfiguration()V
    .locals 6

    .line 981
    const-string v0, "ttl"

    :try_start_0
    const-string v1, "config"

    invoke-direct {p0, v1}, Leasypay/actions/EasypayBrowserFragment;->readJsonStream(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 982
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 983
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 984
    .local v3, "ttl":J
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v5, "com.paytm.com.paytm.pgsdk.easypay.PREFERENCE_FILE_KEY"

    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 985
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 986
    const-string v5, "easypay_configuration_ttl"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 987
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "ttl":J
    :cond_0
    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 992
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private loadConfigurationFromSharedPrefs()V
    .locals 9

    .line 996
    :try_start_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.NEW_PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 997
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "JSON":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 999
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leasypay/entity/AssistDetailsResponse;

    iput-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    .line 1000
    if-eqz v3, :cond_2

    .line 1001
    invoke-virtual {v3}, Leasypay/entity/AssistDetailsResponse;->getResponse()Ljava/util/ArrayList;

    move-result-object v3

    .line 1003
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/AssistUrlResponse;>;"
    const/4 v4, 0x0

    .line 1004
    .local v4, "startFlow":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leasypay/entity/AssistUrlResponse;

    .line 1005
    .local v6, "urlResponse":Leasypay/entity/AssistUrlResponse;
    invoke-virtual {v6}, Leasypay/entity/AssistUrlResponse;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Leasypay/actions/EasypayBrowserFragment;->containsBankUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1006
    const/4 v4, 0x1

    .line 1008
    .end local v6    # "urlResponse":Leasypay/entity/AssistUrlResponse;
    :cond_0
    goto :goto_0

    .line 1009
    :cond_1
    if-eqz v4, :cond_2

    .line 1010
    iget-object v5, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Leasypay/actions/EasypayBrowserFragment;->checkAssistFlow(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "JSON":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/AssistUrlResponse;>;"
    .end local v4    # "startFlow":Z
    :cond_2
    goto :goto_1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1016
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1018
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadPrefs()V
    .locals 3

    .line 331
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 332
    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPref:Landroid/content/SharedPreferences;

    .line 333
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.EVENTS_FILE"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefForEvents:Landroid/content/SharedPreferences;

    .line 334
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->bindClickHandler()V

    .line 335
    const-string v0, "kokookokok"

    .line 336
    .local v0, "x":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 337
    .local v1, "charAr":[C
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 339
    .end local v0    # "x":Ljava/lang/String;
    .end local v1    # "charAr":[C
    :cond_0
    return-void
.end method

.method private minimizeAssistView()V
    .locals 2

    .line 550
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 551
    new-instance v1, Leasypay/actions/EasypayBrowserFragment$4;

    invoke-direct {v1, p0}, Leasypay/actions/EasypayBrowserFragment$4;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    :cond_0
    return-void
.end method

.method public static newInstance()Leasypay/actions/EasypayBrowserFragment;
    .locals 2

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {v1}, Leasypay/actions/EasypayBrowserFragment;-><init>()V

    .line 185
    .local v1, "fragment":Leasypay/actions/EasypayBrowserFragment;
    invoke-virtual {v1, v0}, Leasypay/actions/EasypayBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 186
    return-object v1
.end method

.method private readJSONArray(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v0, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1352
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    invoke-direct {p0, p1}, Leasypay/actions/EasypayBrowserFragment;->readObject(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1355
    :cond_0
    return-object v0
.end method

.method private readJsonStream(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1312
    const-string v0, "easypay_configuration.json"

    :try_start_0
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1313
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1314
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    .line 1320
    .local v0, "reader":Landroid/util/JsonReader;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 1321
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->in:Ljava/io/InputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 1325
    :cond_1
    if-eqz v0, :cond_7

    .line 1326
    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 1327
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1328
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1330
    invoke-direct {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->readJSONArray(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    if-eqz v0, :cond_2

    .line 1342
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 1330
    :cond_2
    return-object v2

    .line 1332
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 1334
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1335
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 1336
    invoke-direct {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->readJSONArray(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    if-eqz v0, :cond_5

    .line 1342
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 1336
    :cond_5
    return-object v1

    .line 1341
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1338
    :catch_1
    move-exception v1

    .line 1339
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1341
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_8

    .line 1342
    goto :goto_3

    .line 1341
    :goto_2
    if-eqz v0, :cond_6

    .line 1342
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 1344
    :cond_6
    throw v1

    .line 1341
    :cond_7
    if-eqz v0, :cond_8

    .line 1342
    :goto_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 1345
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private readObject(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 3
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1383
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 1384
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 1386
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 1387
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1389
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 1390
    return-object v0
.end method

.method private readPgData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 196
    if-eqz p1, :cond_0

    .line 198
    :try_start_0
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 202
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-void
.end method

.method private saveCustId(Z)V
    .locals 10
    .param p1, "isSavePointer"    # Z

    .line 585
    if-eqz p1, :cond_3

    .line 586
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bankpref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    .local v0, "bankPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 588
    .local v1, "editorBankPref":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    const-string v3, "bank"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 589
    .local v2, "keybank":Ljava/lang/String;
    const-string v3, "USER_ID_NET_BANK_KEY"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "storedHashMapString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 592
    new-instance v5, Leasypay/actions/EasypayBrowserFragment$5;

    invoke-direct {v5, p0}, Leasypay/actions/EasypayBrowserFragment$5;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    .line 593
    invoke-virtual {v5}, Leasypay/actions/EasypayBrowserFragment$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 594
    .local v5, "type":Ljava/lang/reflect/Type;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 595
    .local v6, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v6, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 596
    .local v7, "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 597
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    iget-object v8, p0, Leasypay/actions/EasypayBrowserFragment;->nbUserId:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 603
    .local v8, "saveGson":Lcom/google/gson/Gson;
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, "hashMapString":Ljava/lang/String;
    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 607
    .end local v5    # "type":Ljava/lang/reflect/Type;
    .end local v6    # "gson":Lcom/google/gson/Gson;
    .end local v7    # "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "saveGson":Lcom/google/gson/Gson;
    .end local v9    # "hashMapString":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 609
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v5, "mBankIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Leasypay/actions/EasypayBrowserFragment;->nbUserId:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 613
    .local v6, "saveGson":Lcom/google/gson/Gson;
    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 614
    .local v7, "hashMapString":Ljava/lang/String;
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    .end local v0    # "bankPref":Landroid/content/SharedPreferences;
    .end local v1    # "editorBankPref":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "keybank":Ljava/lang/String;
    .end local v4    # "storedHashMapString":Ljava/lang/String;
    .end local v5    # "mBankIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "saveGson":Lcom/google/gson/Gson;
    .end local v7    # "hashMapString":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private showAssistView()V
    .locals 2

    .line 536
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 537
    new-instance v1, Leasypay/actions/EasypayBrowserFragment$3;

    invoke-direct {v1, p0}, Leasypay/actions/EasypayBrowserFragment$3;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    :cond_0
    return-void
.end method

.method private startSubmission()V
    .locals 2

    .line 574
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    if-eqz v1, :cond_1

    .line 575
    invoke-virtual {v0}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    .line 576
    invoke-virtual {v0}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->opMap:Ljava/util/HashMap;

    const-string v1, "SUBMIT_BTN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    .line 578
    .local v0, "operation":Leasypay/entity/Operation;
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    invoke-virtual {v1, v0}, Leasypay/actions/NewOtpHelper;->submitOTP(Leasypay/entity/Operation;)V

    .line 581
    .end local v0    # "operation":Leasypay/entity/Operation;
    :cond_1
    return-void
.end method

.method private toggleSavedUserIdTextView(ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSavedUserId"    # Z
    .param p2, "nbUserId"    # Ljava/lang/String;

    .line 1603
    if-nez p2, :cond_0

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 1604
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    invoke-virtual {v0}, Leasypay/actions/NBHelper;->getNumberOfSavedId()I

    move-result v0

    .line 1605
    .local v0, "numberOfId":I
    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 1606
    if-eqz p1, :cond_1

    .line 1607
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1608
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1609
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1611
    :cond_1
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1612
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1614
    :cond_2
    if-le v0, v2, :cond_5

    .line 1615
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1616
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1617
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1618
    :cond_3
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1619
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1615
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1623
    .end local v2    # "i":I
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Leasypay/actions/EasypayBrowserFragment;->setUIDCheck(Z)V

    .line 1624
    return-void
.end method


# virtual methods
.method public NbWatcher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ElId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1048
    const-string v0, "101"

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 1049
    const-string v2, "passwordId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    const-string v4, "userId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1051
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    .line 1052
    iget-object v5, p0, Leasypay/actions/EasypayBrowserFragment;->pwdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "110"

    const/4 v7, 0x1

    const-string v8, "1"

    if-nez v5, :cond_1

    :try_start_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1054
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment;->nbUserId:Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->pwdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1058
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1059
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->pwdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {p0, p1, v7}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1062
    :cond_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1063
    iput-boolean v7, p0, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    .line 1064
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isSavePointer:Z

    invoke-direct {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->saveCustId(Z)V

    .line 1065
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "nbotphelper"

    invoke-direct {p0, v0, v2, v3}, Leasypay/actions/EasypayBrowserFragment;->doActions(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iput-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    goto/16 :goto_0

    .line 1067
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    if-eqz v3, :cond_3

    :try_start_2
    const-string v3, "3"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    const-string v0, "confirmhelper"

    invoke-virtual {p0, v0, v5, v5}, Leasypay/actions/EasypayBrowserFragment;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isSavePointer:Z

    invoke-direct {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->saveCustId(Z)V

    goto :goto_0

    .line 1070
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1072
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->pwdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto :goto_0

    .line 1074
    :cond_4
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->jsonActionMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1075
    invoke-virtual {p0, v5, v7}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto :goto_0

    .line 1077
    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1078
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1079
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Leasypay/actions/EasypayBrowserFragment$7;

    invoke-direct {v1, p0}, Leasypay/actions/EasypayBrowserFragment$7;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1087
    :cond_6
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1088
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Leasypay/actions/EasypayBrowserFragment$8;

    invoke-direct {v1, p0}, Leasypay/actions/EasypayBrowserFragment$8;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1100
    :cond_7
    :goto_0
    goto :goto_1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1103
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_8
    :goto_1
    return-void
.end method

.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 1404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    .line 1405
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->redirectUrl:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->redirectUrl:Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    :cond_0
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 1413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Called :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1415
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    .line 1419
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 1430
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Ljava/lang/Object;

    .line 1424
    const/4 v0, 0x0

    return v0
.end method

.method public checkAssistFlow(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 654
    :try_start_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.NEW_PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "config"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "JSON":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in checkAssistFlow Config json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    return-void

    .line 661
    :cond_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 662
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v4, Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leasypay/entity/AssistDetailsResponse;

    iput-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    .line 663
    if-eqz v4, :cond_4

    .line 664
    invoke-virtual {v4}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v5

    invoke-virtual {v5}, Leasypay/manager/PaytmAssist;->geTxnBank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v4, :cond_1

    .line 666
    iget-object v5, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v5}, Leasypay/entity/AssistDetailsResponse;->getEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Leasypay/actions/GAEventManager;->isBankEnabled(Z)V

    .line 668
    :cond_1
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-virtual {v4}, Leasypay/entity/AssistDetailsResponse;->getEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    const/4 v2, 0x1

    iput-boolean v2, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistNewFlow:Z

    .line 670
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mDetailsResponse:Leasypay/entity/AssistDetailsResponse;

    invoke-direct {p0, p1, p2, v2}, Leasypay/actions/EasypayBrowserFragment;->assistNewFlow(Landroid/webkit/WebView;Ljava/lang/String;Leasypay/entity/AssistDetailsResponse;)V

    goto :goto_0

    .line 672
    :cond_2
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v4, :cond_5

    .line 673
    invoke-virtual {v4, v2}, Leasypay/actions/GAEventManager;->onOpenPaytmAssistURL(Z)V

    goto :goto_0

    .line 677
    :cond_3
    const-string v4, "Config JSON picked from cache doesn\'t have same bank name"

    invoke-static {v4, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v4, :cond_5

    .line 679
    invoke-virtual {v4, v2}, Leasypay/actions/GAEventManager;->onOpenPaytmAssistURL(Z)V

    goto :goto_0

    .line 684
    :cond_4
    const-string v2, "imDetail resoinse Null"

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "JSON":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :cond_5
    :goto_0
    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return-void
.end method

.method clearOtpFields()V
    .locals 5

    .line 1627
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Leasypay/widget/OtpEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lpaytm/assist/easypay/easypay/R$string;->waiting_for_otp_label:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3}, Leasypay/manager/PaytmAssist;->geTxnBank()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setDetectionStatusText(Ljava/lang/String;)V

    .line 1629
    return-void
.end method

.method public getCurrentNewOtpHelper()Leasypay/actions/NewOtpHelper;
    .locals 1

    .line 1469
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    return-object v0
.end method

.method hideNBCustIdShowPassword()V
    .locals 2

    .line 1271
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImageNext:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    .line 1278
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mEtCurrentText:Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    return-void
.end method

.method hideNBPasswordShowCustIdView()V
    .locals 3

    .line 1253
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->netBankingLoginLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImagePrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbImageNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1260
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setUIDCheck(Z)V

    .line 1261
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1262
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowSuggestionBox:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1267
    :goto_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "ruleId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefForEvents:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1191
    .local v1, "currentCount":I
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefForEvents:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1192
    .local v2, "sharedPrefEditorForEvents":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1193
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1194
    return-void
.end method

.method maximizeAssist()V
    .locals 1

    .line 1493
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowAssist:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->showAssistView()V

    .line 1497
    :cond_0
    return-void
.end method

.method public minimizeAssist()V
    .locals 1

    .line 1486
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->minimizeAssistView()V

    .line 1490
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 212
    const-string v0, "EXCEPTION"

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    :try_start_0
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 215
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    .line 216
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Leasypay/actions/EasypayBrowserFragment;->readPgData(Landroid/os/Bundle;)V

    .line 217
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->redirectUrl:Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->initOtpViews()V

    .line 219
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 220
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Leasypay/manager/PaytmAssist;->setFragmentResumed(Z)V

    .line 221
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1, v2}, Leasypay/manager/PaytmAssist;->setFragmentPaused(Z)V

    .line 222
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->initNbViews()V

    .line 223
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 225
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 228
    .local v1, "currentApiVersion":I
    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 229
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 231
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_1

    .line 232
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 235
    :cond_1
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v2

    invoke-virtual {v2}, Leasypay/manager/PaytmAssist;->getEasyPayHelper()Leasypay/manager/EasyPayHelper;

    move-result-object v2

    iput-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mEasyPayHelper:Leasypay/manager/EasyPayHelper;

    .line 237
    .end local v1    # "currentApiVersion":I
    :cond_2
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {v1, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 240
    :cond_3
    new-instance v1, Leasypay/actions/NBHelper;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v4}, Leasypay/actions/NBHelper;-><init>(Ljava/util/HashMap;Landroid/webkit/WebView;Landroid/app/Activity;Leasypay/entity/AssistDetailsResponse;)V

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    .line 241
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->loadPrefs()V

    .line 243
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.drc.paytm_example.EASYPAY_CONFIG_DOWNLOADED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.drc.paytm_example.EASYPAY_SINGLE_BANK_CONFIG_DOWNLOADED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    sget-boolean v2, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    if-eqz v2, :cond_4

    .line 246
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->initSmsConsent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :cond_4
    :try_start_1
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->downloadListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    invoke-static {v0, v2}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 257
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 254
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    invoke-static {v0, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1633
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1634
    const-string v0, "SMS consent:inside onActivityResult"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1635
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1636
    const-string v0, "SMS consent:inside switch case"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1637
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1638
    const-string v0, "SMS consent: Consent given"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1640
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1, v0}, Leasypay/manager/PaytmAssist;->setAppSMSCallback(Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->smsVerificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1643
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->initSmsConsent()V

    .line 1644
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 1645
    :cond_0
    const-string v0, "SMS consent: Consent cancelled"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1648
    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1434
    iput-boolean p2, p0, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    .line 1435
    const/4 v0, 0x0

    const-string v1, "rememberUserId"

    if-eqz p2, :cond_0

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 1436
    sget v3, Lpaytm/assist/easypay/easypay/R$drawable;->ic_checkbox_selected:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1437
    const/4 v2, 0x1

    iput-boolean v2, p0, Leasypay/actions/EasypayBrowserFragment;->isSavePointer:Z

    .line 1438
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v3, "bankpref"

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1439
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 1440
    const-string v3, "USER_ID_NET_BANK_KEY"

    const-string v4, "abcd"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1441
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1442
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v2

    invoke-virtual {v2}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Checked"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 1445
    :cond_0
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    .line 1446
    sget v3, Lpaytm/assist/easypay/easypay/R$drawable;->ic_checkbox_unselected:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1447
    iput-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isSavePointer:Z

    .line 1449
    :cond_1
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "UnChecked"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 439
    const-string v0, "PREVIOUS_BTN"

    const-string v1, "SUBMIT_BTN"

    const-string v2, "NEXT_BTN"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->img_hide_assist:I

    if-ne v3, v4, :cond_0

    .line 440
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->minimizeAssistView()V

    goto/16 :goto_2

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->img_show_assist:I

    if-ne v3, v4, :cond_1

    .line 442
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->showAssistView()V

    goto/16 :goto_2

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->img_paytm_assist_banner:I

    if-ne v3, v4, :cond_2

    .line 444
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mShowAssist:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto/16 :goto_2

    .line 445
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->tv_detection_status:I

    if-ne v3, v4, :cond_3

    .line 446
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto/16 :goto_2

    .line 447
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_one:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 448
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdOne:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/NBHelper;->updateValueForAutoFill(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdOne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setCurrentUserId(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Leasypay/actions/EasypayBrowserFragment;->toggleSavedUserIdTextView(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 451
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_two:I

    if-ne v3, v4, :cond_5

    .line 452
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdTwo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/NBHelper;->updateValueForAutoFill(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdTwo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setCurrentUserId(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Leasypay/actions/EasypayBrowserFragment;->toggleSavedUserIdTextView(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 455
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->tv_user_id_three:I

    if-ne v3, v4, :cond_6

    .line 456
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdThree:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/NBHelper;->updateValueForAutoFill(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->tvIdThree:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setCurrentUserId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 458
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->nb_bt_submit:I

    const/4 v6, 0x1

    if-ne v3, v4, :cond_9

    .line 459
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistNewFlow:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    if-eqz v0, :cond_8

    .line 460
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/entity/Operation;

    invoke-virtual {v0, v1, v2}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V

    .line 461
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_12

    .line 462
    iget-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isSaveIdChecked:Z

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isRememberUserIdChecked(Z)V

    .line 463
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-boolean v1, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    if-nez v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {v0, v5}, Leasypay/actions/GAEventManager;->isShowPasswordClicked(Z)V

    .line 464
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v0, v6}, Leasypay/actions/GAEventManager;->isNbSubmitButtonClicked(Z)V

    goto/16 :goto_2

    .line 467
    :cond_8
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 477
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lpaytm/assist/easypay/easypay/R$id;->nb_image_bt_next:I

    if-ne v1, v3, :cond_a

    .line 478
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/entity/Operation;

    invoke-virtual {v0, v2, v1}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V

    goto/16 :goto_2

    .line 485
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lpaytm/assist/easypay/easypay/R$id;->nb_image_bt_previous:I

    if-ne v1, v2, :cond_b

    .line 486
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbHelper:Leasypay/actions/NBHelper;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/entity/Operation;

    invoke-virtual {v1, v0, v2}, Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V

    goto/16 :goto_2

    .line 487
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->tv_tap_to_pause:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_e

    .line 489
    :try_start_1
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pauseBtnClicked"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_c

    .line 491
    invoke-virtual {v0, v6}, Leasypay/actions/GAEventManager;->isPauseButtonTapped(Z)V

    .line 493
    :cond_c
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_d

    .line 494
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 496
    :cond_d
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->otpSubmitButtonState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_2

    .line 501
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->btn_submit_otp:I

    if-ne v0, v1, :cond_10

    .line 502
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_f

    .line 503
    invoke-virtual {v0, v6, v6}, Leasypay/actions/GAEventManager;->isSubmitButtonClicked(ZI)V

    .line 504
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v0, v5}, Leasypay/actions/GAEventManager;->isAutoSubmit(Z)V

    .line 506
    :cond_f
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->startSubmission()V

    goto/16 :goto_2

    .line 507
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->img_pwd_show:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v1, :cond_12

    .line 509
    :try_start_3
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "showPasswordClicked"

    iget-boolean v2, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-boolean v0, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lpaytm/assist/easypay/easypay/R$drawable;->ic_hide_passcode:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 512
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    sget v2, Lpaytm/assist/easypay/easypay/R$string;->hide:I

    invoke-virtual {p0, v2}, Leasypay/actions/EasypayBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 516
    iput-boolean v5, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    .line 517
    .end local v0    # "img":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 518
    :cond_11
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lpaytm/assist/easypay/easypay/R$drawable;->ic_show_passcode:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 519
    .restart local v0    # "img":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 520
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->nbPwdViewer:Landroid/widget/TextView;

    sget v2, Lpaytm/assist/easypay/easypay/R$string;->show:I

    invoke-virtual {p0, v2}, Leasypay/actions/EasypayBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 523
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 524
    iput-boolean v6, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 528
    .end local v0    # "img":Landroid/graphics/drawable/Drawable;
    :goto_1
    goto :goto_2

    .line 526
    :catch_1
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_2
    goto :goto_3

    .line 530
    :catch_2
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 533
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 191
    sget v0, Lpaytm/assist/easypay/easypay/R$layout;->easypay_browser_frag_revamp:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1395
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserIdWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1398
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 1400
    return-void
.end method

.method public onDestroyView()V
    .locals 7

    .line 361
    const-string v0, "time not captured"

    const-string v1, "EXCEPTION"

    const-string v2, ""

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 366
    :try_start_0
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->timeStart:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "timeStampStart":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->timeFinish:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "timeStampFinish":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 373
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v0}, Leasypay/actions/GAEventManager;->onAcsUrlRequested(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v2}, Leasypay/actions/GAEventManager;->onAcsUrlLoaded(Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v4

    invoke-virtual {v4}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->onExtraInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v2    # "timeStampFinish":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 380
    .local v2, "timeStampStart":Ljava/lang/String;
    nop

    .line 383
    .local v0, "timeStampFinish":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v2}, Leasypay/actions/GAEventManager;->onAcsUrlRequested(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v0}, Leasypay/actions/GAEventManager;->onAcsUrlLoaded(Ljava/lang/String;)V

    .line 388
    :cond_1
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .local v0, "timeStampStart":Ljava/lang/String;
    .local v2, "timeStampFinish":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_3

    .line 389
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->redirectUrl:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->OnredirectUrls(Ljava/lang/StringBuilder;)V

    .line 391
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3}, Leasypay/actions/GAEventManager;->getEventMap()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 392
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v5, Leasypay/utils/AnalyticsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v3, "itent":Landroid/content/Intent;
    const-string v4, "data"

    iget-object v5, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v5}, Leasypay/actions/GAEventManager;->getEventMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 394
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Leasypay/utils/AnalyticsService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 397
    .end local v3    # "itent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentPasswordHelper:Leasypay/actions/PasswordHelper;

    if-eqz v3, :cond_4

    .line 398
    invoke-virtual {v3}, Leasypay/actions/PasswordHelper;->unregisterEvent()V

    .line 400
    :cond_4
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_5

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->downloadListener:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_5

    .line 401
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    :cond_5
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_6

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->smsVerificationReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_6

    .line 404
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    :cond_6
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_a

    .line 407
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    if-eqz v3, :cond_9

    .line 409
    iget-object v3, v3, Leasypay/actions/OtpHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_7

    .line 410
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    iget-object v4, v4, Leasypay/actions/OtpHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    :cond_7
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    iget-object v3, v3, Leasypay/actions/OtpHelper;->myreceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_8

    .line 413
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    iget-object v4, v4, Leasypay/actions/OtpHelper;->myreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    :cond_8
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    iget-object v3, v3, Leasypay/actions/OtpHelper;->mwebViewClient:Leasypay/manager/EasypayWebViewClient;

    if-eqz v3, :cond_9

    .line 417
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    iget-object v3, v3, Leasypay/actions/OtpHelper;->mwebViewClient:Leasypay/manager/EasypayWebViewClient;

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    invoke-virtual {v3, v4}, Leasypay/manager/EasypayWebViewClient;->removeAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 420
    :cond_9
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    if-eqz v3, :cond_a

    .line 421
    invoke-virtual {v3}, Leasypay/actions/NewOtpHelper;->unregisterBroadcastReceiver()V

    .line 424
    :cond_a
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Leasypay/manager/PaytmAssist;->setFragmentResumed(Z)V

    .line 425
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3, v4}, Leasypay/manager/PaytmAssist;->setFragmentPaused(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_1

    .line 429
    .end local v0    # "timeStampStart":Ljava/lang/String;
    .end local v2    # "timeStampFinish":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 428
    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    .end local v0    # "e":Ljava/lang/NullPointerException;
    nop

    .line 433
    :goto_1
    return-void
.end method

.method onHelperAction(ILjava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 1456
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    const/16 v0, 0x9b

    if-ne p1, v0, :cond_0

    .line 1458
    new-instance v0, Leasypay/actions/NewOtpHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3}, Leasypay/manager/PaytmAssist;->getFragment()Leasypay/actions/EasypayBrowserFragment;

    move-result-object v3

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    invoke-direct {v0, v1, v2, v3, v4}, Leasypay/actions/NewOtpHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Leasypay/manager/EasypayWebViewClient;)V

    iput-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    .line 1459
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1460
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentNewOtpHelper:Leasypay/actions/NewOtpHelper;

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->mNbOpMapSearch:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Leasypay/actions/NewOtpHelper;->setMap(Ljava/util/HashMap;)V

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NB OTP Flow Started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mEasyPayHelper:Leasypay/manager/EasyPayHelper;

    const/16 v1, 0x6b

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Leasypay/manager/EasyPayHelper;->successEvent(ILjava/lang/String;)V

    .line 1466
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1367
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 1368
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/manager/PaytmAssist;->setFragmentResumed(Z)V

    .line 1369
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leasypay/manager/PaytmAssist;->setFragmentPaused(Z)V

    .line 1370
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1360
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1361
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leasypay/manager/PaytmAssist;->setFragmentResumed(Z)V

    .line 1362
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/manager/PaytmAssist;->setFragmentPaused(Z)V

    .line 1363
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1374
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 1375
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1378
    :cond_0
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment;->otpSubmitButtonState()V

    .line 1379
    return-void
.end method

.method otpSubmitButtonState()V
    .locals 2

    .line 1593
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvTapToPause:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mOtpTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mBtnSubmitOtp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1596
    return-void
.end method

.method passwordViewer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pwdValue1"    # Ljava/lang/String;
    .param p2, "viewCode"    # I

    .line 1106
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Leasypay/actions/EasypayBrowserFragment$9;

    invoke-direct {v1, p0, p2, p1}, Leasypay/actions/EasypayBrowserFragment$9;-><init>(Leasypay/actions/EasypayBrowserFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1171
    return-void
.end method

.method removeAssist()V
    .locals 2

    .line 1480
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->parentPanel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1481
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1483
    :cond_0
    return-void
.end method

.method public resetActions()V
    .locals 2

    .line 623
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Leasypay/actions/OtpHelper;->reset()V

    .line 625
    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentOtpHelper:Leasypay/actions/OtpHelper;

    .line 628
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentProceedHelper:Leasypay/actions/ProceedHelper;

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0}, Leasypay/actions/ProceedHelper;->reset()V

    .line 630
    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentProceedHelper:Leasypay/actions/ProceedHelper;

    .line 633
    :cond_1
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentRadioHelper:Leasypay/actions/RadioHelper;

    if-eqz v0, :cond_2

    .line 634
    invoke-virtual {v0}, Leasypay/actions/RadioHelper;->reset()V

    .line 635
    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentRadioHelper:Leasypay/actions/RadioHelper;

    .line 638
    :cond_2
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentPasswordHelper:Leasypay/actions/PasswordHelper;

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {v0}, Leasypay/actions/PasswordHelper;->reset()V

    .line 640
    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentPasswordHelper:Leasypay/actions/PasswordHelper;

    .line 643
    :cond_3
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->currentCustomJsHelper:Leasypay/actions/CustomJsHelper;

    if-eqz v0, :cond_4

    .line 644
    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->currentCustomJsHelper:Leasypay/actions/CustomJsHelper;

    .line 647
    :cond_4
    return-void
.end method

.method public sendBnkDtlToApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1024
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Leasypay/actions/EasypayBrowserFragment$6;

    invoke-direct {v1, p0}, Leasypay/actions/EasypayBrowserFragment$6;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    .line 1025
    invoke-virtual {v1}, Leasypay/actions/EasypayBrowserFragment$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1024
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1026
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v3, Leasypay/utils/EasyPayConfigDownloader;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_bank_req"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Leasypay/utils/EasyPayConfigDownloader;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bnkCode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "payType"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "txnMode":Ljava/lang/String;
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Leasypay/manager/PaytmAssist;->setTxnBank(Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Leasypay/manager/PaytmAssist;->setTxnPayType(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1034
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_1

    .line 1035
    invoke-virtual {v3, v2}, Leasypay/actions/GAEventManager;->cardType(Ljava/lang/String;)V

    .line 1036
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v3, v2}, Leasypay/actions/GAEventManager;->cardIssuer(Ljava/lang/String;)V

    .line 1037
    const-string v3, "atm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "idebit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ATM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Idebit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1038
    :cond_0
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->onNonOTPRequest(Z)V

    .line 1044
    :cond_1
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data0"    # Ljava/lang/String;
    .param p3, "data1"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const-string v1, "eventName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const-string v1, "data0"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string v1, "data1"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1205
    return-void
.end method

.method setCurrentUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "toString"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->setUIDCheck(Z)V

    .line 570
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    .line 571
    return-void
.end method

.method setDetectionStatusText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mTvOtpLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    :cond_0
    return-void
.end method

.method setHistoricIdTexts(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1523
    .local p1, "uidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1524
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1525
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " USER ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1524
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1529
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setOtpDetectedTimer(Z)V
    .locals 9
    .param p1, "mIsAutoSubmitDisable"    # Z

    .line 1532
    sget v0, Lpaytm/assist/easypay/easypay/R$string;->submit_time:I

    invoke-virtual {p0, v0}, Leasypay/actions/EasypayBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1533
    .local v0, "timerText":Ljava/lang/String;
    const-string v1, "Timer called"

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1536
    :try_start_0
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 1537
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1539
    :cond_0
    if-nez p1, :cond_1

    .line 1540
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->enableAutosubmitUI()V

    .line 1541
    new-instance v8, Leasypay/actions/EasypayBrowserFragment$10;

    const-wide/16 v3, 0x1f40

    const-wide/16 v5, 0x3e8

    move-object v1, v8

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Leasypay/actions/EasypayBrowserFragment$10;-><init>(Leasypay/actions/EasypayBrowserFragment;JJLjava/lang/String;)V

    .line 1569
    invoke-virtual {v8}, Leasypay/actions/EasypayBrowserFragment$10;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->timer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 1571
    :cond_1
    invoke-direct {p0}, Leasypay/actions/EasypayBrowserFragment;->disableAutoSubmitUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_0
    goto :goto_1

    .line 1573
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1575
    const-string v2, "EXCEPTION"

    invoke-static {v2, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1577
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method setUIDCheck(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 1289
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNbUserName:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1290
    return-void
.end method

.method setUIdToTextView(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1285
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->mNBUserId:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    return-void
.end method

.method public showLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1175
    const-string v0, "not found -Net Banking js Injection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1176
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    goto :goto_0

    .line 1177
    :cond_0
    const-string v0, "not found - 0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getLastLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->browser:Landroid/webkit/WebView;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v2

    invoke-virtual {v2}, Leasypay/manager/PaytmAssist;->getLastLoadedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Leasypay/actions/EasypayBrowserFragment;->doActions(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_1
    :goto_0
    return-void
.end method

.method toggleHistoricIds(IZ)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "showView"    # Z

    .line 1500
    const/16 v0, 0x8

    if-eqz p2, :cond_3

    .line 1501
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 1503
    if-ge v1, p1, :cond_1

    .line 1504
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1505
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1507
    :cond_0
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1510
    :cond_1
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1502
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_3

    .line 1514
    :cond_3
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->ll_historic_id:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1515
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 1516
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment;->historicTvArray:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1515
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1520
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method toggleSuggestionBox(Z)V
    .locals 0
    .param p1, "mShowBox"    # Z

    .line 1599
    iput-boolean p1, p0, Leasypay/actions/EasypayBrowserFragment;->mShowSuggestionBox:Z

    .line 1600
    return-void
.end method

.method toggleView(ILjava/lang/Boolean;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "show"    # Ljava/lang/Boolean;

    .line 1212
    :try_start_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lpaytm/assist/easypay/easypay/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1214
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1215
    .local v2, "visibilityState":I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->otpHelper:I

    if-ne p1, v4, :cond_2

    .line 1219
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_1

    .line 1220
    invoke-virtual {v3, v5}, Leasypay/actions/GAEventManager;->onOpenPaytmAssistURL(Z)V

    .line 1222
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iput-boolean v5, p0, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    goto :goto_1

    .line 1224
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->otpHelper:I

    if-ne p1, v4, :cond_4

    .line 1225
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v4, :cond_3

    .line 1226
    invoke-virtual {v4, v3}, Leasypay/actions/GAEventManager;->onOpenPaytmAssistURL(Z)V

    .line 1228
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1229
    :cond_4
    sget v4, Lpaytm/assist/easypay/easypay/R$id;->layout_netbanking:I

    if-ne p1, v4, :cond_6

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1230
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v4

    invoke-virtual {v4}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v4

    const-string v6, "showPasswordClicked"

    iget-boolean v7, p0, Leasypay/actions/EasypayBrowserFragment;->isShow:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v4, :cond_5

    .line 1232
    invoke-virtual {v4, v5}, Leasypay/actions/GAEventManager;->isNetBankingInvoked(Z)V

    .line 1233
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v4, v5}, Leasypay/actions/GAEventManager;->onOpenPaytmAssistURL(Z)V

    .line 1235
    :cond_5
    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment;->parentPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1236
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1237
    .local v4, "rlNb":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "visibilityState":I
    .end local v4    # "rlNb":Landroid/widget/RelativeLayout;
    :cond_6
    :goto_1
    goto :goto_2

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1241
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
