.class public Lcom/payu/custombrowser/bean/CustomBrowserResultData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Lcom/payu/custombrowser/util/PaymentOption;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonResult()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentOption()Lcom/payu/custombrowser/util/PaymentOption;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->d:Lcom/payu/custombrowser/util/PaymentOption;

    return-object v0
.end method

.method public getSamsungPayVpa()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isPaymentOptionAvailable()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->c:Z

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setJsonResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResult"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V
    .locals 0
    .param p1, "paymentOption"    # Lcom/payu/custombrowser/util/PaymentOption;

    .line 45
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->d:Lcom/payu/custombrowser/util/PaymentOption;

    .line 46
    return-void
.end method

.method public setPaymentOptionAvailable(Z)V
    .locals 0
    .param p1, "paymentOptionAvailable"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->c:Z

    .line 22
    return-void
.end method

.method public setSamsungPayVpa(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpa"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->a:Ljava/lang/String;

    .line 30
    return-void
.end method
