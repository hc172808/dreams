.class Lcom/google/firebase/database/core/Repo$5;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/core/SyncTree$ListenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->deferredInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 198
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$5;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "tag"    # Lcom/google/firebase/database/core/Tag;
    .param p3, "hash"    # Lcom/google/firebase/database/connection/ListenHashProvider;
    .param p4, "onListenComplete"    # Lcom/google/firebase/database/core/SyncTree$CompletionListener;

    .line 205
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$5;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v3

    .line 209
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Tag;->getTagNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    new-instance v6, Lcom/google/firebase/database/core/Repo$5$1;

    invoke-direct {v6, p0, p4}, Lcom/google/firebase/database/core/Repo$5$1;-><init>(Lcom/google/firebase/database/core/Repo$5;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    .line 205
    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnection;->listen(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/ListenHashProvider;Ljava/lang/Long;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 218
    return-void
.end method

.method public stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "tag"    # Lcom/google/firebase/database/core/Tag;

    .line 222
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$5;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnection;->unlisten(Ljava/util/List;Ljava/util/Map;)V

    .line 224
    return-void
.end method
