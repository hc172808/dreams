.class public Lcom/google/android/gms/internal/measurement/zzjz;
.super Lcom/google/android/gms/internal/measurement/zzin;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzin<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzkd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzin;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzc:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/measurement/zzkd;Lcom/google/android/gms/internal/measurement/zzkd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlt;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlt;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    return-object v0
.end method

.method public final zzaA()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaz()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v4

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlt;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzj(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    if-eq v2, v4, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 3
    :cond_2
    move-object v1, v0

    .line 5
    :goto_0
    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    nop

    .line 4
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    .line 7
    return-object v0

    .line 4
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmg;-><init>(Lcom/google/android/gms/internal/measurement/zzli;)V

    .line 7
    throw v1
.end method

.method public final zzaB(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkd;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-object p0
.end method

.method public final zzaC([BIILcom/google/android/gms/internal/measurement/zzjp;)Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzjp;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkn;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzir;-><init>(Lcom/google/android/gms/internal/measurement/zzjp;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzlt;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzir;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzkn; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 2
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 4
    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :catch_1
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkn;->zza()Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    throw p1

    .line 4
    :catch_2
    move-exception p1

    .line 6
    throw p1
.end method

.method public bridge synthetic zzaD()Lcom/google/android/gms/internal/measurement/zzli;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaz()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaq()Lcom/google/android/gms/internal/measurement/zzin;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzar([BII)Lcom/google/android/gms/internal/measurement/zzin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkn;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjp;->zza()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaC([BIILcom/google/android/gms/internal/measurement/zzjp;)Lcom/google/android/gms/internal/measurement/zzjz;

    return-object p0
.end method

.method public final bridge synthetic zzas([BIILcom/google/android/gms/internal/measurement/zzjp;)Lcom/google/android/gms/internal/measurement/zzin;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkn;
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaC([BIILcom/google/android/gms/internal/measurement/zzjp;)Lcom/google/android/gms/internal/measurement/zzjz;

    return-object p0
.end method

.method protected final bridge synthetic zzat(Lcom/google/android/gms/internal/measurement/zzio;)Lcom/google/android/gms/internal/measurement/zzin;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaB(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzjz;

    return-object p0
.end method

.method protected zzax()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkd;Lcom/google/android/gms/internal/measurement/zzkd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    return-void
.end method

.method public final zzay()Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzc:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjz;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaz()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaB(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzjz;

    return-object v0
.end method

.method public zzaz()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlt;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzi(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final bridge synthetic zzbL()Lcom/google/android/gms/internal/measurement/zzli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzc:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method
