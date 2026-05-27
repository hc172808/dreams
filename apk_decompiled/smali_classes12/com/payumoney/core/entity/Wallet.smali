.class public Lcom/payumoney/core/entity/Wallet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/Wallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field amount:D

.field availableAmount:D

.field maxLimit:D

.field message:Ljava/lang/String;

.field minLimit:D

.field status:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/payumoney/core/entity/Wallet$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/Wallet$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/Wallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->amount:D

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->availableAmount:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->minLimit:D

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->maxLimit:D

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->status:D

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/Wallet;->message:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->amount:D

    return-wide v0
.end method

.method public getAvailableAmount()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->availableAmount:D

    return-wide v0
.end method

.method public getMaxLimit()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->maxLimit:D

    return-wide v0
.end method

.method public getMesssage()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/payumoney/core/entity/Wallet;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinLimit()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->minLimit:D

    return-wide v0
.end method

.method public getStatus()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->status:D

    return-wide v0
.end method

.method public setAmount(D)V
    .locals 0
    .param p1, "amount"    # D

    .line 48
    iput-wide p1, p0, Lcom/payumoney/core/entity/Wallet;->amount:D

    .line 49
    return-void
.end method

.method public setAvailableAmount(D)V
    .locals 0
    .param p1, "availableAmount"    # D

    .line 56
    iput-wide p1, p0, Lcom/payumoney/core/entity/Wallet;->availableAmount:D

    .line 57
    return-void
.end method

.method public setMaxLimit(D)V
    .locals 0
    .param p1, "maxLimit"    # D

    .line 72
    iput-wide p1, p0, Lcom/payumoney/core/entity/Wallet;->maxLimit:D

    .line 73
    return-void
.end method

.method public setMesssage(Ljava/lang/String;)V
    .locals 0
    .param p1, "messsage"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/payumoney/core/entity/Wallet;->message:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMinLimit(D)V
    .locals 0
    .param p1, "minLimit"    # D

    .line 64
    iput-wide p1, p0, Lcom/payumoney/core/entity/Wallet;->minLimit:D

    .line 65
    return-void
.end method

.method public setStatus(D)V
    .locals 0
    .param p1, "status"    # D

    .line 80
    iput-wide p1, p0, Lcom/payumoney/core/entity/Wallet;->status:D

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->availableAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 100
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->minLimit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->maxLimit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    iget-wide v0, p0, Lcom/payumoney/core/entity/Wallet;->status:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-object v0, p0, Lcom/payumoney/core/entity/Wallet;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
