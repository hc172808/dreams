.class final Lcom/payumoney/core/entity/CitrusUser$Address$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/entity/CitrusUser$Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payumoney/core/entity/CitrusUser$Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/entity/CitrusUser$Address;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 389
    new-instance v0, Lcom/payumoney/core/entity/CitrusUser$Address;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/payumoney/core/entity/CitrusUser$Address;-><init>(Landroid/os/Parcel;Lcom/payumoney/core/entity/CitrusUser$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 387
    invoke-virtual {p0, p1}, Lcom/payumoney/core/entity/CitrusUser$Address$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/core/entity/CitrusUser$Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/payumoney/core/entity/CitrusUser$Address;
    .locals 1
    .param p1, "size"    # I

    .line 393
    new-array v0, p1, [Lcom/payumoney/core/entity/CitrusUser$Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 387
    invoke-virtual {p0, p1}, Lcom/payumoney/core/entity/CitrusUser$Address$1;->newArray(I)[Lcom/payumoney/core/entity/CitrusUser$Address;

    move-result-object p1

    return-object p1
.end method
