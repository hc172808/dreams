.class public final Lcom/google/android/gms/internal/measurement/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzpr;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzpq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "Lcom/google/android/gms/internal/measurement/zzpr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzps;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzps;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpq;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpr;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpr;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpr;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpq;->zza:Lcom/google/android/gms/internal/measurement/zzpq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpr;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpq;->zzg()Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzpr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpq;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpr;

    return-object v0
.end method
