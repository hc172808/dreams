.class public final Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->b:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->j(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    nop

    .line 275
    move-object v2, v0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "txnid"

    const-string v5, "|"

    if-ge p1, v3, :cond_1

    .line 276
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v7}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->k(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-static {v0, p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v2

    .line 275
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "command=DeviceAnalytics&data="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->m(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->l(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    .line 284
    if-eqz p1, :cond_5

    .line 285
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_4

    .line 289
    :try_start_2
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 290
    invoke-static {p1}, Lcom/payu/payuanalytics/analytics/a;->a(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 291
    if-eqz p1, :cond_3

    .line 292
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 295
    nop

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v3}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->k(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    :cond_3
    goto :goto_5

    .line 302
    :catch_0
    move-exception p1

    .line 307
    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V

    .line 309
    goto :goto_5

    .line 311
    :cond_5
    iget-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 322
    :catch_1
    move-exception p1

    goto :goto_4

    .line 317
    :catch_2
    move-exception p1

    .line 318
    :try_start_4
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->i(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    goto :goto_5

    .line 316
    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 320
    :cond_6
    :goto_3
    goto :goto_5

    .line 322
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    :cond_7
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 253
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 253
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;
    check-cast p1, Ljava/lang/String;

    .line 1265
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 253
    return-void
.end method
