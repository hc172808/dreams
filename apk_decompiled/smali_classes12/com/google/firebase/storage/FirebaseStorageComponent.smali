.class Lcom/google/firebase/storage/FirebaseStorageComponent;
.super Ljava/lang/Object;
.source "FirebaseStorageComponent.java"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final appCheckProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final authProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/storage/FirebaseStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "authProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    .local p3, "appCheckProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->app:Lcom/google/firebase/FirebaseApp;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->authProvider:Lcom/google/firebase/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->appCheckProvider:Lcom/google/firebase/inject/Provider;

    .line 42
    return-void
.end method


# virtual methods
.method declared-synchronized clearInstancesForTesting()V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lcom/google/firebase/storage/FirebaseStorageComponent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/storage/FirebaseStorage;

    .line 48
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Lcom/google/firebase/storage/FirebaseStorage;

    iget-object v2, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->app:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->authProvider:Lcom/google/firebase/inject/Provider;

    iget-object v4, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->appCheckProvider:Lcom/google/firebase/inject/Provider;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/firebase/storage/FirebaseStorage;-><init>(Ljava/lang/String;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V

    move-object v0, v1

    .line 50
    iget-object v1, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local p0    # "this":Lcom/google/firebase/storage/FirebaseStorageComponent;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 46
    .end local v0    # "storage":Lcom/google/firebase/storage/FirebaseStorage;
    .end local p1    # "bucketName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
