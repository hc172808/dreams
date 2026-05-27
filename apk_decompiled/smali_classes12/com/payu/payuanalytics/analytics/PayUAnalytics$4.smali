.class final Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 235
    const-string v0, "status"

    const-string v1, "command=EventAnalytics&data="

    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 236
    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 238
    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->h(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "analytics_buffer_key"

    if-eqz v3, :cond_6

    .line 239
    nop

    .line 241
    const/16 v3, 0xc8

    const/16 v6, 0x7530

    :try_start_0
    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v8}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/payu/payuanalytics/analytics/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 255
    :goto_1
    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 257
    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->i(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    .line 258
    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v8}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v8, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v8}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object v8, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v8, v2, v7}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 263
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    sget-object v2, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    .line 1141
    invoke-static {v2, v1, v6}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    .line 267
    nop

    .line 269
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 271
    if-ne v2, v3, :cond_2

    .line 273
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_2

    .line 277
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_2
    goto/16 :goto_4

    .line 289
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    goto/16 :goto_4

    .line 245
    :catchall_0
    move-exception v7

    .line 248
    :try_start_2
    invoke-virtual {v2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 249
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 255
    :goto_2
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 257
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->i(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    .line 258
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v4, v8, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v8

    .line 263
    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    sget-object v2, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    .line 2141
    invoke-static {v2, v1, v6}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    .line 267
    nop

    .line 269
    if-eqz v1, :cond_5

    .line 270
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 271
    if-ne v2, v3, :cond_5

    .line 273
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_5

    .line 277
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :cond_5
    goto :goto_3

    .line 289
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    :goto_3
    throw v7

    .line 295
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 298
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_7

    .line 299
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$4;->a:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->j(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 303
    :cond_7
    return-void

    .line 235
    :cond_8
    goto/16 :goto_0
.end method
