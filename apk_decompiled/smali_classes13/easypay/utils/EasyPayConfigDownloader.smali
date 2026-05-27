.class public Leasypay/utils/EasyPayConfigDownloader;
.super Landroidx/core/app/JobIntentService;
.source "EasyPayConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;
    }
.end annotation


# static fields
.field private static final JOB_ID:I = 0x911


# instance fields
.field private mJsonDownloadListener:Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;

.field private requestBankDetailJson:Ljava/lang/String;

.field private sharedPref:Landroid/content/SharedPreferences;

.field sharedPrefETag:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "jsonDownloadListener"    # Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 48
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Leasypay/utils/EasyPayConfigDownloader;->setJsonDownloadListener(Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;)V

    .line 50
    invoke-static {p2, p3}, Leasypay/utils/EasyPayConfigDownloader;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const-class v0, Leasypay/utils/EasyPayConfigDownloader;

    const/16 v1, 0x911

    invoke-static {p0, v0, v1, p1}, Leasypay/utils/EasyPayConfigDownloader;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 55
    return-void
.end method


# virtual methods
.method public downloadConfigFile()V
    .locals 10

    .line 81
    const-string v0, "easypay_configuration_load_timestamp"

    :try_start_0
    iget-object v1, p0, Leasypay/utils/EasyPayConfigDownloader;->sharedPref:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 82
    .local v4, "timestamp":J
    iget-object v1, p0, Leasypay/utils/EasyPayConfigDownloader;->sharedPref:Landroid/content/SharedPreferences;

    const-string v6, "easypay_configuration_ttl"

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 84
    .local v1, "ttl":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    .line 86
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3}, Leasypay/manager/PaytmAssist;->getConfigUrlToHit()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EasyPay Config requestURL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    invoke-virtual {p0, v3}, Leasypay/utils/EasyPayConfigDownloader;->downloadFilew(Ljava/lang/String;)Z

    move-result v6

    .line 90
    .local v6, "downloadSuccess":Z
    if-eqz v6, :cond_0

    .line 91
    iget-object v7, p0, Leasypay/utils/EasyPayConfigDownloader;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 92
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "ttl":J
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "timestamp":J
    .end local v6    # "downloadSuccess":Z
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public downloadFilew(Ljava/lang/String;)Z
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .line 106
    const-string v0, "bnkCode"

    const-string v1, "payType"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 110
    .local v3, "ucon":Ljava/net/HttpURLConnection;
    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    const/16 v4, 0x32c8

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 114
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Leasypay/utils/EasyPayConfigDownloader;->requestBankDetailJson:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v5, "requestbody":Lorg/json/JSONObject;
    const-string v6, "bankName"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v6, "payMode"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "cardScheme"

    if-eqz v6, :cond_0

    .line 121
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :goto_0
    const-string v6, "orderId"

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v8

    invoke-virtual {v8}, Leasypay/manager/PaytmAssist;->getOrderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v6, "mid"

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v8

    invoke-virtual {v8}, Leasypay/manager/PaytmAssist;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v6, "deviceType"

    const-string v8, "ANDROID"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resquestBody:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    nop

    .line 131
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {p0, v0, v1, v6}, Leasypay/utils/EasyPayUtils;->getSavedEtag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "savedEtag":Ljava/lang/String;
    const-string v1, "If-None-Match"

    if-nez v0, :cond_1

    const-string v6, ""

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    invoke-virtual {v3, v1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v3, v1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 138
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EasyPay Config requestbody:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v6, "ETag"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "etag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 143
    .local v7, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1400

    invoke-direct {v8, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 145
    .local v8, "inStream":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    .local v10, "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .local v12, "line":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 150
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 153
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unique Assist Config response"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v6}, Leasypay/utils/EasyPayUtils;->saveConfigWithEtag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v11, "intent":Landroid/content/Intent;
    const-string v13, "com.drc.paytm_example.EASYPAY_SINGLE_BANK_CONFIG_DOWNLOADED"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v11}, Leasypay/utils/EasyPayConfigDownloader;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .end local v0    # "savedEtag":Ljava/lang/String;
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "ucon":Ljava/net/HttpURLConnection;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "requestbody":Lorg/json/JSONObject;
    .end local v6    # "etag":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "inStream":Ljava/io/BufferedInputStream;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "line":Ljava/lang/String;
    nop

    .line 166
    const/4 v0, 0x1

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const/4 v1, 0x0

    return v1
.end method

.method public onCreate()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 69
    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    const-string v0, "com.paytm.com.paytm.pgsdk.easypay.NEW_PREFERENCE_FILE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leasypay/utils/EasyPayConfigDownloader;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPayConfigDownloader;->sharedPref:Landroid/content/SharedPreferences;

    .line 74
    const-string v0, "newETAGPreference"

    invoke-virtual {p0, v0, v1}, Leasypay/utils/EasyPayConfigDownloader;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPayConfigDownloader;->sharedPrefETag:Landroid/content/SharedPreferences;

    .line 75
    const-string v0, "extra_bank_req"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPayConfigDownloader;->requestBankDetailJson:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Leasypay/utils/EasyPayConfigDownloader;->downloadConfigFile()V

    .line 77
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/core/app/JobIntentService;->onStart(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method

.method public setJsonDownloadListener(Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;)V
    .locals 0
    .param p1, "jsonDownloadListener"    # Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;

    .line 58
    iput-object p1, p0, Leasypay/utils/EasyPayConfigDownloader;->mJsonDownloadListener:Leasypay/utils/EasyPayConfigDownloader$JsonDownloadListener;

    .line 59
    return-void
.end method
