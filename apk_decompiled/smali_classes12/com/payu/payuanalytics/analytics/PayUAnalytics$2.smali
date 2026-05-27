.class final Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 164
    const-string v0, "analytics_buffer_key"

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 174
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 178
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$2;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    const-string v3, "com.payu.payuanalytics"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1183
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1184
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 181
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    return-void
.end method
