.class final Lcom/google/android/gms/internal/measurement/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzlt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzli;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmh<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjq<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzmh;Lcom/google/android/gms/internal/measurement/zzjq;Lcom/google/android/gms/internal/measurement/zzli;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzmh<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzjq<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzli;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzjq;->zza(Lcom/google/android/gms/internal/measurement/zzli;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzli;

    return-void
.end method

.method static zzf(Lcom/google/android/gms/internal/measurement/zzmh;Lcom/google/android/gms/internal/measurement/zzjq;Lcom/google/android/gms/internal/measurement/zzli;)Lcom/google/android/gms/internal/measurement/zzlm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzmh<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzjq<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzli;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzlm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlm;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlm;-><init>(Lcom/google/android/gms/internal/measurement/zzmh;Lcom/google/android/gms/internal/measurement/zzjq;Lcom/google/android/gms/internal/measurement/zzli;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzli;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzli;->zzbH()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzaD()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzmh;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Z

    if-nez v0, :cond_1

    .line 6
    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Z

    if-nez v1, :cond_0

    .line 3
    return v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlv;->zzF(Lcom/google/android/gms/internal/measurement/zzmh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlv;->zzE(Lcom/google/android/gms/internal/measurement/zzjq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzg(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Z

    if-nez v1, :cond_0

    .line 3
    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzir;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzir;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzc:Lcom/google/android/gms/internal/measurement/zzmi;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzka;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    .line 2
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzjl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Lcom/google/android/gms/internal/measurement/zzjq;

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzju;

    .line 2
    const/4 p1, 0x0

    throw p1
.end method
