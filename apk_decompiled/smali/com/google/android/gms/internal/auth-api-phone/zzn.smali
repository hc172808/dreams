.class final synthetic Lcom/google/android/gms/internal/auth-api-phone/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzn;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzn;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzl;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzx;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/zzr;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzr;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth-api-phone/zzx;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zza(Lcom/google/android/gms/internal/auth-api-phone/zze;)V

    .line 4
    return-void
.end method
