.class public Lcom/paytm/pgsdk/PaytmPGService;
.super Ljava/lang/Object;
.source "PaytmPGService.java"


# static fields
.field private static final PRODUCTION_CANCEL_TRANSACTION_URL:Ljava/lang/String; = "https://secure.paytm.in/oltp/HANDLER_INTERNAL/CANCEL_TXN"

.field private static final PRODUCTION_CAS_URL:Ljava/lang/String; = "https://secure.paytm.in/oltp-web/generateChecksum"

.field private static final PRODUCTION_PG_URL:Ljava/lang/String; = "https://secure.paytm.in/oltp-web/processTransaction"

.field private static final PRODUCTION_STATUS_QUERY_URL:Ljava/lang/String; = "https://secure.paytm.in/oltp/HANDLER_INTERNAL/TXNSTATUS"

.field private static final STAGING_CANCEL_TRANSACTION_URL:Ljava/lang/String; = "https://pguat.paytm.com/oltp/HANDLER_INTERNAL/CANCEL_TXN"

.field private static final STAGING_CAS_URL:Ljava/lang/String; = "https://pguat.paytm.com:8448/CAS/ChecksumGenerator"

.field private static final STAGING_PG_URL:Ljava/lang/String; = "https://pguat.paytm.com/oltp-web/processTransaction"

.field private static final STAGING_STATUS_QUERY_URL:Ljava/lang/String; = "https://pguat.paytm.com/oltp/HANDLER_INTERNAL/TXNSTATUS"

.field private static volatile mService:Lcom/paytm/pgsdk/PaytmPGService;

.field public static pgUrlDemo:Ljava/lang/String;


# instance fields
.field private isAssistEnabled:Z

.field protected volatile mCancelTransactionURL:Ljava/lang/String;

.field public volatile mCertificate:Lcom/paytm/pgsdk/PaytmClientCertificate;

.field public volatile mOrder:Lcom/paytm/pgsdk/PaytmOrder;

.field protected volatile mPGURL:Ljava/lang/String;

.field private volatile mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

.field protected volatile mRefundCallback:Lcom/paytm/pgsdk/PaytmRefundCallback;

.field protected volatile mStatusQueryCallback:Lcom/paytm/pgsdk/PaytmStatusQueryCallback;

.field private volatile mStatusQueryURL:Ljava/lang/String;

.field private volatile mbServiceRunning:Z

.field private mid:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private txnToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/paytm/pgsdk/PaytmPGService;->pgUrlDemo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->isAssistEnabled:Z

    .line 59
    return-void
.end method

