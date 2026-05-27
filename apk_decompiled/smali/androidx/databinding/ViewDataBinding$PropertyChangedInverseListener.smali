.class public abstract Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "PropertyChangedInverseListener"
.end annotation


# instance fields
.field final mPropertyId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "propertyId"    # I

    .line 1657
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 1658
    iput p1, p0, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;->mPropertyId:I

    .line 1659
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1
    .param p1, "sender"    # Landroidx/databinding/Observable;
    .param p2, "propertyId"    # I

    .line 1663
    iget v0, p0, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;->mPropertyId:I

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 1664
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;->onChange()V

    .line 1666
    :cond_1
    return-void
.end method
