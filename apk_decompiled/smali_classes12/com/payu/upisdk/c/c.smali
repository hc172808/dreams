.class public Lcom/payu/upisdk/c/c;
.super Lcom/payu/upisdk/c/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/payu/upisdk/bean/UpiConfig;

.field private f:Lcom/payu/upisdk/util/b;

.field private g:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/payu/upisdk/c/b;-><init>()V

    .line 33
    new-instance v0, Lcom/payu/upisdk/c/c$1;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/c/c$1;-><init>(Lcom/payu/upisdk/c/c;)V

    iput-object v0, p0, Lcom/payu/upisdk/c/c;->g:Ljava/lang/reflect/InvocationHandler;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payu/upisdk/c/c;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 103
    :try_start_0
    const-class v0, Lcom/payu/upisdk/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 104
    const-string v1, "com.payu.phonepe.PhonePeWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/InvocationHandler;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/payu/upisdk/c/c;->g:Ljava/lang/reflect/InvocationHandler;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 109
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/bean/UpiConfig;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payu/upisdk/c/c;->e:Lcom/payu/upisdk/bean/UpiConfig;

    return-object p0
.end method

.method static synthetic c(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/util/b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payu/upisdk/c/c;->f:Lcom/payu/upisdk/util/b;

    return-object p0
.end method

.method static synthetic d(Lcom/payu/upisdk/c/c;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payu/upisdk/c/c;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V
    .locals 9

    .line 77
    :try_start_0
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 78
    iput-object v0, p0, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/payu/upisdk/c/c;->a()V

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/payu/upisdk/c/c;->d:Ljava/lang/ref/WeakReference;

    .line 82
    new-instance v0, Lcom/payu/upisdk/util/b;

    invoke-direct {v0}, Lcom/payu/upisdk/util/b;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/c/c;->f:Lcom/payu/upisdk/util/b;

    .line 83
    iput-object p2, p0, Lcom/payu/upisdk/c/c;->e:Lcom/payu/upisdk/bean/UpiConfig;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/c/c;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Postdata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 86
    const-string v0, "com.payu.phonepe.PhonePe"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->f(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "makePayment"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/Boolean;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Landroid/view/View;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p2}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {p2}, Lcom/payu/upisdk/bean/UpiConfig;->isPhonePeUserCacheEnabled()Z

    move-result p1

    if-ne p1, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {p2}, Lcom/payu/upisdk/bean/UpiConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Class name "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 99
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 135
    const-string v0, "Class Name: "

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 135
    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 4081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 136
    iput-object v1, p0, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 138
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/payu/upisdk/c/c;->a()V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PaymentOptionHash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n Merchant key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nUser credentials "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkForPaymentAvailability"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/payu/upisdk/c/c;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "checkForPaymentOptionAvailability exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    return-void
.end method
