.class public Leasypay/manager/EasypayWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "EasypayWebViewClient.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static smsTrackingTime:J


# instance fields
.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private mActivity:Landroid/app/Activity;

.field private mWcListListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leasypay/listeners/WebClientListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Leasypay/manager/EasypayWebViewClient;->smsTrackingTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasypayWebViewClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Leasypay/manager/EasypayWebViewClient;->mActivity:Landroid/app/Activity;

    .line 37
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmWcListListener()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Leasypay/manager/EasypayWebViewClient;->smsTrackingTime:J

    .line 39
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getFragment()Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 40
    return-void
.end method

.method static synthetic access$000(Leasypay/manager/EasypayWebViewClient;)Leasypay/actions/EasypayBrowserFragment;
    .locals 1
    .param p0, "x0"    # Leasypay/manager/EasypayWebViewClient;

    .line 23
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method private fireActions(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getAssistEngineTerminatedStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mActivity:Landroid/app/Activity;

    new-instance v1, Leasypay/manager/EasypayWebViewClient$1;

    invoke-direct {v1, p0, p1, p2}, Leasypay/manager/EasypayWebViewClient$1;-><init>(Leasypay/manager/EasypayWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V
    .locals 2
    .param p1, "subsCriberClient"    # Leasypay/listeners/WebClientListener;

    .line 44
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 47
    .local v0, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Leasypay/listeners/WebClientListener;>;"
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Leasypay/listeners/WebClientListener;>;"
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Leasypay/utils/AssistInvokeException;

    const-string v1, "PaytmAssist Not Configured! Did you Missed StartConfigAssist"

    invoke-direct {v0, v1}, Leasypay/utils/AssistInvokeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "subsCriberClient":Leasypay/listeners/WebClientListener;
    throw v0
    :try_end_1
    .catch Leasypay/utils/AssistInvokeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .restart local p1    # "subsCriberClient":Leasypay/listeners/WebClientListener;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Leasypay/utils/AssistInvokeException;
    invoke-virtual {v0}, Leasypay/utils/AssistInvokeException;->printStackTrace()V

    .line 56
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .end local v0    # "e":Leasypay/utils/AssistInvokeException;
    :goto_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 89
    const-string v0, "EXCEPTION"

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :try_start_0
    iget-object v1, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/listeners/WebClientListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .local v2, "c":Leasypay/listeners/WebClientListener;
    :try_start_1
    invoke-interface {v2, p1, p2}, Leasypay/listeners/WebClientListener;->OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    goto :goto_1

    .line 96
    :catch_0
    move-exception v3

    .line 99
    .end local v2    # "c":Leasypay/listeners/WebClientListener;
    :goto_1
    goto :goto_0

    .line 105
    :cond_0
    goto :goto_2

    .line 102
    :catch_1
    move-exception v1

    .line 103
    .local v1, "error":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    invoke-static {v0, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iget-object v1, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-nez v1, :cond_1

    .line 110
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getFragment()Leasypay/actions/EasypayBrowserFragment;

    move-result-object v1

    iput-object v1, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 113
    :cond_1
    invoke-direct {p0, p1, p2}, Leasypay/manager/EasypayWebViewClient;->fireActions(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1, p2}, Leasypay/manager/PaytmAssist;->setLastLoadedUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    goto :goto_3

    .line 118
    :catch_2
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-static {v0, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onpage started-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    invoke-interface {v1, p1, p2, p3}, Leasypay/listeners/WebClientListener;->OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "error":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .end local v0    # "error":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->resetActions()V

    .line 172
    :try_start_1
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Leasypay/manager/EasypayWebViewClient$2;

    invoke-direct {v1, p0}, Leasypay/manager/EasypayWebViewClient$2;-><init>(Leasypay/manager/EasypayWebViewClient;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_2

    .line 177
    :catch_1
    move-exception v0

    .line 181
    :cond_1
    :goto_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public declared-synchronized onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    .line 144
    .local v1, "c":Leasypay/listeners/WebClientListener;
    invoke-interface {v1, p1, p2, p3}, Leasypay/listeners/WebClientListener;->OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v1    # "c":Leasypay/listeners/WebClientListener;
    goto :goto_0

    .line 149
    .end local p0    # "this":Leasypay/manager/EasypayWebViewClient;
    :cond_0
    goto :goto_1

    .line 141
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "inHandler":Landroid/webkit/SslErrorHandler;
    .end local p3    # "inError":Landroid/net/http/SslError;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 147
    .restart local p1    # "inView":Landroid/webkit/WebView;
    .restart local p2    # "inHandler":Landroid/webkit/SslErrorHandler;
    .restart local p3    # "inError":Landroid/net/http/SslError;
    :catch_0
    move-exception v0

    .line 150
    :goto_1
    if-eqz p2, :cond_1

    .line 151
    :try_start_1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 141
    .end local p1    # "inView":Landroid/webkit/WebView;
    .end local p2    # "inHandler":Landroid/webkit/SslErrorHandler;
    .end local p3    # "inError":Landroid/net/http/SslError;
    :goto_2
    monitor-exit p0

    throw p1

    .line 152
    .restart local p1    # "inView":Landroid/webkit/WebView;
    .restart local p2    # "inHandler":Landroid/webkit/SslErrorHandler;
    .restart local p3    # "inError":Landroid/net/http/SslError;
    :cond_1
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAssistWebClientListener(Leasypay/listeners/WebClientListener;)V
    .locals 3
    .param p1, "subsCriberClient"    # Leasypay/listeners/WebClientListener;

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Leasypay/listeners/WebClientListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    .line 67
    .local v1, "listener":Leasypay/listeners/WebClientListener;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v1    # "listener":Leasypay/listeners/WebClientListener;
    .end local p0    # "this":Leasypay/manager/EasypayWebViewClient;
    :cond_0
    goto :goto_0

    .line 65
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Leasypay/listeners/WebClientListener;>;"
    :cond_1
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 77
    :cond_2
    :try_start_3
    new-instance v0, Leasypay/utils/AssistInvokeException;

    const-string v1, "PaytmAssist Not Configured! Did you Missed StartConfigAssist"

    invoke-direct {v0, v1}, Leasypay/utils/AssistInvokeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "subsCriberClient":Leasypay/listeners/WebClientListener;
    throw v0
    :try_end_3
    .catch Leasypay/utils/AssistInvokeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .restart local p1    # "subsCriberClient":Leasypay/listeners/WebClientListener;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Leasypay/utils/AssistInvokeException;
    :try_start_4
    invoke-virtual {v0}, Leasypay/utils/AssistInvokeException;->printStackTrace()V

    .line 80
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    .end local v0    # "e":Leasypay/utils/AssistInvokeException;
    :goto_2
    monitor-exit p0

    return-void

    .line 61
    .end local p1    # "subsCriberClient":Leasypay/listeners/WebClientListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 225
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    .line 227
    .local v1, "c":Leasypay/listeners/WebClientListener;
    invoke-interface {v1, p1, p2}, Leasypay/listeners/WebClientListener;->WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "c":Leasypay/listeners/WebClientListener;
    goto :goto_0

    .line 232
    :cond_0
    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 204
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    .line 206
    .local v1, "c":Leasypay/listeners/WebClientListener;
    invoke-interface {v1, p1, p2}, Leasypay/listeners/WebClientListener;->WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .end local v1    # "c":Leasypay/listeners/WebClientListener;
    goto :goto_0

    .line 211
    :cond_0
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 214
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 187
    :try_start_0
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient;->mWcListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/WebClientListener;

    .line 189
    .local v1, "c":Leasypay/listeners/WebClientListener;
    invoke-interface {v1, p1, p2}, Leasypay/listeners/WebClientListener;->WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .end local v1    # "c":Leasypay/listeners/WebClientListener;
    goto :goto_0

    .line 195
    :cond_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
