.class public final Lcom/google/android/gms/internal/measurement/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzjp;

.field private static volatile zzb:Z

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzjp;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzjp;


# instance fields
.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzjo;",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Z

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjp;

    .line 1
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjp;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjp;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Lcom/google/android/gms/internal/measurement/zzjp;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/zzjp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Lcom/google/android/gms/internal/measurement/zzjp;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjp;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 1
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzjp;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzjp;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-object v1

    :cond_1
    nop

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/measurement/zzli;I)Lcom/google/android/gms/internal/measurement/zzkb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzli;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjo;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjo;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkb;

    return-object p1
.end method
