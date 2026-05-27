.class public Lcom/github/aakira/expandablelayout/ExpandableSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandableSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/github/aakira/expandablelayout/ExpandableSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private size:I

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/github/aakira/expandablelayout/ExpandableSavedState$1;

    invoke-direct {v0}, Lcom/github/aakira/expandablelayout/ExpandableSavedState$1;-><init>()V

    sput-object v0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->size:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->weight:F

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/aakira/expandablelayout/ExpandableSavedState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/github/aakira/expandablelayout/ExpandableSavedState$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/github/aakira/expandablelayout/ExpandableSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 12
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->size:I

    return v0
.end method

.method public getWeight()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->weight:F

    return v0
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 26
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->size:I

    .line 27
    return-void
.end method

.method public setWeight(F)V
    .locals 0
    .param p1, "weight"    # F

    .line 34
    iput p1, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->weight:F

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/github/aakira/expandablelayout/ExpandableSavedState;->weight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    return-void
.end method
