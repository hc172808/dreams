.class public Lcom/payumoney/sdkui/ui/utils/PreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/payumoney/sdkui/ui/utils/PreferenceManager;


# instance fields
.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "stored_values"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/payumoney/sdkui/ui/utils/PreferenceManager;
    .locals 4

    const-class v0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->a:Lcom/payumoney/sdkui/ui/utils/PreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 29
    monitor-exit v0

    return-object v1

    .line 26
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not initialized, call initializeInstance(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->a:Lcom/payumoney/sdkui/ui/utils/PreferenceManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->a:Lcom/payumoney/sdkui/ui/utils/PreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v0

    return-void

    .line 18
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAutoLoadAmount()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "autoload_amount"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v0, "500"

    .line 77
    :cond_0
    return-object v0
.end method

.method public getAutoLoadSubscriptionResponse()Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "auto_load_response"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoLoadThresholdAmount()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "autoload_threshold_amount"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v0, "500"

    .line 65
    :cond_0
    return-object v0
.end method

.method public getWithdraAcctName()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "citrus_withdraw_acctname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWithdraAcctNumber()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "citrus_withdraw_acctnumber"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWithdraBankifsc()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "citrus_withdraw_bankifsc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoLoadEnable()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "auto_load_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoLoadAmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "autoLoadAmount"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoload_amount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public setAutoLoadEnable(Z)V
    .locals 2
    .param p1, "autoLoadEnable"    # Z

    .line 89
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_load_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method

.method public setAutoLoadSubscriptionResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "autoLoadSubscriptionResponse"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_load_response"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public setAutoLoadThresholdAmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "autoLoadThresholdAmount"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoload_threshold_amount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method public setUserBankDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountHolderName"    # Ljava/lang/String;
    .param p2, "accountNo"    # Ljava/lang/String;
    .param p3, "ifscCode"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    const-string v1, "citrus_withdraw_acctname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string v1, "citrus_withdraw_acctnumber"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    const-string v1, "citrus_withdraw_bankifsc"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method
