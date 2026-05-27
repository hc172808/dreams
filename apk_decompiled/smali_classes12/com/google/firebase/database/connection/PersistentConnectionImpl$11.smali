.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 1477
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2802(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 1481
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$11;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    .line 1486
    :goto_0
    return-void
.end method
