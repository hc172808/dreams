.class public Lcom/payumoney/core/response/UserDetail;
.super Lcom/payumoney/core/response/PayUMoneyAPIResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/UserDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private saveCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;"
        }
    .end annotation
.end field

.field private userID:Ljava/lang/String;

.field private walletDetails:Lcom/payumoney/core/entity/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/payumoney/core/response/UserDetail$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/UserDetail$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/UserDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Lcom/payumoney/core/response/PayUMoneyAPIResponse;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/UserDetail;->userID:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/UserDetail;->phoneNumber:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/UserDetail;->email:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/Wallet;

    iput-object v0, p0, Lcom/payumoney/core/response/UserDetail;->walletDetails:Lcom/payumoney/core/entity/Wallet;

    .line 42
    sget-object v0, Lcom/payumoney/core/entity/CardDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/UserDetail;->saveCardList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveCardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->saveCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletDetails()Lcom/payumoney/core/entity/Wallet;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->walletDetails:Lcom/payumoney/core/entity/Wallet;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/payumoney/core/response/UserDetail;->email:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/payumoney/core/response/UserDetail;->phoneNumber:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSaveCardList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "saveCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/CardDetail;>;"
    iput-object p1, p0, Lcom/payumoney/core/response/UserDetail;->saveCardList:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/payumoney/core/response/UserDetail;->userID:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setWalletDetails(Lcom/payumoney/core/entity/Wallet;)V
    .locals 0
    .param p1, "walletDetails"    # Lcom/payumoney/core/entity/Wallet;

    .line 58
    iput-object p1, p0, Lcom/payumoney/core/response/UserDetail;->walletDetails:Lcom/payumoney/core/entity/Wallet;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->userID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->walletDetails:Lcom/payumoney/core/entity/Wallet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/payumoney/core/response/UserDetail;->saveCardList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return-void
.end method
