.class Lcom/facebook/referrals/ReferralClient;
.super Ljava/lang/Object;
.source "ReferralClient.java"


# static fields
.field private static final CHALLENGE_LENGTH:I = 0x14

.field private static final CUSTOM_TAB_REQUEST_CODE:I = 0x1

.field static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "error_message"

.field static final REFERRAL_CODES_KEY:Ljava/lang/String; = "fb_referral_codes"

.field private static final REFERRAL_DIALOG:Ljava/lang/String; = "share_referral"


# instance fields
.field private currentPackage:Ljava/lang/String;

.field protected expectedChallenge:Ljava/lang/String;

.field private fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 54
    return-void
.end method

.method private finishReferral(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 111
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private getChromePackage()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->currentPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/referrals/ReferralClient;->currentPackage:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->currentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static getDeveloperDefinedRedirectUrl()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getParameters()Landroid/os/Bundle;
    .locals 3

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "params":Landroid/os/Bundle;
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/facebook/internal/Utility;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/referrals/ReferralClient;->expectedChallenge:Ljava/lang/String;

    .line 144
    nop

    .line 146
    invoke-static {}, Lcom/facebook/referrals/ReferralClient;->getDeveloperDefinedRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/CustomTabUtils;->getValidRedirectURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/facebook/referrals/ReferralClient;->expectedChallenge:Ljava/lang/String;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method static getReferralRequestCode()I
    .locals 1

    .line 105
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Referral:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method private isCustomTabsAllowed()Z
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralClient;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tryStartReferral()Z
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralClient;->isCustomTabsAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralClient;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "parameters":Landroid/os/Bundle;
    sget-boolean v1, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    const-string v2, "share_referral"

    if-eqz v1, :cond_1

    .line 128
    invoke-static {v2, v0}, Lcom/facebook/internal/CustomTab;->getURIForAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/login/CustomTabPrefetchHelper;->mayLaunchUrl(Landroid/net/Uri;)V

    .line 131
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/facebook/CustomTabMainActivity;->EXTRA_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/referrals/ReferralClient;->getChromePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/facebook/referrals/ReferralClient;->fragment:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return v3

    .line 123
    .end local v0    # "parameters":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateChallenge(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/facebook/referrals/ReferralClient;->expectedChallenge:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "actualChallenge":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/referrals/ReferralClient;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/referrals/ReferralClient;->expectedChallenge:Ljava/lang/String;

    .line 101
    .end local v1    # "actualChallenge":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 70
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    if-eqz p3, :cond_2

    .line 76
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/facebook/referrals/ReferralClient;->getDeveloperDefinedRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/CustomTabUtils;->getValidRedirectURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 81
    .local v2, "values":Landroid/os/Bundle;
    invoke-direct {p0, v2}, Lcom/facebook/referrals/ReferralClient;->validateChallenge(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {p3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 84
    :cond_1
    const/4 p2, 0x0

    .line 85
    const-string v3, "error_message"

    const-string v4, "The referral response was missing a valid challenge string."

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/os/Bundle;
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/referrals/ReferralClient;->finishReferral(ILandroid/content/Intent;)V

    .line 92
    return-void
.end method

.method startReferral()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralClient;->tryStartReferral()Z

    move-result v0

    .line 59
    .local v0, "started":Z
    if-nez v0, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "data":Landroid/content/Intent;
    const-string v2, "error_message"

    const-string v3, "Failed to open Referral dialog: Chrome custom tab could not be started. Please make sure internet permission is granted and Chrome is installed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/facebook/referrals/ReferralClient;->finishReferral(ILandroid/content/Intent;)V

    .line 67
    .end local v1    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method
