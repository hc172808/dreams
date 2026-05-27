.class final Lcom/google/android/gms/measurement/internal/zzhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaf;

.field final synthetic zzb:I

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzaf;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzr(Lcom/google/android/gms/measurement/internal/zzaf;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzd:Z

    .line 2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->zzW(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzaf;IJZZ)V

    return-void
.end method
