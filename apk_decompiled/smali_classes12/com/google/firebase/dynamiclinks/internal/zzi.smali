.class final Lcom/google/firebase/dynamiclinks/internal/zzi;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/firebase/dynamiclinks/internal/zze;",
        "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3392

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/zze;

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzh;

    .line 2
    invoke-direct {v0, p2}, Lcom/google/firebase/dynamiclinks/internal/zzh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zza:Landroid/os/Bundle;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/zze;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/zzo;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/zzo;->zzc(Lcom/google/firebase/dynamiclinks/internal/zzn;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method
