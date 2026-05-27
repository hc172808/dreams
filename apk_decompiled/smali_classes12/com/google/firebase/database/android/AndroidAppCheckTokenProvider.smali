.class public Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;
.super Ljava/lang/Object;
.source "AndroidAppCheckTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/database/core/TokenProvider;


# instance fields
.field private final deferredAppCheckProvider:Lcom/google/firebase/inject/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final internalAppCheck:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "deferredAppCheckProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->deferredAppCheckProvider:Lcom/google/firebase/inject/Deferred;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->internalAppCheck:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    new-instance v0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$f0GiRSsCYRBKXadOYOLSE4tgMLI;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$f0GiRSsCYRBKXadOYOLSE4tgMLI;-><init>(Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 37
    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 1
    .param p0, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p1, "tokenResult"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 64
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 1
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p2, "tokenResult"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 63
    new-instance v0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$d5ouCwY_MlmKFbkPIcW9iYuM3gk;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$d5ouCwY_MlmKFbkPIcW9iYuM3gk;-><init>(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$5(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p2, "provider"    # Lcom/google/firebase/inject/Provider;

    .line 60
    invoke-interface {p2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    new-instance v1, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    .line 61
    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;->addAppCheckTokenListener(Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;)V

    .line 60
    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;
    .param p1, "result"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$2(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->deferredAppCheckProvider:Lcom/google/firebase/inject/Deferred;

    new-instance v1, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$JxBAiM_6GBJDGmLThDrcqfNbwXc;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$JxBAiM_6GBJDGmLThDrcqfNbwXc;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 65
    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .locals 4
    .param p1, "forceRefresh"    # Z
    .param p2, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->internalAppCheck:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 43
    .local v0, "appCheckProvider":Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 46
    .local v1, "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    new-instance v2, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$feO0JTUBrqZMA0BlrqqLudVZMtE;

    invoke-direct {v2, p2}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$feO0JTUBrqZMA0BlrqqLudVZMtE;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$iAOtN9aMfj74tiIrsOjLZoNPn4Y;

    invoke-direct {v3, p2}, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$iAOtN9aMfj74tiIrsOjLZoNPn4Y;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 48
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .end local v1    # "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$AndroidAppCheckTokenProvider(Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p1, "authProvider"    # Lcom/google/firebase/inject/Provider;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->internalAppCheck:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 0
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    .line 70
    return-void
.end method
