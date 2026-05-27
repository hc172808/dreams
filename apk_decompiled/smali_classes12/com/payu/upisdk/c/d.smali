.class public Lcom/payu/upisdk/c/d;
.super Lcom/payu/upisdk/c/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field private d:Landroid/app/Activity;

.field private e:Lcom/payu/upisdk/util/b;

.field private f:Lcom/payu/upisdk/bean/UpiConfig;

.field private g:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/payu/upisdk/c/b;-><init>()V

    .line 94
    new-instance v0, Lcom/payu/upisdk/c/d$1;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/c/d$1;-><init>(Lcom/payu/upisdk/c/d;)V

    iput-object v0, p0, Lcom/payu/upisdk/c/d;->g:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payu/upisdk/c/d;->d:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .line 77
    const-string v0, "Class Name: "

    :try_start_0
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 77
    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 4081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 78
    iput-object v1, p0, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/payu/upisdk/c/d;->d:Landroid/app/Activity;

    .line 80
    new-instance v1, Lcom/payu/upisdk/util/b;

    invoke-direct {v1}, Lcom/payu/upisdk/util/b;-><init>()V

    iput-object v1, p0, Lcom/payu/upisdk/c/d;->e:Lcom/payu/upisdk/util/b;

    .line 81
    new-instance v1, Lcom/payu/upisdk/bean/UpiConfig;

    invoke-direct {v1}, Lcom/payu/upisdk/bean/UpiConfig;-><init>()V

    iput-object v1, p0, Lcom/payu/upisdk/c/d;->f:Lcom/payu/upisdk/bean/UpiConfig;

    .line 82
    invoke-virtual {v1, p2}, Lcom/payu/upisdk/bean/UpiConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "local_cache_analytics"

    invoke-static {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/upisdk/c/d;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 84
    iget-object v1, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makePayment"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Sampay Methods"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Sampay Methods Length"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 90
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/payu/upisdk/c/d;->d:Landroid/app/Activity;

    .line 40
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 41
    iput-object v0, p0, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 43
    :cond_0
    :try_start_0
    const-class v0, Lcom/payu/upisdk/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 44
    const-string v1, "com.payu.samsungpay.SamsungWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/InvocationHandler;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/payu/upisdk/c/d;->g:Ljava/lang/reflect/InvocationHandler;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/payu/upisdk/c/d;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "local_cache_analytics"

    invoke-static {v0, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/c/d;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 49
    iget-object v0, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "checkSamsungPayAvailability"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-class v6, Landroid/content/Context;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/payu/upisdk/c/d;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v1

    aput-object p4, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Class Name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Sampay ca exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    return-void
.end method
