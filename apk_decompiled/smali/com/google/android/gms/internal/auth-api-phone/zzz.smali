.class final synthetic Lcom/google/android/gms/internal/auth-api-phone/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth-api-phone/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzz;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzaa;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzz;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzaa;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzx;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    nop

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth-api-phone/zzx;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/zzab;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzab;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zza(Lcom/google/android/gms/internal/auth-api-phone/zzj;)V

    .line 5
    return-void
.end method
