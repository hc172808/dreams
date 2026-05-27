.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$restoreStateAfterComplete:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 1057
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-boolean p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$restoreStateAfterComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1060
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1061
    .local v0, "status":Ljava/lang/String;
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v1, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1302(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 1063
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1402(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I

    .line 1064
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-boolean v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$restoreStateAfterComplete:Z

    invoke-static {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    goto/16 :goto_0

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1067
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1702(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z

    .line 1068
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnectionStatus(Z)V

    .line 1069
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1070
    .local v1, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 1073
    const-string v2, "invalid_token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1408(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    .line 1078
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/util/RetryHelper;->setMaxDelay()V

    .line 1081
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    const-string v3, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    .line 1091
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method
