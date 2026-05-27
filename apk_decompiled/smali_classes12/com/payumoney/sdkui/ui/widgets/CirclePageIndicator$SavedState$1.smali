.class final Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 528
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 533
    new-array v0, p1, [Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState$1;->newArray(I)[Lcom/payumoney/sdkui/ui/widgets/CirclePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method
