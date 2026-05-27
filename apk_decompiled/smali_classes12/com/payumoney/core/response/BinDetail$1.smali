.class final Lcom/payumoney/core/response/BinDetail$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/BinDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payumoney/core/response/BinDetail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/BinDetail;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    new-instance v0, Lcom/payumoney/core/response/BinDetail;

    invoke-direct {v0, p1}, Lcom/payumoney/core/response/BinDetail;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/BinDetail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/BinDetail;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/payumoney/core/response/BinDetail;
    .locals 1
    .param p1, "size"    # I

    .line 40
    new-array v0, p1, [Lcom/payumoney/core/response/BinDetail;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/BinDetail$1;->newArray(I)[Lcom/payumoney/core/response/BinDetail;

    move-result-object p1

    return-object p1
.end method
