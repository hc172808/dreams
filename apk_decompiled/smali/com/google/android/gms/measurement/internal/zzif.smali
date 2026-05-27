.class final Lcom/google/android/gms/measurement/internal/zzif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzid;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzid;

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzif;->zze:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzif;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Lcom/google/android/gms/measurement/internal/zzid;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzif;->zze:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzif;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzb:Lcom/google/android/gms/measurement/internal/zzid;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzif;->zzd:Z

    .line 1
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzik;->zzv(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZLandroid/os/Bundle;)V

    return-void
.end method
