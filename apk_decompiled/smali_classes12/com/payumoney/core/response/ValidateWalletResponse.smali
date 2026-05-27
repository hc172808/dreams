.class public Lcom/payumoney/core/response/ValidateWalletResponse;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/payumoney/core/response/ValidateWalletResponse;->d:Ljava/lang/String;

    .line 45
    return-void
.end method
