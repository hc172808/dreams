.class public final Lcom/google/android/gms/common/internal/zau;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zau;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:I

.field private zab:Landroid/os/IBinder;

.field private zac:Lcom/google/android/gms/common/ConnectionResult;

.field private zad:Z

.field private zae:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/gms/common/internal/zax;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zax;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zau;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/internal/zau;->zaa:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zau;->zab:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zau;->zac:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zau;->zad:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zau;->zae:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 30
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 31
    return v0

    .line 32
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 33
    return v1

    .line 34
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/zau;

    if-nez v2, :cond_2

    .line 35
    return v0

    .line 36
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/zau;

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zau;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zau;->zac:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zau;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zau;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    nop

    .line 39
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 14
    nop

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/common/internal/zau;->zaa:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zau;->zab:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 18
    nop

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zau;->zac:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    nop

    .line 21
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    nop

    .line 23
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zau;->zad:Z

    .line 24
    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 25
    nop

    .line 26
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zau;->zae:Z

    .line 27
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 28
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 29
    return-void
.end method

.method public final zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zau;->zab:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v0

    return-object v0
.end method

.method public final zab()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zau;->zac:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final zac()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zau;->zad:Z

    return v0
.end method

.method public final zad()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zau;->zae:Z

    return v0
.end method
