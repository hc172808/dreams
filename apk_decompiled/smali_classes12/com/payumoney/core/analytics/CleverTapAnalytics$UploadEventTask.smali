.class Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/analytics/CleverTapAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/analytics/CleverTapAnalytics;


# direct methods
.method constructor <init>(Lcom/payumoney/core/analytics/CleverTapAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/analytics/CleverTapAnalytics;

    .line 35
    iput-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    const/4 v6, 0x0

    aget-object v1, p1, v6

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, -0x1

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    nop

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    iget-object v0, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {v0}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedFailed()V

    .line 50
    :goto_0
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_1

    .line 53
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/payumoney/core/utils/SdkHelper;->getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v0, "fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedFailed()V

    goto :goto_1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedSuccessful()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    iget-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedFailed()V

    goto :goto_1

    .line 61
    :catch_2
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    iget-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedFailed()V

    .line 67
    :goto_1
    goto :goto_2

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a:Lcom/payumoney/core/analytics/CleverTapAnalytics;

    invoke-static {p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics;->a(Lcom/payumoney/core/analytics/CleverTapAnalytics;)Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/payumoney/core/listener/OnClevertapAnalyticsListener;->OnClevertapEventsLoggedFailed()V

    .line 73
    :cond_2
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payumoney/core/analytics/CleverTapAnalytics$UploadEventTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
