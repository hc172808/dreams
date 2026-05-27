.class public Lcom/payumoney/core/entity/MerchantDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/MerchantDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayName:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private merchantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/payumoney/core/entity/MerchantDetails$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/MerchantDetails$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/MerchantDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->logoUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->displayName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->merchantId:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/payumoney/core/entity/MerchantDetails;->displayName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoUrl"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/payumoney/core/entity/MerchantDetails;->logoUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantId"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/payumoney/core/entity/MerchantDetails;->merchantId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 70
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->logoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/payumoney/core/entity/MerchantDetails;->merchantId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
