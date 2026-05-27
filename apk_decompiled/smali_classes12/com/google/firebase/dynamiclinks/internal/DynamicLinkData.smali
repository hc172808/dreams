.class public Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:J

.field private zze:Landroid/os/Bundle;

.field private zzf:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zza;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/zza;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzc:I

    iput-wide p4, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd:J

    iput-object p6, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zze:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzf:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zza:Ljava/lang/String;

    .line 2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzb:Ljava/lang/String;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzc:I

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-wide v1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd:J

    .line 5
    const/4 v4, 0x4

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd()Landroid/os/Bundle;

    move-result-object v1

    .line 7
    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzf:Landroid/net/Uri;

    .line 8
    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzc:I

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd:J

    return-wide v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzf:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zze:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd:J

    return-void
.end method
