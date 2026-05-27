.class public Lcom/payumoney/core/entity/EmiThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final emiBankCode:Ljava/lang/String;

.field private final emiBankTitle:Ljava/lang/String;

.field private final threshouldAmount:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/payumoney/core/entity/EmiThreshold$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/EmiThreshold$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/EmiThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankCode:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->threshouldAmount:D

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankTitle:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .param p1, "emiBankCode"    # Ljava/lang/String;
    .param p2, "threshouldAmount"    # D
    .param p4, "emiBankTitle"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankCode:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/payumoney/core/entity/EmiThreshold;->threshouldAmount:D

    .line 20
    iput-object p4, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankTitle:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getEmiBankCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiBankTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshouldAmount()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->threshouldAmount:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->threshouldAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget-object v0, p0, Lcom/payumoney/core/entity/EmiThreshold;->emiBankTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
