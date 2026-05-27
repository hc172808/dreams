.class public Lcom/facebook/referrals/ReferralLogger;
.super Ljava/lang/Object;
.source "ReferralLogger.java"


# static fields
.field static final EVENT_EXTRAS_FACEBOOK_VERSION:Ljava/lang/String; = "facebookVersion"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_NAME_REFERRAL_CANCEL:Ljava/lang/String; = "fb_mobile_referral_cancel"

.field static final EVENT_NAME_REFERRAL_ERROR:Ljava/lang/String; = "fb_mobile_referral_error"

.field static final EVENT_NAME_REFERRAL_START:Ljava/lang/String; = "fb_mobile_referral_start"

.field static final EVENT_NAME_REFERRAL_SUCCESS:Ljava/lang/String; = "fb_mobile_referral_success"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "2_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "3_extras"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field static final EVENT_PARAM_VALUE_EMPTY:Ljava/lang/String; = ""

.field static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"


# instance fields
.field private facebookVersion:Ljava/lang/String;

.field private final logger:Lcom/facebook/appevents/InternalAppEventsLogger;

.field private loggerID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v0, p1, p2}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/referrals/ReferralLogger;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/referrals/ReferralLogger;->loggerID:Ljava/lang/String;

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 62
    .local v1, "facebookInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 63
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/referrals/ReferralLogger;->facebookVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "facebookInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 69
    :goto_0
    return-void
.end method

.method private getReferralLoggingBundle()Landroid/os/Bundle;
    .locals 4

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/referrals/ReferralLogger;->loggerID:Ljava/lang/String;

    const-string v2, "0_auth_logger_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "1_timestamp_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v1, "2_error_message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "3_extras"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public logCancel()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralLogger;->getReferralLoggingBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/referrals/ReferralLogger;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v2, "fb_mobile_referral_cancel"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public logError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 112
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralLogger;->getReferralLoggingBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2_error_message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/facebook/referrals/ReferralLogger;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v2, "fb_mobile_referral_error"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public logStartReferral()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralLogger;->getReferralLoggingBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v1, "extras":Lorg/json/JSONObject;
    const-string v2, "request_code"

    invoke-static {}, Lcom/facebook/referrals/ReferralClient;->getReferralRequestCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    iget-object v2, p0, Lcom/facebook/referrals/ReferralLogger;->facebookVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 89
    const-string v3, "facebookVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    const-string v2, "3_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "extras":Lorg/json/JSONObject;
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/facebook/referrals/ReferralLogger;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v2, "fb_mobile_referral_start"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public logSuccess()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/facebook/referrals/ReferralLogger;->getReferralLoggingBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/referrals/ReferralLogger;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v2, "fb_mobile_referral_success"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    return-void
.end method
