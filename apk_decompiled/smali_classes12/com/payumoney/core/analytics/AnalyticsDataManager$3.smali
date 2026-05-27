.class Lcom/payumoney/core/analytics/AnalyticsDataManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/payumoney/core/analytics/AnalyticsDataManager;


# direct methods
.method constructor <init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/analytics/AnalyticsDataManager;

    .line 217
    iput-object p1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    iput-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 222
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->h(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v2}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 232
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v2}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$3;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->e(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :goto_2
    return-void
.end method
