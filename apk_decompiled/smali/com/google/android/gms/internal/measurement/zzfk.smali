.class public final Lcom/google/android/gms/internal/measurement/zzfk;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzfk;",
        "Lcom/google/android/gms/internal/measurement/zzfj;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzfk;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzgd;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzgd;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfk;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfk;->zzi:Lcom/google/android/gms/internal/measurement/zzfk;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/measurement/zzfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfk;->zzi:Lcom/google/android/gms/internal/measurement/zzfk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/measurement/zzfk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfk;->zzi:Lcom/google/android/gms/internal/measurement/zzfk;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzfk;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zze:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzfk;Lcom/google/android/gms/internal/measurement/zzgd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzf:Lcom/google/android/gms/internal/measurement/zzgd;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzfk;Lcom/google/android/gms/internal/measurement/zzgd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzg:Lcom/google/android/gms/internal/measurement/zzgd;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzfk;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zze:I

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzgd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzf:Lcom/google/android/gms/internal/measurement/zzgd;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzm()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzgd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzg:Lcom/google/android/gms/internal/measurement/zzgd;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzm()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfk;->zzh:Z

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfk;->zzi:Lcom/google/android/gms/internal/measurement/zzfk;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfk;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfk;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x5

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

    const-string/jumbo p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzh"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfk;->zzi:Lcom/google/android/gms/internal/measurement/zzfk;

    .line 2
    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzbz(Lcom/google/android/gms/internal/measurement/zzli;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
