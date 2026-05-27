.class abstract Lcom/google/android/gms/internal/measurement/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzkw;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzkw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzku;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzku;-><init>(Lcom/google/android/gms/internal/measurement/zzkt;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/android/gms/internal/measurement/zzkw;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Lcom/google/android/gms/internal/measurement/zzkt;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Lcom/google/android/gms/internal/measurement/zzkw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/measurement/zzkw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/android/gms/internal/measurement/zzkw;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/measurement/zzkw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Lcom/google/android/gms/internal/measurement/zzkw;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
