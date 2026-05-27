.class public Lcom/payumoney/core/request/PaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/request/PaymentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankCode:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardtoken:Ljava/lang/String;

.field private convenienceFee:D

.field private countryCode:Ljava/lang/String;

.field private cvv:Ljava/lang/String;

.field private expiryMonth:Ljava/lang/String;

.field private expiryYear:Ljava/lang/String;

.field private isEmiPayment:Z

.field private isSplitPayment:Z

.field private paymentID:Ljava/lang/String;

.field private pg:Ljava/lang/String;

.field private processor:Ljava/lang/String;

.field private storeCard:Z

.field private storeCardId:Ljava/lang/String;

.field private vpa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/payumoney/core/request/PaymentRequest$1;

    invoke-direct {v0}, Lcom/payumoney/core/request/PaymentRequest$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/request/PaymentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->paymentID:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->pg:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->bankCode:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardNumber:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cvv:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryMonth:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryYear:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardtoken:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCard:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCardId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/payumoney/core/request/PaymentRequest;->convenienceFee:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->processor:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->countryCode:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->vpa:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/payumoney/core/request/PaymentRequest;->isEmiPayment:Z

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardtoken()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardtoken:Ljava/lang/String;

    return-object v0
.end method

.method public getConvenienceFee()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/payumoney/core/request/PaymentRequest;->convenienceFee:D

    return-wide v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentID()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->paymentID:Ljava/lang/String;

    return-object v0
.end method

.method public getPg()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessor()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->processor:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreCardId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getVpa()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->vpa:Ljava/lang/String;

    return-object v0
.end method

.method public isEmiPayment()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->isEmiPayment:Z

    return v0
.end method

.method public isSplitPayment()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment:Z

    return v0
.end method

.method public isStoreCard()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCard:Z

    return v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->bankCode:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardName"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->cardName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->cardNumber:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCardtoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardtoken"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->cardtoken:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setConvenienceFee(D)V
    .locals 0
    .param p1, "convenienceFee"    # D

    .line 53
    iput-wide p1, p0, Lcom/payumoney/core/request/PaymentRequest;->convenienceFee:D

    .line 54
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->countryCode:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->cvv:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setEmiPayment(Z)V
    .locals 0
    .param p1, "emiPayment"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/payumoney/core/request/PaymentRequest;->isEmiPayment:Z

    .line 202
    return-void
.end method

.method public setExpiryMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryMonth"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryMonth:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setExpiryYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryYear"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryYear:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPaymentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentID"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->paymentID:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->pg:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setProcessor(Ljava/lang/String;)V
    .locals 0
    .param p1, "processor"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->processor:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setSplitPayment(Z)V
    .locals 0
    .param p1, "splitPayment"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment:Z

    .line 88
    return-void
.end method

.method public setStoreCard(Z)V
    .locals 0
    .param p1, "storeCard"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCard:Z

    .line 96
    return-void
.end method

.method public setStoreCardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeCardId"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCardId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setVpa(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpa"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/request/PaymentRequest;->vpa:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->paymentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->pg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cvv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->expiryYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->cardtoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCard:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->storeCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-wide v0, p0, Lcom/payumoney/core/request/PaymentRequest;->convenienceFee:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 224
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->processor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/payumoney/core/request/PaymentRequest;->vpa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/payumoney/core/request/PaymentRequest;->isEmiPayment:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    return-void
.end method
