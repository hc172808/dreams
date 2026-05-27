.class final Lcom/google/firebase/dynamiclinks/internal/zzk;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/firebase/dynamiclinks/internal/zze;",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3391

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzk;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzk;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/zze;

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzj;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/zzk;->zzb:Lcom/google/firebase/inject/Provider;

    .line 2
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/dynamiclinks/internal/zzj;-><init>(Lcom/google/firebase/inject/Provider;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzk;->zza:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/zze;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/zzo;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/zzo;->zzd(Lcom/google/firebase/dynamiclinks/internal/zzn;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method
