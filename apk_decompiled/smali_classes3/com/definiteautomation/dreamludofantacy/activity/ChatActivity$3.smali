.class Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDataChange$0(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 2
    .param p0, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .param p1, "databaseReference"    # Lcom/google/firebase/database/DatabaseReference;

    .line 218
    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "databaseError"
        }
    .end annotation

    .line 229
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->hasChild(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "chatAddMap":Ljava/util/Map;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "seen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v1, "chatUserMap":Ljava/util/Map;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chat/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$3$l8vxfrJpzvBt1VROT3La0kNrNEY;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$3$l8vxfrJpzvBt1VROT3La0kNrNEY;

    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 224
    .end local v0    # "chatAddMap":Ljava/util/Map;
    .end local v1    # "chatUserMap":Ljava/util/Map;
    :cond_0
    return-void
.end method
