.class public Lcom/payumoney/core/entity/EmiTenure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/EmiTenure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bank:Ljava/lang/String;

.field private emiBankInterest:D

.field private emiInterestPaid:D

.field private emiValue:D

.field private pgID:Ljava/lang/String;

.field private tenureId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private transactionAmount:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/payumoney/core/entity/EmiTenure$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/EmiTenure$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/EmiTenure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->tenureId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->title:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiBankInterest:D

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiInterestPaid:D

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->bank:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->pgID:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->transactionAmount:D

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiValue:D

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getBank()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiBankInterest()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiBankInterest:D

    return-wide v0
.end method

.method public getEmiInterestPaid()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiInterestPaid:D

    return-wide v0
.end method

.method public getEmiValue()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiValue:D

    return-wide v0
.end method

.method public getPgID()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->pgID:Ljava/lang/String;

    return-object v0
.end method

.method public getTenureId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->tenureId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionAmount()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->transactionAmount:D

    return-wide v0
.end method

.method public setBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "bank"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/payumoney/core/entity/EmiTenure;->bank:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setEmiBankInterest(D)V
    .locals 0
    .param p1, "emiBankInterest"    # D

    .line 63
    iput-wide p1, p0, Lcom/payumoney/core/entity/EmiTenure;->emiBankInterest:D

    .line 64
    return-void
.end method

.method public setEmiInterestPaid(D)V
    .locals 0
    .param p1, "emiInterestPaid"    # D

    .line 71
    iput-wide p1, p0, Lcom/payumoney/core/entity/EmiTenure;->emiInterestPaid:D

    .line 72
    return-void
.end method

.method public setEmiValue(D)V
    .locals 0
    .param p1, "emiValue"    # D

    .line 103
    iput-wide p1, p0, Lcom/payumoney/core/entity/EmiTenure;->emiValue:D

    .line 104
    return-void
.end method

.method public setPgID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgID"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/payumoney/core/entity/EmiTenure;->pgID:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTenureId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tenureId"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/payumoney/core/entity/EmiTenure;->tenureId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/payumoney/core/entity/EmiTenure;->title:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTransactionAmount(D)V
    .locals 0
    .param p1, "transactionAmount"    # D

    .line 95
    iput-wide p1, p0, Lcom/payumoney/core/entity/EmiTenure;->transactionAmount:D

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/EmiTenure;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/payumoney/core/entity/EmiTenure;->emiBankInterest:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/payumoney/core/entity/EmiTenure;->emiValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->tenureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiBankInterest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiInterestPaid:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 128
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->bank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiTenure;->pgID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->transactionAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 131
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiTenure;->emiValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    return-void
.end method
