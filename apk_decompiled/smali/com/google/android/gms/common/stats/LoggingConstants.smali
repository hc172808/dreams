.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.5.0"


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zza:Landroid/content/ComponentName;

.field private static zzb:I

.field private static zzc:I

.field private static zzd:I

.field private static zze:I

.field private static zzf:I

.field private static zzg:I

.field private static zzh:I

.field private static zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zza:Landroid/content/ComponentName;

    .line 3
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzb:I

    .line 4
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzc:I

    .line 5
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzd:I

    .line 6
    const/4 v1, 0x4

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zze:I

    .line 7
    const/16 v1, 0x8

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzf:I

    .line 8
    const/16 v1, 0x10

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzg:I

    .line 9
    const/16 v1, 0x20

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzh:I

    .line 10
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzi:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
