.class final synthetic Lcom/google/android/gms/internal/auth-api-phone/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zzb:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzx;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/auth-api-phone/zzu;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzu;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth-api-phone/zzx;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzf;)V

    .line 4
    return-void
.end method