.method private getApplicationinfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 279
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 283
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Redirection"

    invoke-virtual {v2, v4, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getPreProductionService()Lcom/paytm/pgsdk/PaytmPGService;
    .locals 4

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    .line 115
    .local v1, "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    const-string v2, "https://securegw.paytm.in/theia/closeOrder"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mCancelTransactionURL:Ljava/lang/String;

    .line 117
    const-string v2, "https://securegw-preprod.paytm.in/theia/processTransaction"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/SaveReferences;->setProduction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v0

    return-object v1

    .line 113
    .end local v1    # "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProductionService()Lcom/paytm/pgsdk/PaytmPGService;
    .locals 4

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    .line 107
    .local v1, "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    const-string v2, "https://securegw.paytm.in/theia/closeOrder"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mCancelTransactionURL:Ljava/lang/String;

    .line 108
    const-string v2, "https://securegw.paytm.in/theia/processTransaction"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/SaveReferences;->setProduction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-object v1

    .line 105
    .end local v1    # "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getService()Lcom/paytm/pgsdk/PaytmPGService;
    .locals 5

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/paytm/pgsdk/PaytmPGService;->mService:Lcom/paytm/pgsdk/PaytmPGService;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "Creating an instance of Paytm PG Service..."

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/paytm/pgsdk/PaytmPGService;

    invoke-direct {v1}, Lcom/paytm/pgsdk/PaytmPGService;-><init>()V

    sput-object v1, Lcom/paytm/pgsdk/PaytmPGService;->mService:Lcom/paytm/pgsdk/PaytmPGService;

    .line 66
    const-string v1, "Created a new instance of Paytm PG Service."

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "var1":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 73
    .end local v1    # "var1":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/paytm/pgsdk/PaytmPGService;->mService:Lcom/paytm/pgsdk/PaytmPGService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 62
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getShowPaymentService(Lcom/paytm/pgsdk/PaytmOrder;Ljava/lang/String;)Lcom/paytm/pgsdk/PaytmPGService;
    .locals 7
    .param p0, "paytmOrder"    # Lcom/paytm/pgsdk/PaytmOrder;
    .param p1, "url"    # Ljava/lang/String;

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v1

    .line 126
    .local v1, "hmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "https://securegw.paytm.in/theia/api/v1/showPaymentPage"

    move-object p1, v2

    .line 130
    :cond_0
    const-string v2, "ORDER_ID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "orderid":Ljava/lang/String;
    const-string v3, "MID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "mid":Ljava/lang/String;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v4

    .line 134
    .local v4, "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?mid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&orderId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/paytm/pgsdk/SaveReferences;->setProduction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    return-object v4

    .line 123
    .end local v1    # "hmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "orderid":Ljava/lang/String;
    .end local v3    # "mid":Ljava/lang/String;
    .end local v4    # "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    .end local p0    # "paytmOrder":Lcom/paytm/pgsdk/PaytmOrder;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getStagingService(Ljava/lang/String;)Lcom/paytm/pgsdk/PaytmPGService;
    .locals 4
    .param p0, "payUrl"    # Ljava/lang/String;

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    .line 92
    .local v1, "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    const-string v2, "https://pguat.paytm.com/oltp/HANDLER_INTERNAL/TXNSTATUS"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mStatusQueryURL:Ljava/lang/String;

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iput-object p0, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    .line 95
    iget-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    sput-object v2, Lcom/paytm/pgsdk/PaytmPGService;->pgUrlDemo:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "https://securegw-stage.paytm.in/theia/processTransaction"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    .line 99
    iget-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    sput-object v2, Lcom/paytm/pgsdk/PaytmPGService;->pgUrlDemo:Ljava/lang/String;

    .line 101
    :goto_0
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/SaveReferences;->setProduction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-object v1

    .line 90
    .end local v1    # "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    .end local p0    # "payUrl":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getStagingShowPaymentService()Lcom/paytm/pgsdk/PaytmPGService;
    .locals 3

    const-class v0, Lcom/paytm/pgsdk/PaytmPGService;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    .line 141
    .local v1, "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    const-string v2, "https://securegw-stage.paytm.in/theia/api/v1/showPaymentPage"

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v0

    return-object v1

    .line 139
    .end local v1    # "PGService":Lcom/paytm/pgsdk/PaytmPGService;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTransactionStatusUrl()Ljava/lang/String;
    .locals 3

    .line 77
    const-string v0, "securegw.paytm.in"

    .line 78
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v2

    iget-object v2, v2, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 84
    .end local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 87
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/theia/v1/transactionStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAssistEnabled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->isAssistEnabled:Z

    return v0
.end method


# virtual methods
.method public enableLog(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmPGService;->getApplicationinfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 166
    .local v0, "appInfoo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 167
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 168
    .local v1, "isDebuggable":Z
    :cond_0
    invoke-static {v1}, Lcom/paytm/pgsdk/Log;->setEnableDebugLog(Z)V

    .line 169
    .end local v1    # "isDebuggable":Z
    goto :goto_0

    .line 170
    :cond_1
    invoke-static {v1}, Lcom/paytm/pgsdk/Log;->setEnableDebugLog(Z)V

    .line 173
    :goto_0
    return-void
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/SaveReferences;->getPaytmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    return-object v0
.end method

.method public declared-synchronized initialize(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmClientCertificate;)V
    .locals 2
    .param p1, "inOrder"    # Lcom/paytm/pgsdk/PaytmOrder;
    .param p2, "inCertificate"    # Lcom/paytm/pgsdk/PaytmClientCertificate;

    monitor-enter p0

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    .line 151
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "MID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mid:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ORDER_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->orderId:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "TXN_TOKEN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->txnToken:Ljava/lang/String;

    .line 156
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGService;
    :cond_0
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmPGService;->mCertificate:Lcom/paytm/pgsdk/PaytmClientCertificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 149
    .end local p1    # "inOrder":Lcom/paytm/pgsdk/PaytmOrder;
    .end local p2    # "inCertificate":Lcom/paytm/pgsdk/PaytmClientCertificate;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAssistEnabled(Z)V
    .locals 0
    .param p1, "assistEnabled"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/paytm/pgsdk/PaytmPGService;->isAssistEnabled:Z

    .line 53
    return-void
.end method

.method public declared-synchronized startPaymentTransaction(Landroid/content/Context;ZLcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V
    .locals 4
    .param p1, "inCtxt"    # Landroid/content/Context;
    .param p2, "inbHideHeader"    # Z
    .param p3, "inPaymentTransactionCallback"    # Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/paytm/pgsdk/PaytmPGService;->enableLog(Landroid/content/Context;)V

    .line 228
    invoke-static {p1}, Lcom/paytm/pgsdk/PaytmUtility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mbServiceRunning:Z

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "inEx":Landroid/os/Bundle;
    const-string v1, "mid"

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmPGService;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmPGService;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "txnToken"

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmPGService;->txnToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "Starting the Service..."

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v1, "PG1":Landroid/content/Intent;
    const-string v2, "mid"

    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmPGService;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "orderId"

    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmPGService;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "Parameters"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 241
    const-string v2, "HIDE_HEADER"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    const-string v2, "IS_ENABLE_ASSIST"

    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGService;->isAssistEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/paytm/pgsdk/PaytmPGService;->mbServiceRunning:Z

    .line 244
    iput-object p3, p0, Lcom/paytm/pgsdk/PaytmPGService;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    .line 245
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/paytm/pgsdk/SaveReferences;->setPaytmPaymentTransactionCallback(Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    .line 246
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 247
    const-string v2, "Service Started."

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 248
    .end local v0    # "inEx":Landroid/os/Bundle;
    .end local v1    # "PG1":Landroid/content/Intent;
    goto :goto_0

    .line 249
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGService;
    :cond_0
    const-string v0, "Service is already running."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 253
    invoke-interface {p3}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->networkNotAvailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    goto :goto_1

    .line 225
    .end local p1    # "inCtxt":Landroid/content/Context;
    .end local p2    # "inbHideHeader":Z
    .end local p3    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 255
    .restart local p1    # "inCtxt":Landroid/content/Context;
    .restart local p2    # "inbHideHeader":Z
    .restart local p3    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "var10":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 258
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v0    # "var10":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 225
    .end local p1    # "inCtxt":Landroid/content/Context;
    .end local p2    # "inbHideHeader":Z
    .end local p3    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPaymentTransaction(Landroid/content/Context;ZZLcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V
    .locals 8
    .param p1, "inCtxt"    # Landroid/content/Context;
    .param p2, "inbHideHeader"    # Z
    .param p3, "inbSendAllChecksumResponseParametersToPGServer"    # Z
    .param p4, "inPaymentTransactionCallback"    # Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/paytm/pgsdk/PaytmPGService;->enableLog(Landroid/content/Context;)V

    .line 179
    invoke-static {p1}, Lcom/paytm/pgsdk/PaytmUtility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 181
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGService;
    :cond_0
    const-string v0, "Invalid Params passed"

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGService;->mbServiceRunning:Z

    if-nez v0, :cond_3

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "inEx":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 189
    .local v3, "PG":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "paramName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 191
    .local v5, "paramValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 192
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "PG":Ljava/util/Map$Entry;
    .end local v4    # "paramName":Ljava/lang/String;
    .end local v5    # "paramValue":Ljava/lang/String;
    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "Starting the Service..."

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v1, "PG1":Landroid/content/Intent;
    const-string v2, "mid"

    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmPGService;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "orderId"

    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmPGService;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "Parameters"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    const-string v2, "HIDE_HEADER"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const-string v2, "IS_ENABLE_ASSIST"

    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGService;->isAssistEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string v2, "SEND_ALL_CHECKSUM_RESPONSE_PARAMETERS_TO_PG_SERVER"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/paytm/pgsdk/PaytmPGService;->mbServiceRunning:Z

    .line 205
    iput-object p4, p0, Lcom/paytm/pgsdk/PaytmPGService;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    .line 206
    invoke-static {}, Lcom/paytm/pgsdk/SaveReferences;->getInstance()Lcom/paytm/pgsdk/SaveReferences;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/paytm/pgsdk/SaveReferences;->setPaytmPaymentTransactionCallback(Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    .line 207
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 208
    const-string v2, "Service Started."

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 209
    .end local v0    # "inEx":Landroid/os/Bundle;
    .end local v1    # "PG1":Landroid/content/Intent;
    goto :goto_1

    .line 210
    :cond_3
    const-string v0, "Service is already running."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 214
    invoke-interface {p4}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->networkNotAvailable()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :goto_1
    goto :goto_2

    .line 176
    .end local p1    # "inCtxt":Landroid/content/Context;
    .end local p2    # "inbHideHeader":Z
    .end local p3    # "inbSendAllChecksumResponseParametersToPGServer":Z
    .end local p4    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 216
    .restart local p1    # "inCtxt":Landroid/content/Context;
    .restart local p2    # "inbHideHeader":Z
    .restart local p3    # "inbSendAllChecksumResponseParametersToPGServer":Z
    .restart local p4    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "var10":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 219
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v0    # "var10":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 176
    .end local p1    # "inCtxt":Landroid/content/Context;
    .end local p2    # "inbHideHeader":Z
    .end local p3    # "inbSendAllChecksumResponseParametersToPGServer":Z
    .end local p4    # "inPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized stopService()V
    .locals 1

    monitor-enter p0

    .line 265
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/paytm/pgsdk/PaytmPGService;->mService:Lcom/paytm/pgsdk/PaytmPGService;

    .line 266
    const-string v0, "Service Stopped."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 264
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
