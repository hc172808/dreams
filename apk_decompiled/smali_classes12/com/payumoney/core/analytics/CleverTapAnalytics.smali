.class public Lcom/payumoney/core/analytics/CleverTapAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;
    }
.end annotation


# instance fields
.field private a:Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a:Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/core/analytics/CleverTapAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 89
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 91
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "X-CleverTap-Passcode"

    const-string v1, "X-CleverTap-Account-Id"

    if-eqz p3, :cond_1

    .line 95
    :try_start_1
    const-string p3, "TEST-9WR-68W-5K5Z"

    invoke-virtual {p1, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string p3, "QCY-SQE-ULKL"

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    const-string p3, "8WR-68W-5K5Z"

    invoke-virtual {p1, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string p3, "SCY-SQE-ULKL"

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    const-string p3, "Content-Type"

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string p3, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p5, :cond_2

    .line 104
    const-string p3, "X-Clevertap-Account_token"

    invoke-virtual {p1, p3, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    return-object p1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    .line 30
    iput-object p3, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a:Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    .line 31
    new-instance v0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;

    invoke-direct {v0, p0}, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;-><init>(Lcom/payumoney/core/analytics/CleverTapAnalytics;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    return-void
.end method
