.class public final Lcom/google/firebase/dynamiclinks/internal/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/ShortDynamicLink;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/dynamiclinks/internal/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/dynamiclinks/internal/zzp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzr;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/firebase/dynamiclinks/internal/zzp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zza:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzb:Landroid/net/Uri;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p3, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPreviewLink()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final getShortLink()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zza:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/dynamiclinks/internal/zzp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zza:Landroid/net/Uri;

    .line 2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzb:Landroid/net/Uri;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzq;->zzc:Ljava/util/List;

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
