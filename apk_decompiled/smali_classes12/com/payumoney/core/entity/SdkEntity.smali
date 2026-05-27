.class public abstract Lcom/payumoney/core/entity/SdkEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private deleted:Z

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/payumoney/core/entity/SdkEntity;->id:J

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/core/entity/SdkEntity;->deleted:Z

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/payumoney/core/entity/SdkEntity;->id:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/payumoney/core/entity/SdkEntity;->deleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/payumoney/core/entity/SdkEntity;->deleted:Z

    .line 26
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 17
    iput-wide p1, p0, Lcom/payumoney/core/entity/SdkEntity;->id:J

    .line 18
    return-void
.end method
