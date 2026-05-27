.class public final Lcom/google/android/gms/internal/cloudmessaging/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I

.field public static final enum zzb:I

.field private static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/cloudmessaging/zzf;->zza:I

    .line 2
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/cloudmessaging/zzf;->zzb:I

    .line 3
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 4
    sput-object v0, Lcom/google/android/gms/internal/cloudmessaging/zzf;->zzc:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
