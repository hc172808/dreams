.class final synthetic Lcom/google/android/gms/internal/measurement/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzb;->zza:Lcom/google/android/gms/internal/measurement/zzc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzb;->zza:Lcom/google/android/gms/internal/measurement/zzc;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzk;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzk;-><init>(Lcom/google/android/gms/internal/measurement/zzab;)V

    return-object v1
.end method
