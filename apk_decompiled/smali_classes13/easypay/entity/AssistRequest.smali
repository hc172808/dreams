.class public Leasypay/entity/AssistRequest;
.super Ljava/lang/Object;
.source "AssistRequest.java"


# instance fields
.field private bank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank"
    .end annotation
.end field

.field private cardScheme:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardScheme"
    .end annotation
.end field

.field private payType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBank()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Leasypay/entity/AssistRequest;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public getCardScheme()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Leasypay/entity/AssistRequest;->cardScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Leasypay/entity/AssistRequest;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public setBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "bank"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Leasypay/entity/AssistRequest;->bank:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCardScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardScheme"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Leasypay/entity/AssistRequest;->cardScheme:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "payType"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Leasypay/entity/AssistRequest;->payType:Ljava/lang/String;

    .line 40
    return-void
.end method
