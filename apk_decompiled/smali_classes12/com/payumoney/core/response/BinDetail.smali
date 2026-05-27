.class public Lcom/payumoney/core/response/BinDetail;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankCode:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private binOwner:Ljava/lang/String;

.field private cardBin:Ljava/lang/String;

.field private cardProgram:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/payumoney/core/response/BinDetail$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/BinDetail$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/BinDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardBin:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->binOwner:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->category:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardProgram:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->countryCode:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankCode:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBinOwner()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->binOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getCardBin()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardBin:Ljava/lang/String;

    return-object v0
.end method

.method public getCardProgram()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->bankCode:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->bankName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setBinOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "binOwner"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->binOwner:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCardBin(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardBin"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->cardBin:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCardProgram(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardProgram"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->cardProgram:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->category:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/payumoney/core/response/BinDetail;->countryCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->cardBin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->binOwner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->cardProgram:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/BinDetail;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/BinDetail;->bankCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardBin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->binOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->cardProgram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/payumoney/core/response/BinDetail;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
