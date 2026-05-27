.class public Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
.super Ljava/lang/Object;
.source "TestDeviceHelper.java"


# static fields
.field static final FRESH_INSTALL_PREFERENCES:Ljava/lang/String; = "fresh_install"

.field static final MAX_FETCH_COUNT:I = 0x5

.field static final TEST_DEVICE_PREFERENCES:Ljava/lang/String; = "test_device"


# instance fields
.field private fetchCount:I

.field private isFreshInstall:Z

.field private isTestDevice:Z

.field private final sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)V
    .locals 1
    .param p1, "sharedPreferencesUtils"    # Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    .line 43
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    .line 44
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->readFreshInstallStatusFromPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    .line 45
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->readTestDeviceStatusFromPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    .line 46
    return-void
.end method

.method private readFreshInstallStatusFromPreferences()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "fresh_install"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getAndSetBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readTestDeviceStatusFromPreferences()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "test_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getAndSetBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setFreshInstallStatus(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    .line 116
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "fresh_install"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method private setTestDeviceStatus(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    .line 105
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "test_device"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method private updateFreshInstallStatus()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    .line 91
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->setFreshInstallStatus(Z)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public isAppInstallFresh()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    return v0
.end method

.method public isDeviceInTestMode()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    return v0
.end method

.method public processCampaignFetch(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    .line 73
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->updateFreshInstallStatus()V

    .line 75
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getMessagesList()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 77
    .local v2, "message":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->setTestDeviceStatus(Z)V

    .line 79
    const-string v1, "Setting this device as a test device"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 80
    return-void

    .line 82
    .end local v2    # "message":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    :cond_0
    goto :goto_0

    .line 84
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;"
    :cond_1
    return-void
.end method
