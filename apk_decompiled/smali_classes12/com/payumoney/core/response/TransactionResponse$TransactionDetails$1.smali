.class final Lcom/payumoney/core/response/TransactionResponse$TransactionDetails$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 483
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;-><init>(Landroid/os/Parcel;Lcom/payumoney/core/response/TransactionResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .locals 1
    .param p1, "size"    # I

    .line 487
    new-array v0, p1, [Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails$1;->newArray(I)[Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    move-result-object p1

    return-object p1
.end method
