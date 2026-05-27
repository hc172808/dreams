.class Leasypay/manager/PaytmAssist$1;
.super Ljava/lang/Object;
.source "PaytmAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/manager/PaytmAssist;->fetchAPIByAppVersion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/manager/PaytmAssist;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/manager/PaytmAssist;

    .line 359
    iput-object p1, p0, Leasypay/manager/PaytmAssist$1;->this$0:Leasypay/manager/PaytmAssist;

    iput-object p2, p0, Leasypay/manager/PaytmAssist$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 365
    const-string v0, "deviceType"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://securegw.paytm.in/payassist/api/getURLByAppVersion"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 369
    .local v2, "uCon":Ljava/net/HttpURLConnection;
    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 370
    const/16 v3, 0x32c8

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 371
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 372
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 373
    .local v3, "requestBody":Lorg/json/JSONObject;
    const-string v4, "android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v4, "version"

    const-string v5, "8.2.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v4, "orderId"

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v5

    invoke-virtual {v5}, Leasypay/manager/PaytmAssist;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v4, "mid"

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v5

    invoke-virtual {v5}, Leasypay/manager/PaytmAssist;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v4, "ANDROID"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v0, "Fetch APi requestURL:https://securegw.paytm.in/payassist/api/getURLByAppVersion"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    const-string v0, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 383
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 384
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 385
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 386
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x1400

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 388
    .local v5, "inStream":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 392
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 393
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 395
    :cond_0
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Leasypay/entity/GetUrlResponnse;

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leasypay/entity/GetUrlResponnse;

    .line 396
    .local v8, "getUrlResponnse":Leasypay/entity/GetUrlResponnse;
    if-eqz v8, :cond_2

    .line 398
    invoke-virtual {v8}, Leasypay/entity/GetUrlResponnse;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 399
    invoke-virtual {v8}, Leasypay/entity/GetUrlResponnse;->getResponseUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 400
    iget-object v10, p0, Leasypay/manager/PaytmAssist$1;->this$0:Leasypay/manager/PaytmAssist;

    invoke-virtual {v8}, Leasypay/entity/GetUrlResponnse;->getResponseUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Leasypay/manager/PaytmAssist;->access$000(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V

    .line 402
    iget-object v10, p0, Leasypay/manager/PaytmAssist$1;->this$0:Leasypay/manager/PaytmAssist;

    iget-object v11, p0, Leasypay/manager/PaytmAssist$1;->val$s:Ljava/lang/String;

    invoke-static {v10, v11}, Leasypay/manager/PaytmAssist;->access$100(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V

    .line 403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get Config URL to hitURL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Leasypay/manager/PaytmAssist$1;->this$0:Leasypay/manager/PaytmAssist;

    invoke-virtual {v11}, Leasypay/manager/PaytmAssist;->getConfigUrlToHit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    :cond_1
    iget-object v10, p0, Leasypay/manager/PaytmAssist$1;->this$0:Leasypay/manager/PaytmAssist;

    const-string v11, ""

    invoke-static {v10, v11}, Leasypay/manager/PaytmAssist;->access$000(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V

    .line 409
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v2    # "uCon":Ljava/net/HttpURLConnection;
    .end local v3    # "requestBody":Lorg/json/JSONObject;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "getUrlResponnse":Leasypay/entity/GetUrlResponnse;
    .end local v9    # "line":Ljava/lang/String;
    goto :goto_2

    .line 414
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 412
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 410
    :catch_2
    move-exception v0

    .line 411
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Ljava/net/MalformedURLException;
    nop

    .line 419
    :goto_2
    return-void
.end method
