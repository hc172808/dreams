.class public Lcom/payu/socketverification/socket/SocketHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/payu/socketverification/socket/SocketHandler;


# instance fields
.field private b:Lio/socket/client/Socket;

.field private c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/payu/socketverification/socket/SocketHandler;
    .locals 2

    .line 45
    sget-object v0, Lcom/payu/socketverification/socket/SocketHandler;->a:Lcom/payu/socketverification/socket/SocketHandler;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/payu/socketverification/socket/SocketHandler;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/payu/socketverification/socket/SocketHandler;->a:Lcom/payu/socketverification/socket/SocketHandler;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/payu/socketverification/socket/SocketHandler;

    invoke-direct {v1}, Lcom/payu/socketverification/socket/SocketHandler;-><init>()V

    sput-object v1, Lcom/payu/socketverification/socket/SocketHandler;->a:Lcom/payu/socketverification/socket/SocketHandler;

    .line 49
    :cond_0
    sget-object v1, Lcom/payu/socketverification/socket/SocketHandler;->a:Lcom/payu/socketverification/socket/SocketHandler;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    sget-object v0, Lcom/payu/socketverification/socket/SocketHandler;->a:Lcom/payu/socketverification/socket/SocketHandler;

    return-object v0
.end method


# virtual methods
.method public createSocket(Lcom/payu/socketverification/socket/SocketPaymentResponse;Landroid/app/Activity;Lcom/payu/socketverification/interfaces/PayUSocketEventListener;)V
    .locals 6
    .param p1, "socketPaymentResponse"    # Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "payUSocketEventListener"    # Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 64
    const-string v0, "PayU"

    :try_start_0
    new-instance v1, Lio/socket/client/IO$Options;

    invoke-direct {v1}, Lio/socket/client/IO$Options;-><init>()V

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/client/IO$Options;->reconnection:Z

    .line 66
    const/4 v2, 0x3

    iput v2, v1, Lio/socket/client/IO$Options;->reconnectionAttempts:I

    .line 67
    const-string v2, "websocket"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/socket/client/IO$Options;->transports:[Ljava/lang/String;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getPushServiceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/upi-response?payuId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/ref/WeakReference;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/payu/socketverification/socket/SocketHandler;->d:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    :try_start_1
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1113
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1114
    sget v4, Lcom/payu/socketverification/R$string;->payu_logging_enabled:I

    invoke-virtual {p2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1115
    sget v5, Lcom/payu/socketverification/R$string;->payu_logs_level:I

    invoke-virtual {p2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x7

    invoke-virtual {v3, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Logging Enabledd "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Logs Level "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    sget-object v3, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2024
    iput p2, v3, Lcom/payu/socketverification/bean/a;->c:I

    .line 1119
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 3016
    iput-boolean v4, p2, Lcom/payu/socketverification/bean/a;->b:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1123
    goto :goto_0

    .line 1120
    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketHandler;
    :catch_0
    move-exception p2

    .line 1121
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception metadata "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 71
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Socket URL > "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    nop

    .end local p1    # "socketPaymentResponse":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketHandler;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 73
    invoke-static {v2, v1}, Lio/socket/client/IO;->socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketHandler;->b:Lio/socket/client/Socket;

    .line 74
    sget-object p1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 3032
    .end local p3    # "payUSocketEventListener":Lcom/payu/socketverification/interfaces/PayUSocketEventListener;
    iput-object p3, p1, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 75
    sget-object p1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 4028
    iget-object p1, p1, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 75
    invoke-interface {p1}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->onSocketCreated()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    return-void

    .line 76
    :catch_1
    move-exception p1

    .line 77
    sget-object p2, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 5028
    iget-object p2, p2, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 77
    const/16 p3, 0x3eb

    const-string v1, "Socket is not created "

    invoke-interface {p2, p3, v1}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public startSocketEvents(Ljava/lang/String;Ljava/lang/String;Lcom/payu/socketverification/interfaces/PayUSocketEventListener;Landroid/view/View;)V
    .locals 4
    .param p1, "merchantKey"    # Ljava/lang/String;
    .param p2, "txnId"    # Ljava/lang/String;
    .param p3, "payUSocketEventListener"    # Lcom/payu/socketverification/interfaces/PayUSocketEventListener;
    .param p4, "customProgressDialogView"    # Landroid/view/View;

    .line 92
    const-string v0, "PayU"

    const-string v1, "Start Socket Events "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketHandler;->d:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 5032
    iput-object p3, v1, Lcom/payu/socketverification/bean/a;->d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;

    .line 96
    iget-object v1, p0, Lcom/payu/socketverification/socket/SocketHandler;->b:Lio/socket/client/Socket;

    if-eqz v1, :cond_4

    .line 97
    invoke-static {}, Lcom/payu/socketverification/socket/b;->a()Lcom/payu/socketverification/socket/b;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/socketverification/socket/SocketHandler;->b:Lio/socket/client/Socket;

    iget-object v3, p0, Lcom/payu/socketverification/socket/SocketHandler;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object p3, v3

    check-cast p3, Landroid/app/Activity;

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketHandler;
    iget-object v3, p0, Lcom/payu/socketverification/socket/SocketHandler;->c:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 5133
    .end local p1    # "merchantKey":Ljava/lang/String;
    .end local p2    # "txnId":Ljava/lang/String;
    .end local p4    # "customProgressDialogView":Landroid/view/View;
    iput-object v0, v1, Lcom/payu/socketverification/socket/b;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 5134
    iput-object v2, v1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    .line 5135
    iput-object p1, v1, Lcom/payu/socketverification/socket/b;->h:Ljava/lang/String;

    .line 5136
    iput-object p2, v1, Lcom/payu/socketverification/socket/b;->i:Ljava/lang/String;

    .line 5137
    iput-object v3, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 5138
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    .line 5139
    iput-object v1, v1, Lcom/payu/socketverification/socket/b;->e:Lcom/payu/socketverification/interfaces/IVerifyResponse;

    .line 5140
    nop

    .line 6087
    iput-object p4, v1, Lcom/payu/socketverification/socket/a;->l:Landroid/view/View;

    .line 5141
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, v1, Lcom/payu/socketverification/socket/b;->c:Landroid/os/Handler;

    .line 5142
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, v1, Lcom/payu/socketverification/socket/b;->d:Landroid/os/Handler;

    .line 5143
    nop

    .line 6147
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    if-eqz p1, :cond_2

    .line 6148
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiPushExpiry()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6149
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiPushExpiry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/payu/socketverification/socket/b$b;->a(J)J

    .line 6151
    :cond_0
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiVerificationInterval()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6152
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiVerificationInterval()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/payu/socketverification/socket/b$b;->b(J)J

    .line 6154
    :cond_1
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6155
    iget-object p1, v1, Lcom/payu/socketverification/socket/b;->f:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/payu/socketverification/socket/b$b;->c(J)J

    .line 98
    :cond_2
    invoke-static {}, Lcom/payu/socketverification/socket/b;->a()Lcom/payu/socketverification/socket/b;

    move-result-object p1

    .line 6245
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    if-eqz p2, :cond_3

    .line 6246
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget p4, Lcom/payu/socketverification/socket/b$a;->a:I

    invoke-virtual {p1, p4}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object p4

    const-string v0, "connect"

    invoke-virtual {p2, v0, p4}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 6247
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget p4, Lcom/payu/socketverification/socket/b$a;->c:I

    invoke-virtual {p1, p4}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object p4

    const-string v0, "disconnect"

    invoke-virtual {p2, v0, p4}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 6248
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget p4, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-virtual {p1, p4}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object p4

    const-string v0, "connect_error"

    invoke-virtual {p2, v0, p4}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 6249
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    sget p4, Lcom/payu/socketverification/socket/b$a;->b:I

    invoke-virtual {p1, p4}, Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;

    move-result-object p4

    const-string v0, "connect_timeout"

    invoke-virtual {p2, v0, p4}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 6250
    iget-object p2, p1, Lcom/payu/socketverification/socket/b;->b:Lio/socket/client/Socket;

    invoke-virtual {p2}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    .line 6251
    sget-object p2, Lcom/payu/socketverification/socket/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2}, Lcom/payu/socketverification/socket/b;->a(Ljava/lang/ref/WeakReference;)V

    .line 98
    :cond_3
    return-void

    .line 100
    :cond_4
    nop

    .end local p3    # "payUSocketEventListener":Lcom/payu/socketverification/interfaces/PayUSocketEventListener;
    const/16 p1, 0x3ec

    const-string p2, "Socket is null, please create socket before calling startSocketEvents()"

    invoke-interface {p3, p1, p2}, Lcom/payu/socketverification/interfaces/PayUSocketEventListener;->errorReceived(ILjava/lang/String;)V

    .line 102
    return-void
.end method
