.class public Lcom/payu/custombrowser/b/b;
.super Lcom/payu/custombrowser/b/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field private d:Landroid/app/Activity;

.field private e:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field private f:Lcom/payu/custombrowser/util/c;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/payu/custombrowser/b/a;-><init>()V

    .line 33
    new-instance v0, Lcom/payu/custombrowser/b/b$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/b/b$1;-><init>(Lcom/payu/custombrowser/b/b;)V

    iput-object v0, p0, Lcom/payu/custombrowser/b/b;->h:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payu/custombrowser/b/b;->e:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 160
    const-string v0, "Class Name: "

    :try_start_0
    const-class v1, Lcom/payu/custombrowser/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 161
    const-string v2, "com.payu.upisdk.UpiWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/reflect/InvocationHandler;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 164
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/payu/custombrowser/b/b;->h:Ljava/lang/reflect/InvocationHandler;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UpiWrapper Initiated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Exception "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payu/custombrowser/b/b;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payu/custombrowser/b/b;->f:Lcom/payu/custombrowser/util/c;

    return-object p0
.end method

.method static synthetic d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payu/custombrowser/b/b;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;)V
    .locals 17

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Class Name: "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Make Payment params "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - -- -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getIsPhonePeUserCacheEnabled()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - --  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 199
    sget-object v3, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    sget-object v3, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v3

    iput-object v3, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 201
    :cond_0
    iget-object v3, v1, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/payu/custombrowser/b/b;->a()V

    .line 204
    :cond_1
    iput-object v0, v1, Lcom/payu/custombrowser/b/b;->d:Landroid/app/Activity;

    .line 205
    new-instance v3, Lcom/payu/custombrowser/util/c;

    invoke-direct {v3}, Lcom/payu/custombrowser/util/c;-><init>()V

    iput-object v3, v1, Lcom/payu/custombrowser/b/b;->f:Lcom/payu/custombrowser/util/c;

    .line 206
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/payu/custombrowser/b/b;->e:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "local_cache_analytics"

    invoke-static {v4, v5}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v4

    iput-object v4, v1, Lcom/payu/custombrowser/b/b;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 209
    iget-object v4, v1, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "makePayment"

    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/Boolean;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    const-class v8, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-class v8, Ljava/lang/Integer;

    const/4 v13, 0x4

    aput-object v8, v7, v13

    const-class v8, Ljava/lang/Integer;

    const/4 v14, 0x5

    aput-object v8, v7, v14

    const-class v8, Landroid/view/View;

    const/4 v15, 0x6

    aput-object v8, v7, v15

    const-class v8, Ljava/lang/String;

    const/16 v16, 0x7

    aput-object v8, v7, v16

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v1, Lcom/payu/custombrowser/b/b;->g:Ljava/lang/reflect/Method;

    .line 210
    iget-object v5, v1, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getIsPhonePeUserCacheEnabled()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v11

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantResponseTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getGmsProviderUpdatedStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v14

    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object v0

    aput-object v0, v6, v15

    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v16

    .line 210
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exception make payment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cause make payment "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paymentType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 186
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/payu/custombrowser/b/b;->a()V

    .line 187
    iget-object v0, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkForPaymentAvailability"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p4, v2, v7

    aput-object p5, v2, v8

    aput-object p3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Class Name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Exception catch "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 227
    const-string v0, "Class Name: "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "verifyVpa called with Hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/payu/custombrowser/b/b;->a()V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "verifyVpa"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b/b;->g:Ljava/lang/reflect/Method;

    .line 234
    iget-object v2, p0, Lcom/payu/custombrowser/b/b;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 236
    :catch_0
    move-exception p1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Exception make payment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Cause make payment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :goto_0
    return-void
.end method
