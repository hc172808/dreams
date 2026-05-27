.class public Lcom/paytm/pgsdk/IntentServicePreNotification;
.super Landroid/app/IntentService;
.source "IntentServicePreNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    const-string v0, "IntentServicePreNotification"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public callHttp(Ljava/lang/String;)V
    .locals 7
    .param p1, "urlCall"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "url":Ljava/net/URL;
    nop

    .line 39
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .line 41
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 43
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v3, "isw":Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    .line 46
    .local v4, "data":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 47
    int-to-char v5, v4

    .line 48
    .local v5, "current":C
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    move v4, v6

    .line 49
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v5    # "current":C
    goto :goto_0

    .line 55
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "isw":Ljava/io/InputStreamReader;
    .end local v4    # "data":I
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 55
    .end local v1    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    :cond_1
    :goto_1
    return-void

    .line 55
    :goto_2
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    :cond_2
    throw v1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "URL":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/paytm/pgsdk/IntentServicePreNotification;->callHttp(Ljava/lang/String;)V

    .line 30
    .end local v0    # "URL":Ljava/lang/String;
    :cond_0
    return-void
.end method
