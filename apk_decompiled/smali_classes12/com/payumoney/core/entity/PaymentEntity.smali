.class public Lcom/payumoney/core/entity/PaymentEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cidCode:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private emiTenures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiTenure;",
            ">;"
        }
    .end annotation
.end field

.field private emiThresholdAmount:D

.field private pgID:Ljava/lang/String;

.field private shortTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private upStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/payumoney/core/entity/PaymentEntity$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/PaymentEntity$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/PaymentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->upStatus:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->code:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->shortTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->pgID:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->cidCode:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiTenures:Ljava/util/List;

    .line 47
    const-class v1, Lcom/payumoney/core/entity/EmiTenure;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiThresholdAmount:D

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCidCode()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->cidCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiTenures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiTenure;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiTenures:Ljava/util/List;

    return-object v0
.end method

.method public getEmiThresholdAmount()D
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiThresholdAmount:D

    return-wide v0
.end method

.method public getPgID()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->pgID:Ljava/lang/String;

    return-object v0
.end method

.method public getShortTitle()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->shortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpStatus()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->upStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public setCidCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidCode"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->cidCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->code:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setEmiTenures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiTenure;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "emiTenures":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/EmiTenure;>;"
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiTenures:Ljava/util/List;

    .line 105
    return-void
.end method

.method public setEmiThresholdAmount(D)V
    .locals 0
    .param p1, "emiThresholdAmount"    # D

    .line 112
    iput-wide p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiThresholdAmount:D

    .line 113
    return-void
.end method

.method public setPgID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgID"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->pgID:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setShortTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortTitle"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->shortTitle:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->title:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUpStatus(I)V
    .locals 0
    .param p1, "upStatus"    # I

    .line 56
    iput p1, p0, Lcom/payumoney/core/entity/PaymentEntity;->upStatus:I

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->upStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->shortTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->pgID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->cidCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiTenures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 129
    iget-wide v0, p0, Lcom/payumoney/core/entity/PaymentEntity;->emiThresholdAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 130
    return-void
.end method
