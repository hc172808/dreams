.class public final Lcom/google/android/gms/internal/measurement/zzpd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpc;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 1
    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpd;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 3
    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpd;->zzb:Lcom/google/android/gms/internal/measurement/zzht;

    .line 4
    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpd;->zzc:Lcom/google/android/gms/internal/measurement/zzht;

    .line 5
    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpd;->zzd:Lcom/google/android/gms/internal/measurement/zzht;

    .line 6
    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpd;->zze:Lcom/google/android/gms/internal/measurement/zzht;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpd;->zzb:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpd;->zzd:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
