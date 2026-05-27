.class public Lcom/paytm/pgsdk/IntentServicePostNotification;
.super Landroid/app/IntentService;
.source "IntentServicePostNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const-string v0, "IntentServicePostNotification"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public callHttp(Ljava/lang/String;)V
    .locals 7
    .param p1, "urlCall"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "url":Ljava/net/URL;
    nop

    .line 45
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 49
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v3, "isw":Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    .line 52
    .local v4, "data":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 53
    int-to-char v5, v4

    .line 54
    .local v5, "current":C
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    move v4, v6

    .line 55
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v5    # "current":C
    goto :goto_0

    .line 61
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "isw":Ljava/io/InputStreamReader;
    .end local v4    # "data":I
    :cond_1
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 61
    .end local v1    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :goto_1
    return-void

    .line 61
    .restart local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_2
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_3
    throw v1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "URL":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/paytm/pgsdk/IntentServicePostNotification;->callHttp(Ljava/lang/String;)V

    .line 33
    .end local v0    # "URL":Ljava/lang/String;
    :cond_0
    return-void
.end method
