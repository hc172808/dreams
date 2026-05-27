.class final Lcom/google/android/gms/internal/measurement/zzmj;
.super Lcom/google/android/gms/internal/measurement/zzmh;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzmh<",
        "Lcom/google/android/gms/internal/measurement/zzmi;",
        "Lcom/google/android/gms/internal/measurement/zzmi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmh;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmi;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmi;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Lcom/google/android/gms/internal/measurement/zzmi;

    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmi;->zzd()V

    return-void
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc(Lcom/google/android/gms/internal/measurement/zzmi;Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic zzg(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmi;->zze()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzh(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmi;->zzf()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmi;->zzi(Lcom/google/android/gms/internal/measurement/zzjl;)V

    return-void
.end method
