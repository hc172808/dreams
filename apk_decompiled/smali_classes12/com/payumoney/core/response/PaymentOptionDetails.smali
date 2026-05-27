.class public Lcom/payumoney/core/response/PaymentOptionDetails;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/PaymentOptionDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cashCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private convenienceFee:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

.field private creditCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private debitCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private emiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private emiThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;"
        }
    .end annotation
.end field

.field private merchantDetails:Lcom/payumoney/core/entity/MerchantDetails;

.field private netBankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private netBankingStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private nitroEnabled:Ljava/lang/String;

.field private paymentID:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private upiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private userDetails:Lcom/payumoney/core/response/UserDetail;

.field private wallet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/payumoney/core/response/PaymentOptionDetails$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/PaymentOptionDetails$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/PaymentOptionDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->paymentID:Ljava/lang/String;

    .line 90
    const-class v0, Lcom/payumoney/core/response/UserDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/UserDetail;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->userDetails:Lcom/payumoney/core/response/UserDetail;

    .line 91
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->debitCardList:Ljava/util/ArrayList;

    .line 92
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->creditCardList:Ljava/util/ArrayList;

    .line 93
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->cashCardList:Ljava/util/ArrayList;

    .line 94
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingList:Ljava/util/ArrayList;

    .line 95
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingStatusList:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->publicKey:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->wallet:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->nitroEnabled:Ljava/lang/String;

    .line 99
    const-class v0, Lcom/payumoney/core/entity/MerchantDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/MerchantDetails;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->merchantDetails:Lcom/payumoney/core/entity/MerchantDetails;

    .line 100
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiList:Ljava/util/ArrayList;

    .line 101
    sget-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->upiList:Ljava/util/ArrayList;

    .line 102
    sget-object v0, Lcom/payumoney/core/entity/EmiThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiThresholds:Ljava/util/ArrayList;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getCashCardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->cashCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->convenienceFee:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    return-object v0
.end method

.method public getCreditCardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->creditCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebitCardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->debitCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmiList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmiThresholds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiThresholds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMerchantDetails()Lcom/payumoney/core/entity/MerchantDetails;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->merchantDetails:Lcom/payumoney/core/entity/MerchantDetails;

    return-object v0
.end method

.method public getNetBankingList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetBankingStatusList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingStatusList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPaymentID()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->paymentID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUpiList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->upiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserDetails()Lcom/payumoney/core/response/UserDetail;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->userDetails:Lcom/payumoney/core/response/UserDetail;

    return-object v0
.end method

.method public getWallet()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->wallet:Ljava/lang/String;

    return-object v0
.end method

.method public isNBAvailable()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNitroEnabled()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->nitroEnabled:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWalletAvailable()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->wallet:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCashCardList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "cashCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->cashCardList:Ljava/util/ArrayList;

    .line 135
    return-void
.end method

.method public setConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)V
    .locals 0
    .param p1, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    .line 83
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->convenienceFee:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    .line 84
    return-void
.end method

.method public setCreditCardList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "creditCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->creditCardList:Ljava/util/ArrayList;

    .line 151
    return-void
.end method

.method public setDebitCardList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "debitCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->debitCardList:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method public setEmiList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "emiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiList:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method public setEmiThresholds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "emiThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/EmiThreshold;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiThresholds:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method public setMerchantDetails(Lcom/payumoney/core/entity/MerchantDetails;)V
    .locals 0
    .param p1, "merchantDetails"    # Lcom/payumoney/core/entity/MerchantDetails;

    .line 166
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->merchantDetails:Lcom/payumoney/core/entity/MerchantDetails;

    .line 167
    return-void
.end method

.method public setNetBankingList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "netBankingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingList:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method public setNetBankingStatusList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "netBankingStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingStatusList:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method public setNitroEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "nitroEnabled"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->nitroEnabled:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPaymentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentID"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->paymentID:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->publicKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUpiList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "upiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->upiList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public setUserDetails(Lcom/payumoney/core/response/UserDetail;)V
    .locals 0
    .param p1, "userDetails"    # Lcom/payumoney/core/response/UserDetail;

    .line 126
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->userDetails:Lcom/payumoney/core/response/UserDetail;

    .line 127
    return-void
.end method

.method public setWallet(Ljava/lang/String;)V
    .locals 0
    .param p1, "wallet"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->wallet:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->paymentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->userDetails:Lcom/payumoney/core/response/UserDetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->debitCardList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->creditCardList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 197
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->cashCardList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->netBankingStatusList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->publicKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->wallet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->nitroEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->merchantDetails:Lcom/payumoney/core/entity/MerchantDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->upiList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentOptionDetails;->emiThresholds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 207
    return-void
.end method
