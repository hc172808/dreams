.class public Lcom/payumoney/core/response/PayUMoneyLoginResponse;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiresIn"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->b:Ljava/lang/String;

    .line 28
    return-void
.end method
