.class public final Lcom/google/android/gms/internal/measurement/zzez;
.super Lcom/google/android/gms/internal/measurement/zzjz;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "Lcom/google/android/gms/internal/measurement/zzfa;",
        "Lcom/google/android/gms/internal/measurement/zzez;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfa;->zzf()Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzey;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfa;->zzf()Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzez;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfa;->zzg(Lcom/google/android/gms/internal/measurement/zzfa;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zze()I

    move-result v0

    return v0
.end method
