.class Lcom/payumoney/core/analytics/AnalyticsDataManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/analytics/AnalyticsDataManager;->log(Ljava/lang/String;)V
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

    .line 173
    iput-object p1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    iput-object p2, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->b(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 180
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_2
    :goto_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 188
    :goto_2
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->d(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v3}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->c(Lcom/payumoney/core/analytics/AnalyticsDataManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 191
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 201
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 198
    :catch_0
    move-exception v0

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 196
    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_3
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 202
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 203
    goto :goto_4

    .line 193
    :catch_2
    move-exception v0

    .line 194
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->a(Lcom/payumoney/core/analytics/AnalyticsDataManager;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 204
    :goto_4
    return-void

    .line 201
    :goto_5
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->f(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 202
    iget-object v1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$2;->b:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v1}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->g(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 203
    throw v0
.end method
