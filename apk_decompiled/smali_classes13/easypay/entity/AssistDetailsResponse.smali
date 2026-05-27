.class public Leasypay/entity/AssistDetailsResponse;
.super Ljava/lang/Object;
.source "AssistDetailsResponse.java"


# instance fields
.field private bank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankName"
    .end annotation
.end field

.field private cardScheme:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardScheme"
    .end annotation
.end field

.field private enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "etag"
    .end annotation
.end field

.field private payType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payMode"
    .end annotation
.end field

.field private response:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leasypay/entity/AssistUrlResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Leasypay/entity/AssistDetailsResponse;->response:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Leasypay/entity/AssistDetailsResponse;

    if-nez v1, :cond_1

    .line 109
    return v0

    .line 110
    :cond_1
    if-ne p1, p0, :cond_2

    .line 111
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_2
    move-object v0, p1

    check-cast v0, Leasypay/entity/AssistDetailsResponse;

    .line 113
    .local v0, "detailsResponse":Leasypay/entity/AssistDetailsResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getCardScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Leasypay/entity/AssistDetailsResponse;->getCardScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBank()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public getCardScheme()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->cardScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 89
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Leasypay/entity/AssistUrlResponse;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Leasypay/entity/AssistDetailsResponse;->response:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "bank"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->bank:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCardScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardScheme"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->cardScheme:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 93
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->enabled:Ljava/lang/Boolean;

    .line 94
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->etag:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "payType"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->payType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setResponse(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Leasypay/entity/AssistUrlResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/AssistUrlResponse;>;"
    iput-object p1, p0, Leasypay/entity/AssistDetailsResponse;->response:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getPayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leasypay/entity/AssistDetailsResponse;->getCardScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
