.class public final Lcom/google/android/gms/internal/measurement/zzgd;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzgd;",
        "Lcom/google/android/gms/internal/measurement/zzgc;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzgd;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzkj;

.field private zze:Lcom/google/android/gms/internal/measurement/zzkj;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzfm;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzgf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbC()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbC()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzgc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    return-object v0
.end method

.method public static zzm()Lcom/google/android/gms/internal/measurement/zzgd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/measurement/zzgd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzgd;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbD(Lcom/google/android/gms/internal/measurement/zzkj;)Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzgd;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbC()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzgd;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbD(Lcom/google/android/gms/internal/measurement/zzkj;)Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzgd;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbC()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/measurement/zzgd;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgd;->zzw()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/measurement/zzgd;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgd;->zzw()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/measurement/zzgd;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgd;->zzx()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/measurement/zzgd;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgd;->zzx()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final zzw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    return-void
.end method

.method private final zzx()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkj;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zze:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkj;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->size()I

    move-result v0

    return v0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/measurement/zzfm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfm;

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->size()I

    move-result v0

    return v0
.end method

.method public final zzj(I)Lcom/google/android/gms/internal/measurement/zzgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgf;

    return-object p1
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgc;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgd;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zza"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfm;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzgf;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgd;->zzh:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 2
    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbz(Lcom/google/android/gms/internal/measurement/zzli;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    nop

    .line 1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
