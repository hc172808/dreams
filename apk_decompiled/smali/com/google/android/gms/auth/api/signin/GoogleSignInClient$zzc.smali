.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzbx:I

.field public static final enum zzby:I

.field public static final enum zzbz:I

.field public static final enum zzca:I

.field private static final synthetic zzcb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzbx:I

    .line 3
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzby:I

    .line 4
    const/4 v2, 0x3

    sput v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzbz:I

    .line 5
    const/4 v3, 0x4

    sput v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzca:I

    .line 6
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v1, v4, v0

    aput v2, v4, v1

    aput v3, v4, v2

    sput-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzcb:[I

    return-void
.end method

.method public static zzm()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzc;->zzcb:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
