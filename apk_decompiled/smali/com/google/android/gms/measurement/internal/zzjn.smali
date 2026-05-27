.class final synthetic Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzem;

.field private final zzc:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzem;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/zzem;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Landroid/app/job/JobParameters;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi(Lcom/google/android/gms/measurement/internal/zzem;Landroid/app/job/JobParameters;)V

    return-void
.end method
