.class public Lcom/payumoney/core/response/MerchantLoginResponse;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedOn()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantparamsId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParamKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsValue()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setAddedOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "addedOn"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->e:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantId"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMerchantparamsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantparamsId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setParamKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramKey"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setParamsValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramsValue"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->d:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedBy"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->f:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUpdatedOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedOn"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/payumoney/core/response/MerchantLoginResponse;->g:Ljava/lang/String;

    .line 36
    return-void
.end method
