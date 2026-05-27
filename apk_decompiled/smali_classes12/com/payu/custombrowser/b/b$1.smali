.class Lcom/payu/custombrowser/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b/b;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPaymentOptionSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "onPaymentOptionInitialisationSuccess"

    const/4 v3, 0x0

    const-string v4, "txnId"

    const-string v5, "key"

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "Class Name: "

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   Success cb UpiWrapper "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p3, v8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 38
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x0

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v10

    iget-object v12, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v12}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v10

    iget-object v12, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v12}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-string v12, "trxn_status"

    const-string v13, "success_transaction"

    invoke-static/range {v11 .. v17}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    if-eqz v1, :cond_b

    .line 41
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p3, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v3}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 42
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "onPaymentOptionFailure"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v10, "CbListener "

    const-string v11, "Failure cb Upiwrapper "

    if-eqz v1, :cond_3

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p3, v8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v11

    iget-object v13, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v13}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v11

    iget-object v13, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v13}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v13, "trxn_status"

    const-string v14, "failure_transaction"

    invoke-static/range {v12 .. v18}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 47
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    if-eqz v1, :cond_b

    .line 48
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p3, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v3}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 50
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v12, "onUpiErrorReceived"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p3, v8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 53
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v11

    iget-object v13, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v13}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v11, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v11}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v11

    iget-object v13, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v13}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v13, "trxn_status"

    const-string v14, "failure_transaction"

    invoke-static/range {v12 .. v18}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 54
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 55
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    if-eqz v1, :cond_b

    .line 56
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, p3, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 58
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Payment Option cbInit Success"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    invoke-direct {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;-><init>()V

    .line 61
    sget-object v10, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "paymentoptioninitsuccess  type>> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->getPaymentOption()Lcom/payu/custombrowser/util/PaymentOption;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v7}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOptionAvailable(Z)V

    .line 64
    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    if-eqz v10, :cond_a

    .line 65
    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v10, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V

    goto/16 :goto_1

    .line 67
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "isPaymentOptionAvailable"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Payment Option isPaymentOptionAvailable cb"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    invoke-direct {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;-><init>()V

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "paymentoption available cb type>> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p3, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-object v11, p3, v8

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 71
    aget-object v10, p3, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PPINTENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 72
    sget-object v10, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    goto :goto_0

    .line 74
    :cond_7
    aget-object v10, p3, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SAMPAY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 75
    sget-object v10, Lcom/payu/custombrowser/util/PaymentOption;->SAMSUNGPAY:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    goto :goto_0

    .line 77
    :cond_8
    aget-object v10, p3, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Tez"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 78
    sget-object v10, Lcom/payu/custombrowser/util/PaymentOption;->TEZ:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 80
    :cond_9
    :goto_0
    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOptionAvailable(Z)V

    .line 81
    sget-object v10, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->getPaymentOption()Lcom/payu/custombrowser/util/PaymentOption;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/payu/custombrowser/bean/b;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p3, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setErrorMessage(Ljava/lang/String;)V

    .line 83
    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    if-eqz v10, :cond_b

    .line 84
    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v10, v10, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v10, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V

    goto :goto_2

    .line 67
    :cond_a
    :goto_1
    nop

    .line 86
    :cond_b
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "onPaymentFailure"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "onPayment Failure UpiWrapper Cb "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p3, v8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 88
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 89
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x0

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v10

    iget-object v12, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v12}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v10

    iget-object v12, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v12}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-string v12, "trxn_status"

    const-string v13, "failure_transaction"

    invoke-static/range {v11 .. v17}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 90
    :cond_c
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p3, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, p3, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "onPaymentSuccess"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onPayment Success UpiWrapper Cb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 94
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 95
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v10, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v10}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v5, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v5}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-string v10, "trxn_status"

    const-string v11, "success_transaction"

    invoke-static/range {v9 .. v15}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 96
    :cond_e
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p3, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 97
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "onPaymentTerminate"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onPaymentTerminate UpiWrapper Cb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 99
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentTerminate()V

    .line 100
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 101
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v7, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v7}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v5, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v5}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v7, "trxn_status"

    const-string v8, "failure_transaction"

    invoke-static/range {v6 .. v12}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 103
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PAYMENT_OPTION_INIT_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    invoke-direct {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;-><init>()V

    .line 106
    sget-object v2, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 107
    invoke-virtual {v1, v7}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOptionAvailable(Z)V

    .line 108
    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V

    .line 109
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    sget-object v2, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/b;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 110
    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPaymentOptionInitialisationFailure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PAYMENT_OPTION_INIT_FAILURE type>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    invoke-direct {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;-><init>()V

    .line 114
    aget-object v2, p3, v7

    if-eqz v2, :cond_14

    .line 115
    aget-object v2, p3, v7

    check-cast v2, Ljava/lang/String;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check description "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v4, "tez"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 119
    sget-object v2, Lcom/payu/custombrowser/util/PaymentOption;->TEZ:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    goto :goto_3

    .line 121
    :cond_12
    const-string v4, "ppintent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 122
    sget-object v2, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    goto :goto_3

    .line 124
    :cond_13
    const-string v4, "sampay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 125
    sget-object v2, Lcom/payu/custombrowser/util/PaymentOption;->SAMSUNGPAY:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 130
    :cond_14
    :goto_3
    sget-object v2, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->getPaymentOption()Lcom/payu/custombrowser/util/PaymentOption;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payu/custombrowser/bean/b;->removePaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 131
    invoke-virtual {v1, v8}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOptionAvailable(Z)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p3, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setErrorMessage(Ljava/lang/String;)V

    .line 133
    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V

    .line 134
    goto/16 :goto_4

    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onVpaEntered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Check Validilty upiwrapper cb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/payu/custombrowser/PackageListDialogFragment;

    invoke-direct {v1}, Lcom/payu/custombrowser/PackageListDialogFragment;-><init>()V

    .line 137
    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onVpaEntered(Ljava/lang/String;Lcom/payu/custombrowser/PackageListDialogFragment;)V

    .line 138
    goto/16 :goto_4

    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackApprove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "On Back Approve"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 140
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 141
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v7, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v7}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v5, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v5}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v7, "user_input"

    const-string v8, "back_button_ok"

    invoke-static/range {v6 .. v12}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 142
    :cond_17
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackApprove()V

    goto/16 :goto_4

    .line 144
    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackDismiss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "On Back Dismiss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 146
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 147
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v1}, Lcom/payu/custombrowser/b/b;->d(Lcom/payu/custombrowser/b/b;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v1

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->b(Lcom/payu/custombrowser/b/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v7, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v7}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b/b;->c(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/util/c;

    move-result-object v2

    iget-object v5, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    invoke-static {v5}, Lcom/payu/custombrowser/b/b;->a(Lcom/payu/custombrowser/b/b;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v7, "user_input"

    const-string v8, "back_button_cancel"

    invoke-static/range {v6 .. v12}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 148
    :cond_19
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackDismiss()V

    goto :goto_4

    .line 149
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackButton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "On Back Button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 151
    iget-object v1, v0, Lcom/payu/custombrowser/b/b$1;->a:Lcom/payu/custombrowser/b/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b/b;->a:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    aget-object v2, p3, v8

    check-cast v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 153
    :cond_1b
    :goto_4
    return-object v3
.end method
