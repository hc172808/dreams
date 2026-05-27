.class public final Lcom/google/android/gms/measurement/internal/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgp;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzkn;


# instance fields
.field private final zzA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzB:Lcom/google/android/gms/measurement/internal/zzkt;

.field zza:J

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfl;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzes;

.field private zze:Lcom/google/android/gms/measurement/internal/zzai;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzeu;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzkc;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzkp;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzib;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzjl;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzkf;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzfu;

.field private zzn:Z

.field private zzo:Z

.field private zzp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Ljava/nio/channels/FileLock;

.field private zzw:Ljava/nio/channels/FileChannel;

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzz:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzko;Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzko;->zza:Landroid/content/Context;

    .line 3
    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzC(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkf;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzl:Lcom/google/android/gms/measurement/internal/zzkf;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzes;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzko;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzW(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzko;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzy;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzib;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzib;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzj:Lcom/google/android/gms/measurement/internal/zzib;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkc;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzf:Lcom/google/android/gms/measurement/internal/zzeu;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    return-void
.end method

.method static synthetic zzX(Lcom/google/android/gms/measurement/internal/zzkn;)Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object p0
.end method

.method static final zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    .line 9
    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method

.method static final zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkn;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzkn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzko;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzko;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkn;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzko;Lcom/google/android/gms/measurement/internal/zzfu;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    return-object p0
.end method

.method private final zzaa(Ljava/lang/String;J)Z
    .locals 43

    move-object/from16 v1, p0

    const-string v2, "_sc"

    const-string v3, "_sn"

    const-string v4, "_npa"

    const-string v5, "_ai"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkm;

    .line 3
    const/4 v14, 0x0

    invoke-direct {v6, v1, v14}, Lcom/google/android/gms/measurement/internal/zzkm;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzkg;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const/4 v8, 0x0

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    .line 5
    move-wide/from16 v9, p2

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzW(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzkm;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    if-eqz v7, :cond_68

    .line 6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3c

    .line 10
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzh()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzT:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v9

    move-object/from16 v18, v14

    move-object/from16 v20, v18

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 13
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_fr"

    const-string v14, "_et"

    move-object/from16 v23, v4

    const-string v4, "_e"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    if-ge v13, v11, :cond_31

    :try_start_1
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 14
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v2

    move/from16 v26, v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v2, v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "_err"

    if-eqz v2, :cond_3

    .line 17
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Dropping blacklisted raw event. appId"

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 19
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v13

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v2, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v27

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v29

    const-string v31, "_ev"

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v32

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v34

    const/16 v30, 0xb

    const/16 v33, 0x0

    .line 32
    move-object/from16 v28, v2

    invoke-virtual/range {v27 .. v34}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    nop

    .line 26
    :goto_1
    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move/from16 v5, v26

    goto/16 :goto_1c

    .line 33
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 35
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v13, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x5

    .line 38
    invoke-static {v2, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v13

    if-ge v2, v13, :cond_5

    const-string v13, "ad_platform"

    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v27

    move-object/from16 v28, v5

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "admob"

    .line 42
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v13, "AdMob ad impression logged from app. Potentially duplicative."

    .line 45
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v28

    goto :goto_2

    .line 39
    :cond_5
    move-object/from16 v28, v5

    goto :goto_3

    .line 38
    :cond_6
    move-object/from16 v28, v5

    goto :goto_3

    .line 34
    :cond_7
    move-object/from16 v28, v5

    .line 45
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 47
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "_c"

    if-nez v2, :cond_9

    :try_start_3
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 48
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sparse-switch v27, :sswitch_data_0

    move-wide/from16 v29, v15

    goto :goto_4

    .line 110
    :sswitch_0
    nop

    .line 51
    move-wide/from16 v29, v15

    const-string v15, "_ui"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v22, 0x1

    goto :goto_5

    :sswitch_1
    move-wide/from16 v29, v15

    const-string v15, "_ug"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v22, 0x2

    goto :goto_5

    :sswitch_2
    move-wide/from16 v29, v15

    const-string v15, "_in"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v22, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/16 v22, -0x1

    :goto_5
    packed-switch v22, :pswitch_data_0

    move/from16 v31, v8

    move/from16 v27, v9

    move/from16 v16, v10

    move-object/from16 v32, v14

    const/4 v2, 0x0

    goto/16 :goto_d

    .line 122
    :pswitch_0
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_6

    .line 51
    :cond_9
    move-wide/from16 v29, v15

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 52
    :goto_6
    move/from16 v27, v9

    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v31, v8

    const-string v8, "_r"

    if-ge v13, v9, :cond_c

    .line 53
    :try_start_5
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 54
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 55
    move-object v9, v14

    const-wide/16 v14, 0x1

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 57
    invoke-virtual {v3, v13, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    move-object/from16 v32, v9

    move v14, v10

    const/4 v15, 0x1

    goto :goto_7

    :cond_a
    move-object v9, v14

    .line 58
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 59
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 60
    move-object/from16 v32, v9

    move v14, v10

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 62
    invoke-virtual {v3, v13, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/16 v16, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v32, v9

    move v14, v10

    .line 57
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move v10, v14

    move/from16 v9, v27

    move/from16 v8, v31

    move-object/from16 v14, v32

    goto :goto_6

    .line 62
    :cond_c
    move-object/from16 v32, v14

    move v14, v10

    if-nez v15, :cond_d

    if-eqz v2, :cond_d

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "Marking event as conversion"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 65
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v13

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 67
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v9

    .line 69
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 70
    move v10, v14

    const-wide/16 v13, 0x1

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 71
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_8

    .line 62
    :cond_d
    move v10, v14

    .line 71
    :goto_8
    if-nez v16, :cond_e

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 73
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Marking event as real-time"

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 74
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v14

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 76
    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v9

    .line 78
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 79
    const-wide/16 v13, 0x1

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 80
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    :cond_e
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 81
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v34

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 83
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    .line 84
    move-object/from16 v33, v9

    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v10

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzea;->zzn:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v15, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v15, v13, v9

    if-lez v15, :cond_f

    .line 86
    invoke-static {v3, v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    goto :goto_9

    .line 110
    :cond_f
    const/16 v19, 0x1

    .line 87
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzh(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v2, :cond_16

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v34

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 91
    move-object/from16 v33, v8

    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/zzag;->zzc:J

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzm:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v10

    int-to-long v13, v10

    cmp-long v10, v8, v13

    if-lez v10, :cond_16

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v8

    .line 94
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v8

    const-string v9, "Too many conversions. Not logging as conversion. appId"

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 95
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 96
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    .line 97
    :goto_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v14

    if-ge v8, v14, :cond_12

    .line 98
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    .line 99
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 100
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v13, v10

    move v10, v8

    goto :goto_b

    :cond_10
    nop

    .line 101
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v9, 0x1

    .line 100
    :cond_11
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 101
    :cond_12
    if-eqz v9, :cond_14

    if-eqz v13, :cond_13

    .line 111
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_d

    :cond_13
    const/4 v13, 0x0

    goto :goto_c

    .line 110
    :cond_14
    nop

    .line 111
    :goto_c
    if-eqz v13, :cond_15

    .line 102
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 103
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v13, 0xa

    .line 104
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 105
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 106
    invoke-virtual {v3, v10, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_d

    .line 107
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v8

    const-string v9, "Did not find conversion parameter. appId"

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 109
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 110
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    nop

    .line 51
    :goto_d
    if-eqz v2, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 113
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "currency"

    const-string/jumbo v14, "value"

    if-ge v8, v11, :cond_19

    .line 114
    :try_start_6
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v9, v8

    goto :goto_f

    .line 115
    :cond_17
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move v10, v8

    .line 114
    :cond_18
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 115
    :cond_19
    const/4 v8, -0x1

    if-ne v9, v8, :cond_1a

    const/4 v8, -0x1

    goto/16 :goto_12

    .line 116
    :cond_1a
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v8, "Value must be specified with a numeric type."

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 131
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 132
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    const/4 v8, -0x1

    goto :goto_12

    :cond_1b
    const/4 v8, -0x1

    if-ne v10, v8, :cond_1c

    goto :goto_11

    .line 117
    :cond_1c
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1d

    const/4 v10, 0x0

    .line 119
    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1f

    .line 120
    invoke-virtual {v2, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 121
    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 122
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_10

    .line 123
    :cond_1d
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v10, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 125
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 127
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 128
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_12

    .line 51
    :cond_1e
    const/4 v8, -0x1

    .line 115
    :cond_1f
    :goto_12
    nop

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 134
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_22

    if-eqz v20, :cond_21

    .line 136
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v9

    if-gtz v2, :cond_21

    .line 137
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 138
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 139
    move/from16 v12, v16

    invoke-virtual {v7, v12, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_13

    .line 180
    :cond_20
    move/from16 v12, v16

    move-object v2, v3

    move/from16 v31, v17

    .line 139
    :goto_13
    move-object/from16 v18, v2

    move v10, v12

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move/from16 v8, v31

    goto :goto_14

    .line 180
    :cond_21
    move/from16 v12, v16

    .line 139
    move-object/from16 v18, v3

    move v10, v12

    move/from16 v8, v17

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    :goto_14
    move-object/from16 v5, v32

    goto/16 :goto_19

    .line 180
    :cond_22
    move/from16 v12, v16

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move/from16 v9, v31

    move-object/from16 v5, v32

    goto/16 :goto_18

    :cond_23
    move/from16 v12, v16

    const-string v2, "_vs"

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 142
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v5, v32

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_26

    if-eqz v18, :cond_25

    .line 143
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-gtz v2, :cond_25

    .line 144
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 145
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 146
    move/from16 v9, v31

    invoke-virtual {v7, v9, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move v10, v12

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_15

    :cond_24
    move/from16 v9, v31

    move-object v2, v3

    move/from16 v10, v17

    :goto_15
    move-object/from16 v20, v2

    move v8, v9

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    goto/16 :goto_19

    :cond_25
    move/from16 v9, v31

    .line 139
    move-object/from16 v20, v3

    move v8, v9

    move/from16 v10, v17

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    goto/16 :goto_19

    .line 146
    :cond_26
    move/from16 v9, v31

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    goto/16 :goto_18

    .line 147
    :cond_27
    move/from16 v9, v31

    move-object/from16 v5, v32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 148
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzaj:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "_ab"

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 150
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_2d

    if-eqz v18, :cond_2d

    .line 152
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v13, 0xfa0

    cmp-long v2, v10, v13

    if-gtz v2, :cond_2d

    .line 153
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 154
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 156
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 157
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 158
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v11, v25

    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v10

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 159
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v14, v24

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 161
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v8, "_si"

    invoke-static {v15, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    if-eqz v10, :cond_28

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v10

    goto :goto_16

    .line 171
    :cond_28
    const-string v10, ""

    .line 163
    :goto_16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_29

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 164
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 165
    invoke-static {v3, v11, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    if-eqz v13, :cond_2a

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v10

    goto :goto_17

    .line 171
    :cond_2a
    const-string v10, ""

    .line 166
    :goto_17
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2b

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 167
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 168
    invoke-static {v3, v14, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    if-eqz v8, :cond_2c

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 169
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v10, "_si"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v15

    .line 170
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_2c
    invoke-virtual {v7, v9, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move v8, v9

    move v10, v12

    const/16 v18, 0x0

    goto :goto_19

    :cond_2d
    move-object/from16 v14, v24

    move-object/from16 v11, v25

    .line 139
    :goto_18
    move v8, v9

    move v10, v12

    :goto_19
    if-nez v27, :cond_30

    .line 172
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v2

    if-nez v2, :cond_2e

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Engagement event does not contain any parameters. appId"

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 183
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 184
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 186
    :cond_2e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 174
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2f

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Engagement event does not include duration. appId"

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 178
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 179
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 180
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v15, v29, v4

    goto :goto_1b

    :cond_30
    nop

    .line 184
    :goto_1a
    move-wide/from16 v15, v29

    :goto_1b
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfo;

    move/from16 v5, v26

    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    .line 186
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzf(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 26
    :goto_1c
    add-int/lit8 v13, v5, 0x1

    move-object v3, v11

    move-object v2, v14

    move-object/from16 v4, v23

    move/from16 v9, v27

    move-object/from16 v5, v28

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 51
    :cond_31
    move/from16 v27, v9

    move-object v5, v14

    move-wide/from16 v29, v15

    if-eqz v27, :cond_36

    move/from16 v3, v17

    move-wide/from16 v15, v29

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_35

    .line 187
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v8

    .line 188
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 189
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 190
    invoke-static {v8, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v9

    if-eqz v9, :cond_32

    .line 196
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzi(I)Lcom/google/android/gms/internal/measurement/zzfv;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_32
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 191
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 192
    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    if-eqz v8, :cond_34

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v8

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1e

    .line 195
    :cond_33
    const/4 v8, 0x0

    .line 193
    :goto_1e
    if-eqz v8, :cond_34

    .line 194
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-lez v11, :cond_34

    .line 195
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v15, v8

    goto :goto_1f

    :cond_34
    nop

    .line 196
    :goto_1f
    const/4 v8, 0x1

    add-int/2addr v2, v8

    goto :goto_1d

    .line 195
    :cond_35
    move-wide v2, v15

    goto :goto_20

    .line 210
    :cond_36
    move-wide/from16 v2, v29

    .line 195
    :goto_20
    nop

    .line 197
    const/4 v4, 0x0

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V

    .line 198
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v8, "_se"

    if-eqz v5, :cond_38

    :try_start_7
    const-string v5, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 199
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 200
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 201
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const-string v4, "_sid"

    .line 203
    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_39

    .line 204
    const/4 v4, 0x1

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V

    goto :goto_21

    .line 232
    :cond_39
    nop

    .line 205
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3a

    .line 206
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzq(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_3a
    :goto_21
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 211
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 214
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 215
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 216
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 217
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzf()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    .line 224
    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzd()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 227
    const-wide/16 v8, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v3, 0x0

    .line 229
    :goto_22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzk()I

    move-result v5

    if-ge v3, v5, :cond_3c

    .line 230
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzl(I)Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgh;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 233
    invoke-virtual {v7, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzm(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_23

    .line 354
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 232
    :cond_3c
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzn(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 234
    :cond_3d
    :goto_23
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzt(J)Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzv(J)Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v2, 0x0

    .line 235
    :goto_24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 236
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-gez v10, :cond_3e

    .line 238
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzt(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 239
    :cond_3e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_3f

    .line 240
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzv(J)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 241
    :cond_40
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzac()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 242
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzZ()Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    .line 243
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 244
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb()Ljava/util/List;

    move-result-object v10

    .line 246
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzj()Ljava/util/List;

    move-result-object v11

    .line 247
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 248
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 249
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzY(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Ljava/util/HashMap;

    .line 252
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 253
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v5, 0x0

    .line 255
    :goto_25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v8

    if-ge v5, v8, :cond_57

    .line 256
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 257
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v10, "_sr"

    if-eqz v9, :cond_45

    :try_start_8
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 324
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 325
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 326
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v11, :cond_41

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 327
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 328
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 329
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    if-eqz v11, :cond_41

    .line 330
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 338
    :cond_41
    nop

    .line 330
    :goto_26
    if-eqz v11, :cond_44

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_44

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    if-eqz v9, :cond_42

    .line 331
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_42

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 332
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    .line 333
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_43

    .line 334
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 335
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v9, "_efs"

    .line 336
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_43
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_44
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_31

    :cond_45
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 258
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 259
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v11

    const-string v12, "measurement.account.time_zone_offset_minutes"

    .line 260
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_46

    .line 262
    :try_start_9
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_27

    .line 405
    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_a
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 263
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 264
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 265
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    goto :goto_27

    .line 309
    :cond_46
    const-wide/16 v11, 0x0

    .line 266
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzab(JJ)J

    move-result-wide v13

    .line 267
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    move-wide/from16 v17, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 268
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_49

    .line 269
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_28
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 270
    move-object/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 271
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto :goto_29

    .line 309
    :cond_47
    const/4 v9, 0x1

    goto :goto_2a

    .line 270
    :cond_48
    move-object/from16 v9, v16

    goto :goto_28

    .line 271
    :cond_49
    :goto_29
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 272
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 273
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_2a
    if-gtz v9, :cond_4a

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 275
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 276
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_31

    .line 279
    :cond_4a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v11, :cond_4c

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 280
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 281
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    if-nez v11, :cond_4b

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 283
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 284
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v15

    .line 285
    move-wide/from16 v20, v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 286
    invoke-virtual {v11, v12, v15, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 287
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v27

    .line 288
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    .line 289
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v26, v11

    invoke-direct/range {v26 .. v42}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2b

    .line 281
    :cond_4b
    move-wide/from16 v20, v13

    goto :goto_2b

    .line 279
    :cond_4c
    move-wide/from16 v20, v13

    .line 289
    :goto_2b
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 290
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 291
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_4d

    const/4 v13, 0x1

    goto :goto_2c

    .line 309
    :cond_4d
    const/4 v13, 0x0

    .line 292
    :goto_2c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_50

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4f

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_4e

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_4e

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_4f

    .line 295
    :cond_4e
    const/4 v9, 0x0

    invoke-virtual {v11, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 296
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_4f
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_31

    .line 298
    :cond_50
    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_52

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 299
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    int-to-long v14, v9

    .line 300
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_51

    .line 303
    const/4 v10, 0x0

    invoke-virtual {v11, v10, v9, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    goto :goto_2d

    .line 323
    :cond_51
    nop

    .line 304
    :goto_2d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    .line 305
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v12

    move-wide/from16 v14, v20

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 306
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    move/from16 v21, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_30

    .line 307
    :cond_52
    move-wide/from16 v14, v20

    move-object/from16 v16, v4

    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzh:Ljava/lang/Long;

    if-eqz v4, :cond_53

    .line 308
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    goto :goto_2e

    .line 309
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v4

    move/from16 v21, v5

    move-object/from16 v20, v6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()J

    move-result-wide v5

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    move-wide/from16 v11, v17

    invoke-virtual {v4, v5, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzab(JJ)J

    move-result-wide v17

    .line 308
    :goto_2e
    cmp-long v4, v17, v14

    if-eqz v4, :cond_55

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 310
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v4, "_efs"

    .line 311
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v4, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 312
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    int-to-long v11, v9

    .line 313
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 316
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v11, v24

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    goto :goto_2f

    .line 319
    :cond_54
    move-object/from16 v11, v24

    .line 317
    :goto_2f
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 319
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 320
    :cond_55
    move-object/from16 v11, v24

    const-wide/16 v5, 0x1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 321
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v23

    const/4 v9, 0x0

    invoke-virtual {v11, v12, v9, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 322
    invoke-interface {v2, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_56
    :goto_30
    move/from16 v4, v21

    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 338
    :goto_31
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    move-object/from16 v4, v16

    move-object/from16 v6, v20

    goto/16 :goto_25

    .line 339
    :cond_57
    move-object/from16 v20, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 340
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzh()Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 341
    :cond_58
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 342
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 343
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    goto :goto_32

    .line 251
    :cond_59
    move-object/from16 v20, v6

    .line 343
    :cond_5a
    move-object/from16 v2, v20

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 344
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 346
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_5b

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 349
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 350
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    .line 351
    :cond_5b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v5

    if-lez v5, :cond_60

    .line 352
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_5c

    .line 353
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzy(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_33

    .line 354
    :cond_5c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzz()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 355
    :goto_33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5d

    goto :goto_34

    .line 357
    :cond_5d
    move-wide v5, v8

    .line 355
    :goto_34
    cmp-long v8, v5, v10

    if-eqz v8, :cond_5e

    .line 356
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzw(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_35

    .line 357
    :cond_5e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzx()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 358
    :goto_35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzN()V

    .line 359
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzI()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzS(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 360
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 361
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 362
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 363
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_36

    .line 364
    :cond_5f
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzU()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 363
    :goto_36
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 365
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 366
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 367
    :cond_60
    :goto_37
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v4

    if-lez v4, :cond_64

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 368
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 369
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 370
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v4

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()Z

    move-result v5

    if-nez v5, :cond_61

    goto :goto_38

    .line 376
    :cond_61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfc;->zzb()J

    move-result-wide v4

    .line 377
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_39

    .line 370
    :cond_62
    :goto_38
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 371
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-wide/16 v4, -0x1

    .line 372
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_39

    .line 373
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 374
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 375
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 376
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    :goto_39
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 378
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 379
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    move/from16 v8, v19

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzx(Lcom/google/android/gms/internal/measurement/zzfw;Z)Z

    :cond_64
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 380
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zzb:Ljava/util/List;

    .line 381
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 383
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 384
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 385
    :goto_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_66

    if-eqz v6, :cond_65

    const-string v7, ","

    .line 386
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_65
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_66
    const-string v6, ")"

    .line 388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 390
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 391
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_67

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 392
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 393
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 395
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 396
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 397
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 398
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v5, 0x2

    :try_start_b
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 399
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3b

    .line 265
    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 400
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 402
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    :goto_3b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 403
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 404
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v2, 0x1

    return v2

    .line 6
    :cond_68
    :goto_3c
    :try_start_d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v2, 0x0

    return v2

    .line 210
    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 405
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x171c4 -> :sswitch_2
        0x17331 -> :sswitch_1
        0x17333 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "_se"

    .line 0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_2
    :goto_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 9
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 16
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzm(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzn(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 16
    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 18
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    .line 21
    :cond_4
    const-string p1, "session-scoped"

    .line 19
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 21
    const-string p4, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 10
    :cond_1
    nop

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_2
    :goto_1
    return-void
.end method

.method private final zzae()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzG()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaf()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 8
    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzL()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 19
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzz:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzH()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzz()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 29
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    nop

    .line 21
    :goto_0
    if-eqz v10, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzu()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzu:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzt:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_1
    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzs:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 33
    move/from16 v17, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzD()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    move-wide/from16 v18, v7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzF()J

    move-result-wide v6

    .line 36
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_7

    move-wide v7, v3

    goto/16 :goto_5

    .line 71
    :cond_7
    sub-long/2addr v5, v1

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 39
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 40
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_8

    cmp-long v13, v1, v3

    if-lez v13, :cond_8

    .line 41
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_8
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 42
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 43
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq(JJ)Z

    move-result v13

    if-nez v13, :cond_9

    add-long v7, v1, v11

    goto :goto_3

    .line 47
    :cond_9
    nop

    .line 43
    :goto_3
    cmp-long v1, v9, v3

    if-eqz v1, :cond_a

    cmp-long v1, v9, v5

    if-ltz v1, :cond_a

    const/4 v1, 0x0

    .line 44
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzB:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 45
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzA:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 47
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v5, v5, v12

    add-long/2addr v7, v5

    cmp-long v2, v7, v9

    if-gtz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    goto :goto_5

    :cond_b
    move-wide v7, v3

    .line 36
    :goto_5
    cmp-long v1, v7, v3

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzq:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 52
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq(JJ)Z

    move-result v9

    if-nez v9, :cond_c

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_6

    .line 63
    :cond_c
    nop

    .line 56
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_d

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzv:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    goto :goto_7

    .line 63
    :cond_d
    nop

    .line 61
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkc;->zzc(J)V

    return-void

    .line 64
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    .line 68
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    .line 13
    :cond_10
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void
.end method

.method private final zzag()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :cond_1
    nop

    .line 10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 7
    :cond_2
    :goto_0
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v15

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v13

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v23

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v21

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v25

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v27

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v31

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_1

    .line 24
    :cond_3
    move-object/from16 v32, v3

    .line 23
    :goto_1
    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v32

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 4
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v4, "No app data available; dropping"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 2
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private static final zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzB()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzC()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 8
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 8
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 16
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzP:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    .line 19
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaa(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 24
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_27

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_c

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 28
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 29
    :try_start_6
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 31
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_9

    if-eqz v11, :cond_8

    .line 32
    :goto_2
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :cond_7
    goto :goto_4

    .line 60
    :cond_8
    goto :goto_4

    :cond_9
    nop

    .line 33
    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v11, :cond_7

    .line 32
    goto :goto_2

    .line 36
    :catchall_0
    move-exception v0

    move-object v9, v11

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    .line 32
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 169
    :catch_1
    move-exception v0

    move-object v11, v9

    :goto_3
    :try_start_a
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v11, :cond_a

    .line 32
    goto :goto_2

    .line 162
    :cond_a
    nop

    .line 32
    :goto_4
    :try_start_b
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    goto :goto_6

    .line 162
    :catchall_2
    move-exception v0

    move-object v9, v11

    .line 32
    :goto_5
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_b
    throw v0

    .line 37
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzea;->zzf:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzg:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v7

    .line 39
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-lez v0, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    .line 60
    :cond_d
    const/4 v10, 0x0

    .line 43
    :goto_7
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v7, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    .line 60
    :cond_e
    const/4 v10, 0x0

    .line 44
    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 46
    :try_start_c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 48
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 49
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v11, :cond_f

    .line 51
    :try_start_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 84
    :cond_f
    move-wide/from16 v20, v4

    goto/16 :goto_10

    .line 129
    :cond_10
    :try_start_f
    new-instance v12, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_9
    nop

    .line 53
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 54
    :try_start_10
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 56
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 57
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 59
    :goto_a
    move-wide/from16 v20, v4

    :try_start_12
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_13

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 62
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 64
    :try_start_13
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    array-length v2, v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_11

    goto/16 :goto_e

    .line 65
    :cond_11
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzaj()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzt(Lcom/google/android/gms/internal/measurement/zzlh;[B)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 69
    const/4 v3, 0x2

    :try_start_15
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 70
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzah(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 71
    :cond_12
    array-length v0, v0

    add-int/2addr v13, v0

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 75
    :catch_2
    move-exception v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_d

    .line 79
    :cond_13
    nop

    .line 60
    const/4 v5, 0x0

    :try_start_16
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-wide/from16 v4, v20

    goto :goto_a

    .line 78
    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-wide/from16 v20, v4

    :goto_b
    :try_start_17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 147
    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-wide/from16 v20, v4

    :goto_c
    :try_start_18
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v0, :cond_15

    if-le v13, v7, :cond_14

    goto :goto_e

    :cond_14
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 64
    :cond_15
    :goto_e
    if-eqz v11, :cond_16

    .line 51
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :cond_16
    nop

    .line 84
    move-object v0, v12

    goto :goto_10

    .line 83
    :catch_7
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v9, v11

    goto/16 :goto_19

    :catch_8
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_f

    .line 51
    :catchall_4
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_19

    .line 36
    :catch_9
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    :goto_f
    :try_start_1a
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-eqz v11, :cond_17

    .line 51
    :try_start_1b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_17
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 85
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 87
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    .line 129
    :cond_19
    const/4 v2, 0x0

    .line 89
    :goto_11
    if-eqz v2, :cond_1c

    const/4 v3, 0x0

    .line 90
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 91
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_13

    .line 93
    :cond_1a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 94
    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 92
    :cond_1b
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 95
    :cond_1c
    :goto_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu;->zzc()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zzw(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 99
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_15

    .line 129
    :cond_1d
    const/4 v5, 0x0

    .line 100
    :goto_15
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v7

    .line 101
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v8

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v3, :cond_22

    .line 102
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfv;

    .line 103
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v11, 0xa414

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfv;->zzK(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 105
    move-wide/from16 v11, v20

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfv;->zzr(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 106
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    .line 107
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzfv;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    if-nez v5, :cond_1e

    .line 108
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzag()Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_1e
    if-nez v7, :cond_1f

    .line 109
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzM()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 110
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzO()Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_1f
    if-nez v8, :cond_20

    .line 111
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzQ()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 112
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzV:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 113
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 114
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 115
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->zzr([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->zzam(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 116
    :cond_21
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzft;->zzb(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzft;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto :goto_16

    .line 117
    :cond_22
    move-wide/from16 v11, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh(Lcom/google/android/gms/internal/measurement/zzfu;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 129
    :cond_23
    const/4 v0, 0x0

    .line 120
    :goto_17
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 121
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v14

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzp:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 125
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 126
    :try_start_1c
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v7, :cond_24

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_18

    .line 8
    :cond_24
    new-instance v7, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 128
    :goto_18
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 130
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const-string v4, "?"

    if-lez v3, :cond_25

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzft;->zza(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 132
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 135
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkh;

    .line 136
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 138
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 139
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzer;

    const/4 v15, 0x0

    .line 143
    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzep;)V

    .line 144
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzk(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto/16 :goto_1e

    .line 83
    :catch_a
    move-exception v0

    .line 145
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 147
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 162
    :catchall_5
    move-exception v0

    move-object v9, v11

    .line 51
    :goto_19
    if-eqz v9, :cond_26

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_26
    throw v0

    .line 32
    :cond_27
    move-wide v11, v4

    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 152
    :try_start_1e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 153
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 154
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 155
    :try_start_1f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    if-eqz v3, :cond_28

    .line 158
    goto :goto_1c

    .line 166
    :cond_28
    goto :goto_1d

    :cond_29
    nop

    .line 159
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    if-eqz v3, :cond_2b

    .line 158
    :goto_1a
    :try_start_20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    goto :goto_1d

    .line 162
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 158
    :catchall_6
    move-exception v0

    goto :goto_1f

    .line 68
    :catch_c
    move-exception v0

    move-object v3, v9

    :goto_1b
    :try_start_21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    if-eqz v3, :cond_2a

    .line 158
    :goto_1c
    goto :goto_1a

    .line 162
    :cond_2a
    nop

    .line 163
    :cond_2b
    :goto_1d
    :try_start_22
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 164
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 165
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 166
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzD(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 144
    :cond_2c
    :goto_1e
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto/16 :goto_0

    .line 162
    :catchall_7
    move-exception v0

    move-object v9, v3

    .line 158
    :goto_1f
    if-eqz v9, :cond_2d

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_2d
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 158
    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 169
    throw v0
.end method

.method final zzC(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_6

    const/16 p1, 0xcc

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :catch_0
    move-exception v0

    .line 33
    :try_start_5
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34
    :catch_1
    move-exception p3

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    throw p3

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzB()V

    goto :goto_1

    .line 46
    :cond_5
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 32
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    goto :goto_2

    .line 37
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 34
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 47
    :catch_2
    move-exception p1

    .line 35
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p3

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 41
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 42
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzB(Ljava/util/List;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 32
    :goto_2
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    .line 45
    :catchall_1
    move-exception p1

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 47
    throw p1
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 53
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzl:Lcom/google/android/gms/measurement/internal/zzkf;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 9
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_4
    :goto_1
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzd:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 18
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zze:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 19
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "config/app/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 47
    :cond_5
    new-instance v2, Ljava/lang/String;

    .line 19
    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_2
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 22
    const-string v3, "platform"

    const-string v5, "android"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v5, 0xa414

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gmp_version"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpt;->zzb()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzaD:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    const-string v0, "runtime_version"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 30
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 33
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 37
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 38
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    goto :goto_3

    .line 47
    :cond_7
    move-object v10, v4

    .line 38
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 39
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzki;

    .line 40
    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 43
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzer;

    const/4 v9, 0x0

    .line 46
    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzep;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzk(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 48
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    const/16 p2, 0x130

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 21
    :cond_3
    const/16 v5, 0x194

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzM(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 39
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 40
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 43
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 46
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 47
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    goto/16 :goto_7

    .line 21
    :cond_7
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    const-string v3, "Last-Modified"

    .line 12
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_2

    .line 21
    :cond_8
    move-object p5, p3

    .line 12
    :goto_2
    if-eqz p5, :cond_9

    .line 13
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 14
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_3

    .line 21
    :cond_9
    move-object p5, p3

    .line 14
    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 33
    :cond_a
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 23
    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_c

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    .line 14
    :cond_b
    :goto_5
    :try_start_3
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 16
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p4

    if-nez p4, :cond_c

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 18
    invoke-virtual {p4, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_c

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 24
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 26
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 29
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 30
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzB()V

    goto :goto_7

    .line 36
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 11
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    goto :goto_4

    .line 51
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 50
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 47
    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 51
    throw p1
.end method

.method final zzF(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzG()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzo:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzo:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzH()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    nop

    .line 7
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_2

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzA()Lcom/google/android/gms/measurement/internal/zzee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzee;->zzm()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    if-le v6, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    if-eqz v7, :cond_8

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 39
    :cond_5
    nop

    .line 24
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzap:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_6

    .line 29
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 30
    :cond_6
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 31
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 32
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 35
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_9
    return-void
.end method

.method final zzH()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzaf:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 7
    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 8
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :catch_2
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method final zzI(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string/jumbo v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzO(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method final zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzo(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 9
    invoke-virtual {v7, v9, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    .line 13
    :cond_2
    const/4 v11, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v12

    .line 13
    const-string v9, "_ev"

    move-object v5, v0

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 17
    invoke-virtual {v7, v8, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v6

    goto :goto_1

    .line 24
    :cond_5
    const/16 v16, 0x0

    .line 22
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v17

    .line 24
    const-string v14, "_ev"

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzK(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    .line 27
    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    .line 29
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 31
    const-string v7, "_sno"

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 32
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_8

    .line 41
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    .line 68
    :cond_8
    if-eqz v6, :cond_9

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 35
    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 36
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 37
    const-string v7, "_s"

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v4, v12, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 69
    :cond_a
    const-wide/16 v6, 0x0

    .line 41
    :goto_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkq;

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzks;

    .line 44
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    .line 46
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    move-object v7, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 50
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    const-string v7, "Setting user property"

    invoke-virtual {v0, v7, v6, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 54
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 56
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 57
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    if-nez v0, :cond_c

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 61
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 62
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 63
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v14

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 66
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 40
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 69
    throw v0
.end method

.method final zzK(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_1
    nop

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 31
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 32
    :cond_2
    const-wide/16 v0, 0x1

    .line 31
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 16
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 25
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 28
    throw p1
.end method

.method final zzL()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    return-void
.end method

.method final zzM()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    return-void
.end method

.method final zzN()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method final zzO(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zze(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v8, :cond_1

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 17
    :cond_1
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_0

    .line 38
    :cond_2
    nop

    .line 18
    :goto_0
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zze()V

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzn:I

    const/4 v15, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v15, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 25
    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v13, v9, v14, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    goto :goto_1

    .line 38
    :cond_3
    nop

    .line 25
    :goto_1
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "auto"

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Ljava/lang/String;

    .line 31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    goto :goto_4

    .line 32
    :cond_5
    :goto_2
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    .line 33
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v19, "_npa"

    .line 34
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v15, v10, :cond_6

    const-wide/16 v20, 0x0

    goto :goto_3

    .line 85
    :cond_6
    const-wide/16 v20, 0x1

    .line 34
    :goto_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x1

    move-object v13, v14

    move-object v3, v14

    const/4 v4, 0x0

    move-object/from16 v14, v19

    const/4 v4, 0x1

    move-wide v15, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzd:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 36
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_4

    .line 85
    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_9

    .line 37
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_npa"

    const/16 v17, 0x0

    const-string v18, "auto"

    move-object v13, v3

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzK(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 36
    :cond_9
    :goto_4
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 40
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v10

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-virtual {v10, v13, v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 48
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 49
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const-string v14, "events"

    .line 55
    invoke-virtual {v10, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "user_attributes"

    .line 56
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 57
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 58
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 59
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 60
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 61
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 63
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 64
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_a

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v10, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    goto :goto_5

    .line 85
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 203
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {v9, v10, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_5

    .line 85
    :cond_b
    nop

    .line 66
    :goto_5
    if-eqz v3, :cond_f

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    const-wide/32 v13, -0x80000000

    cmp-long v0, v9, v13

    if-eqz v0, :cond_c

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    move-object/from16 v23, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_d

    const/4 v15, 0x1

    goto :goto_6

    .line 85
    :cond_c
    move-object/from16 v23, v5

    :cond_d
    const/4 v15, 0x0

    .line 72
    :goto_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_e

    if-eqz v0, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    .line 85
    :cond_e
    const/4 v3, 0x0

    .line 74
    :goto_7
    or-int/2addr v3, v15

    if-eqz v3, :cond_10

    new-instance v3, Landroid/os/Bundle;

    .line 75
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 76
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_au"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_8

    .line 66
    :cond_f
    move-object/from16 v23, v5

    .line 79
    :cond_10
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v8, :cond_11

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 81
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_9

    .line 198
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 84
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 85
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v15, 0x1

    .line 82
    :goto_9
    if-nez v0, :cond_27

    const-wide/32 v3, 0x36ee80

    div-long v8, v11, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    mul-long v8, v8, v3

    const-string v3, "_dac"

    const-string v4, "_r"

    const-string v5, "_c"

    const-string v10, "_et"

    if-nez v15, :cond_25

    .line 99
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fot"

    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzfe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_b

    .line 171
    :cond_12
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 108
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 109
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzi()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_13
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfd;

    .line 111
    invoke-direct {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzfe;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 113
    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 114
    move-object/from16 v15, v23

    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v13

    .line 115
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_14

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzf()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 118
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_14
    nop

    .line 119
    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 120
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_17

    .line 124
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 125
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_19

    .line 126
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 127
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 128
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 109
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v13

    if-eqz v13, :cond_16

    new-instance v13, Landroid/content/Intent;

    .line 132
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v14

    .line 134
    const/4 v15, 0x1

    invoke-virtual {v0, v14, v13, v9, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 135
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_15

    move-object v14, v15

    goto :goto_a

    .line 137
    :cond_15
    move-object/from16 v14, v16

    :goto_a
    :try_start_6
    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    .line 178
    :catch_1
    move-exception v0

    :try_start_7
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 138
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v8

    .line 139
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v8

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 140
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 137
    :cond_16
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 131
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzi()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 123
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_c

    .line 104
    :cond_18
    :goto_b
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzf()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 107
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 142
    :cond_19
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    new-instance v8, Landroid/os/Bundle;

    .line 144
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-wide/16 v13, 0x1

    invoke-virtual {v8, v5, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    invoke-virtual {v8, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    const-wide/16 v4, 0x0

    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    move-object/from16 v9, v22

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    move-object/from16 v15, v21

    invoke-virtual {v8, v15, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    const-wide/16 v4, 0x1

    invoke-virtual {v8, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v0, :cond_1a

    .line 153
    invoke-virtual {v8, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 155
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 156
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const-string v4, "first_open_count"

    .line 159
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzE(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v22, v10

    goto/16 :goto_12

    .line 202
    :cond_1b
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v21, v15

    goto :goto_d

    .line 69
    :catch_2
    move-exception v0

    .line 164
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v13

    .line 165
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v13

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    move-object/from16 v21, v15

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 166
    invoke-virtual {v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 163
    :goto_d
    if-eqz v0, :cond_21

    .line 167
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_20

    .line 168
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v9

    if-eqz v0, :cond_1e

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzak:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_1c

    .line 170
    const-wide/16 v13, 0x1

    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_e

    .line 182
    :cond_1c
    const/4 v15, 0x0

    goto :goto_e

    :cond_1d
    nop

    .line 171
    const-wide/16 v13, 0x1

    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 170
    :goto_e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_1f

    const-wide/16 v15, 0x0

    goto :goto_f

    .line 182
    :cond_1f
    const-wide/16 v15, 0x1

    .line 172
    :goto_f
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-object/from16 v7, v21

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    .line 167
    :cond_20
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v7, v21

    const/4 v10, 0x0

    goto :goto_10

    .line 163
    :cond_21
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v7, v21

    const/4 v10, 0x0

    .line 173
    :goto_10
    :try_start_a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    .line 166
    :catch_3
    move-exception v0

    .line 176
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 177
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    invoke-virtual {v9, v13, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    .line 175
    :goto_11
    if-eqz v9, :cond_23

    .line 179
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    .line 180
    move-object/from16 v3, v23

    const-wide/16 v13, 0x1

    invoke-virtual {v8, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 181
    :cond_22
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_23

    .line 182
    const-wide/16 v9, 0x1

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    :cond_23
    :goto_12
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-ltz v0, :cond_24

    .line 186
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    :cond_24
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v8}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_f"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 188
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    move-object/from16 v4, v22

    goto :goto_13

    .line 86
    :cond_25
    move-object/from16 v22, v10

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fvt"

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    new-instance v0, Landroid/os/Bundle;

    .line 91
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-wide/16 v6, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    move-object/from16 v4, v22

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v5, :cond_26

    .line 96
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    :cond_26
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_v"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 189
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzT:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/os/Bundle;

    .line 190
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    const-wide/16 v5, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_fr"

    .line 192
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_e"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 193
    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 194
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_14

    .line 195
    :cond_27
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_28

    new-instance v0, Landroid/os/Bundle;

    .line 196
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_cd"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 198
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 194
    :cond_28
    :goto_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 201
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 38
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 201
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 203
    throw v0

    .line 38
    :cond_29
    return-void
.end method

.method final zzP(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzQ(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final zzQ(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 26
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    goto :goto_0

    .line 41
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    const/4 p1, 0x1

    goto :goto_0

    .line 62
    :cond_4
    nop

    .line 27
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 31
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 42
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 43
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 25
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 62
    throw p1
.end method

.method final zzR(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzS(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final zzS(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    move-object v4, v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 33
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 38
    throw p1

    .line 39
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 25
    :cond_0
    const-string v2, ""

    .line 12
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzal:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_e

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 67
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_2
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    nop

    .line 79
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 80
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    .line 83
    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 84
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 85
    :cond_7
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_8

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 87
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 88
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 89
    :cond_9
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 90
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 92
    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 93
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 94
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 95
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    .line 96
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 97
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 98
    :cond_c
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    .line 99
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    .line 100
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_d
    return-object v0

    .line 13
    :cond_e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 16
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 19
    :cond_f
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    .line 66
    :cond_10
    const/4 v4, 0x1

    goto :goto_3

    .line 21
    :cond_11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v2, :cond_13

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 26
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 28
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    nop

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    .line 23
    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 25
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_14
    nop

    .line 29
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 31
    :cond_15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 33
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 34
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 36
    :cond_17
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 38
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 39
    :cond_18
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_19

    .line 40
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    const/4 v4, 0x1

    .line 41
    :cond_19
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 43
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 44
    :cond_1a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1b

    .line 45
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    const/4 v4, 0x1

    .line 46
    :cond_1b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 48
    :cond_1c
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1d

    .line 49
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    const/4 v4, 0x1

    .line 50
    :cond_1d
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 51
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    const/4 v4, 0x1

    .line 52
    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 54
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 55
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 56
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_20

    .line 57
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    const/4 v4, 0x1

    .line 58
    :cond_20
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    if-eq v1, v2, :cond_21

    .line 59
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    const/4 v4, 0x1

    .line 60
    :cond_21
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 61
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 60
    :cond_22
    move v8, v4

    .line 62
    :goto_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_23

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_23

    .line 64
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    goto :goto_5

    .line 66
    :cond_23
    if-eqz v8, :cond_24

    .line 64
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_24
    return-object v0
.end method

.method final zzU(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzV(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    return-void
.end method

.method public final zzat()Lcom/google/android/gms/measurement/internal/zzz;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzau()Lcom/google/android/gms/measurement/internal/zzem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    return-object v0
.end method

.method public final zzav()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final zzax()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzf:Lcom/google/android/gms/measurement/internal/zzeu;

    if-eqz v0, :cond_0

    .line 1
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzj:Lcom/google/android/gms/measurement/internal/zzib;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzku;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    if-eqz v0, :cond_0

    .line 1
    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 13
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    const-string v1, "Error storing consent setting. appId, error"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaf;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 9
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 18
    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_2
    const-string v0, "G1"

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V

    goto :goto_3

    .line 16
    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 15
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 11
    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v5, :cond_3

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_3
    throw p1

    .line 11
    :cond_4
    nop

    .line 18
    :goto_3
    return-object v0
.end method

.method final zzu()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjl;->zze:Lcom/google/android/gms/measurement/internal/zzey;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjl;->zze:Lcom/google/android/gms/measurement/internal/zzey;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final zzv(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    const-string v3, "App version does not match; dropping event. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v11

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v16

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v24

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v22

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v26

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v28

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v31

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 27
    :cond_3
    const/4 v1, 0x0

    .line 25
    :goto_1
    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v30

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v31

    move-object/from16 v29, v1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 4
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzK(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzab:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 12
    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 13
    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "referrer API v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 15
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method final zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 6
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    .line 14
    const-string v7, "ga_safelisted"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 110
    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    cmp-long v9, v11, v5

    if-gez v9, :cond_4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 24
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 25
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 49
    :cond_4
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 27
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 28
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 29
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v5, :cond_6

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v6

    const-string v10, "User property timed out"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v15

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 33
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 34
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 35
    invoke-virtual {v6, v10, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v6, :cond_5

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 36
    invoke-direct {v10, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_5
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 37
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 38
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    .line 29
    :cond_6
    const/4 v13, 0x1

    goto :goto_2

    .line 38
    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-gez v9, :cond_8

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 46
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 79
    :cond_8
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 48
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 49
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 47
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v6, :cond_a

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 53
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 54
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v15

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 55
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 56
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 57
    invoke-virtual {v10, v13, v14, v8, v15}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 59
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_9

    .line 60
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 61
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 62
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_4

    .line 51
    :cond_a
    const/4 v8, 0x2

    goto :goto_4

    .line 63
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    .line 64
    invoke-direct {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 65
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 66
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-gez v9, :cond_d

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 76
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    .line 106
    :cond_d
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 78
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 79
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 77
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v14, :cond_10

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 84
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 85
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 89
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 90
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 91
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 93
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 94
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 95
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :goto_8
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_f

    .line 96
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 97
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 98
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 99
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_7

    .line 81
    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 100
    :cond_11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 101
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 102
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_9

    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 105
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 107
    throw v0
.end method

.method final zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v11, :cond_41

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    const-string v6, "Dropping blacklisted event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    nop

    .line 30
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    const/16 v3, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v4, v14, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    .line 33
    const-string v15, "_ev"

    move-object v13, v10

    move v14, v3

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 22
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzL()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzJ()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 27
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzy:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzD(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_3
    return-void

    .line 34
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v12

    .line 37
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzen;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v11

    .line 40
    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->zzb()Z

    move-result v16

    if-nez v16, :cond_5

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 76
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v14, "origin="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 48
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v14, ",name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 44
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v14, ",params="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    .line 44
    :cond_6
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->zzb()Z

    move-result v17

    if-nez v17, :cond_7

    .line 52
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v14

    .line 44
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 54
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 45
    :goto_2
    nop

    .line 44
    const-string v13, "Logging event"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 56
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 57
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 58
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 59
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    if-nez v11, :cond_a

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 60
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 61
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_3

    .line 76
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    const/4 v11, 0x1

    .line 61
    :goto_3
    const-string v13, "_iap"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 62
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    move-wide/from16 v28, v8

    move-object/from16 v30, v15

    const/4 v8, 0x2

    goto/16 :goto_f

    :cond_c
    :goto_4
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v14, "currency"

    .line 63
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v14, "value"

    if-eqz v11, :cond_10

    :try_start_2
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 64
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v11, v19, v23

    if-nez v11, :cond_d

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 65
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v23, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v19, v14, v21

    goto :goto_5

    .line 73
    :cond_d
    move-object/from16 v23, v15

    .line 65
    :goto_5
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v19, v14

    if-gtz v11, :cond_f

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v19, v14

    if-ltz v11, :cond_f

    .line 74
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 75
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    neg-long v14, v14

    goto :goto_6

    .line 80
    :cond_e
    nop

    .line 75
    :goto_6
    goto :goto_8

    .line 66
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 70
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 72
    :goto_7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_10
    move-object/from16 v23, v15

    :try_start_3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 76
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 77
    :goto_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 79
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "_ltv_"

    .line 80
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_9
    move-object v13, v11

    goto :goto_a

    .line 98
    :cond_11
    new-instance v11, Ljava/lang/String;

    .line 80
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 81
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 82
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 83
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_12

    move-wide/from16 v28, v8

    move-object/from16 v17, v13

    move-object/from16 v30, v23

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_b

    .line 96
    :cond_12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v19, Lcom/google/android/gms/measurement/internal/zzks;

    move-object/from16 v20, v13

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    add-long/2addr v11, v14

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v11, v19

    move-object v12, v10

    move-object/from16 v17, v20

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-wide/from16 v28, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v14, v17

    move-object/from16 v30, v23

    move-wide/from16 v15, v21

    move-object/from16 v17, v24

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v19

    const/4 v8, 0x2

    goto/16 :goto_e

    .line 82
    :cond_13
    move-wide/from16 v28, v8

    move-object/from16 v17, v13

    move-object/from16 v30, v23

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 83
    :goto_b
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 84
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    .line 86
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzD:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 85
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 87
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 89
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :try_start_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    aput-object v10, v9, v8

    const/16 v16, 0x1

    aput-object v10, v9, v16

    .line 91
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v8, 0x2

    :try_start_5
    aput-object v12, v9, v8

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 92
    invoke-virtual {v13, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    .line 373
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    const/4 v8, 0x2

    :goto_c
    move-object v9, v0

    :try_start_6
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 93
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 94
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    :goto_d
    new-instance v19, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v11, v19

    move-object v12, v10

    move-object/from16 v14, v17

    move-wide/from16 v15, v20

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v19

    :goto_e
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 99
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 100
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 102
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 103
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 104
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 105
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 108
    move-object v13, v10

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_f

    .line 79
    :cond_14
    move-wide/from16 v28, v8

    move-object/from16 v30, v23

    const/4 v8, 0x2

    goto :goto_f

    .line 77
    :cond_15
    move-wide/from16 v28, v8

    move-object/from16 v30, v23

    const/4 v8, 0x2

    .line 108
    :cond_16
    :goto_f
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 109
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzh(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 110
    move-object/from16 v12, v30

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v11, :cond_17

    const-wide/16 v16, 0x0

    goto :goto_11

    .line 179
    :cond_17
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzap;

    .line 112
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    const-wide/16 v16, 0x0

    .line 113
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 114
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 116
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_18

    .line 117
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_10

    :cond_18
    nop

    goto :goto_10

    :cond_19
    nop

    .line 111
    :goto_11
    const-wide/16 v23, 0x1

    add-long v15, v16, v23

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 118
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 120
    move-object v14, v10

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v22

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/zzai;->zzv(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 122
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    move/from16 v21, v9

    const-wide/16 v8, 0x0

    cmp-long v16, v12, v8

    if-lez v16, :cond_1b

    rem-long/2addr v12, v14

    cmp-long v2, v12, v23

    if-nez v2, :cond_1a

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 126
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 127
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    goto/16 :goto_7

    .line 73
    :cond_1b
    if-eqz v21, :cond_1d

    :try_start_7
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 130
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    cmp-long v14, v12, v8

    if-lez v14, :cond_1d

    const-wide/16 v3, 0x3e8

    rem-long/2addr v12, v3

    cmp-long v3, v12, v23

    if-nez v3, :cond_1c

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 366
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 367
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x10

    const/16 v17, 0x0

    .line 370
    move-object v13, v10

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 371
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 372
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    goto/16 :goto_7

    .line 73
    :cond_1d
    const v12, 0xf4240

    if-eqz v22, :cond_1f

    :try_start_8
    iget-wide v13, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v15

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v8

    .line 132
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 133
    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v13, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v13, v8

    if-lez v15, :cond_1f

    cmp-long v2, v13, v23

    if-nez v2, :cond_1e

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    .line 360
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 361
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 362
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    goto/16 :goto_7

    .line 73
    :cond_1f
    :try_start_9
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v8

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    const-string v11, "_o"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v8, v11, v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzku;->zzT(Ljava/lang/String;)Z

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v15, "_r"

    if-eqz v9, :cond_20

    .line 137
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "_dbg"

    invoke-virtual {v9, v8, v13, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    invoke-virtual {v9, v8, v15, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    const-string v9, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 139
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 140
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 141
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 142
    invoke-virtual {v9, v11, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v9

    if-eqz v9, :cond_21

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 143
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_21

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v8, v7, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 145
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 146
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 148
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 149
    :try_start_b
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 150
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzo:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 151
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v11

    .line 152
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 153
    const/4 v14, 0x0

    :try_start_c
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 151
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    aput-object v10, v12, v14

    const/4 v13, 0x1

    aput-object v11, v12, v13

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 154
    invoke-virtual {v9, v6, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    int-to-long v11, v7

    goto :goto_13

    .line 94
    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    const/4 v14, 0x0

    :goto_12
    move-object v9, v0

    :try_start_d
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 155
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 156
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 157
    invoke-virtual {v7, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    .line 154
    :goto_13
    const-wide/16 v16, 0x0

    cmp-long v7, v11, v16

    if-lez v7, :cond_22

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 159
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 160
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 161
    invoke-virtual {v7, v9, v13, v11}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v18, 0x0

    .line 162
    move-object v11, v7

    const/4 v2, 0x0

    move-object v14, v10

    move-object v2, v15

    move-object v15, v9

    move-wide/from16 v16, v4

    move-object/from16 v20, v8

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 163
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v10, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    if-nez v4, :cond_24

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 165
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 166
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzI(Ljava/lang/String;)J

    move-result-wide v4

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v11, v4, v8

    if-ltz v11, :cond_23

    if-eqz v21, :cond_23

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 171
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 172
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 174
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 177
    move-object v13, v10

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    goto/16 :goto_7

    .line 73
    :cond_23
    :try_start_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v13, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 168
    move-object v11, v4

    move-object v12, v10

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    .line 206
    :cond_24
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 178
    invoke-virtual {v7, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzfu;J)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 179
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zza(J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    .line 168
    :goto_14
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 180
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 181
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 184
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 186
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 187
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzaj()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(I)Lcom/google/android/gms/internal/measurement/zzfv;

    const-string v8, "android"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 189
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 190
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 191
    :cond_25
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 192
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 193
    :cond_26
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 194
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 195
    :cond_27
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v12, v8, v10

    if-eqz v12, :cond_28

    long-to-int v9, v8

    .line 196
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzab(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 197
    :cond_28
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 198
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 199
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 200
    :cond_29
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 201
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 202
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    .line 203
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 204
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 207
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 208
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 209
    :cond_2a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzan()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 211
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 212
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_15

    .line 205
    :cond_2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 206
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 213
    :cond_2c
    :goto_15
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2d

    .line 214
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzR(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 215
    :cond_2d
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzal(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 216
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzkp;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 217
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v9

    .line 218
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzea;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_31

    .line 219
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_2e

    const/4 v14, 0x0

    goto/16 :goto_18

    .line 329
    :cond_2e
    new-instance v14, Ljava/util/ArrayList;

    .line 220
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzea;->zzO:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 221
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 222
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "measurement.id."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v12, :cond_2f

    .line 224
    :try_start_f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2f

    .line 225
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v10, :cond_2f

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 227
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Too many experiment IDs. Number of IDs"

    .line 229
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_17

    .line 350
    :catch_4
    move-exception v0

    move-object v11, v0

    :try_start_10
    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 230
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v12

    .line 231
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v12

    const-string v13, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 232
    :cond_30
    :goto_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_32

    :cond_31
    const/4 v14, 0x0

    .line 219
    :cond_32
    :goto_18
    if-eqz v14, :cond_33

    .line 233
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->zzak(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 234
    :cond_33
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 235
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 236
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    .line 237
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 238
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 239
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzjl;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)Landroid/util/Pair;

    move-result-object v9

    .line 240
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_34

    .line 241
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v10, :cond_34

    .line 242
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 243
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_34

    .line 244
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzN(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_34
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 245
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 246
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 247
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 248
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 249
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 250
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 251
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 252
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v9

    if-nez v9, :cond_35

    .line 254
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzae(J)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_35
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 255
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 256
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    .line 257
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 258
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_36
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 259
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 260
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v9

    if-nez v9, :cond_39

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 261
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 263
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 264
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v10

    if-eqz v10, :cond_37

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 266
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 267
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    :cond_37
    nop

    .line 268
    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzH(J)V

    .line 269
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 270
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 271
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 272
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 273
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 274
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 275
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 276
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v10

    if-nez v10, :cond_38

    .line 278
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 279
    :cond_38
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 280
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 281
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 282
    :cond_39
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 283
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 284
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 285
    :cond_3a
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 286
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_3b
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 287
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 288
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    .line 289
    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_3c

    .line 290
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v8

    .line 291
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 292
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzks;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzd:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 293
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 294
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzo(Lcom/google/android/gms/internal/measurement/zzgg;)Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    :cond_3c
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 296
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 297
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 298
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 299
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 300
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 303
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 304
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzr([B)J

    move-result-wide v10

    new-instance v12, Landroid/content/ContentValues;

    .line 305
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 306
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v31

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v15, v30

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    .line 308
    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 309
    :try_start_12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v13, "raw_events_metadata"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v5, 0x4

    .line 310
    move-object/from16 v16, v4

    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {v9, v13, v4, v12, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 320
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzap;

    .line 321
    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 322
    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 323
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v17, 0x1

    goto :goto_1a

    .line 357
    :cond_3e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 325
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 327
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v19

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v18 .. v26}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    if-eqz v2, :cond_3f

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzn:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-gez v2, :cond_3f

    const/16 v17, 0x1

    goto :goto_1a

    :cond_3f
    const/16 v17, 0x0

    .line 330
    :goto_1a
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 331
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 332
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 333
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 334
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 335
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzf(Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    .line 336
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 337
    invoke-virtual {v4, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 338
    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "timestamp"

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 339
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 341
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "realtime"

    .line 342
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 343
    :try_start_15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 344
    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_40

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 345
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 347
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_1d

    .line 357
    :cond_40
    const-wide/16 v2, 0x0

    :try_start_16
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    goto :goto_1d

    .line 315
    :catch_5
    move-exception v0

    move-object v2, v0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 348
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 349
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 350
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1d

    .line 157
    :catch_6
    move-exception v0

    goto :goto_1c

    .line 319
    :catch_7
    move-exception v0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object/from16 v16, v4

    :goto_1b
    move-object v2, v0

    :try_start_17
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 311
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Error storing raw event metadata. appId"

    .line 313
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 314
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    throw v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 157
    :catch_9
    move-exception v0

    move-object/from16 v16, v4

    :goto_1c
    move-object v2, v0

    .line 316
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    .line 318
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 319
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    :goto_1d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 351
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 352
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 357
    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 374
    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 373
    throw v2

    .line 374
    :cond_41
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method
