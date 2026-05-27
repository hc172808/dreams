.class final Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;
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

    .line 187
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 193
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/payu/payuanalytics/analytics/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 197
    :cond_1
    :goto_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 201
    :goto_2
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 202
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 203
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 204
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_3
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 211
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 209
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 207
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 213
    :goto_4
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$3;->b:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 214
    throw v0

    .line 190
    :cond_2
    goto/16 :goto_0
.end method
