.class public Lcom/payumoney/core/request/LoginParamsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/payumoney/core/request/LoginParamsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/payumoney/core/request/LoginParamsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/payumoney/core/request/LoginParamsRequest;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/payumoney/core/request/LoginParamsRequest;->a:Ljava/lang/String;

    .line 17
    return-void
.end method
