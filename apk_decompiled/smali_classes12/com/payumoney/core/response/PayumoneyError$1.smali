.class final Lcom/payumoney/core/response/PayumoneyError$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/PayumoneyError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payumoney/core/response/PayumoneyError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/PayumoneyError;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 29
    new-instance v0, Lcom/payumoney/core/response/PayumoneyError;

    invoke-direct {v0, p1}, Lcom/payumoney/core/response/PayumoneyError;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/PayumoneyError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/response/PayumoneyError;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/payumoney/core/response/PayumoneyError;
    .locals 1
    .param p1, "size"    # I

    .line 33
    new-array v0, p1, [Lcom/payumoney/core/response/PayumoneyError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/payumoney/core/response/PayumoneyError$1;->newArray(I)[Lcom/payumoney/core/response/PayumoneyError;

    move-result-object p1

    return-object p1
.end method
