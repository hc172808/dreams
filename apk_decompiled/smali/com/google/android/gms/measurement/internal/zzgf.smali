.class final Lcom/google/android/gms/measurement/internal/zzgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzc(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpt;->zzb()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgm;->zzx(Lcom/google/android/gms/measurement/internal/zzgm;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzaD:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzb(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzy(Lcom/google/android/gms/measurement/internal/zzgm;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
