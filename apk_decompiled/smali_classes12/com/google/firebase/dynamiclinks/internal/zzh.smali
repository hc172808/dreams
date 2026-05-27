.class final Lcom/google/firebase/dynamiclinks/internal/zzh;
.super Lcom/google/firebase/dynamiclinks/internal/zzg;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/zzq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
