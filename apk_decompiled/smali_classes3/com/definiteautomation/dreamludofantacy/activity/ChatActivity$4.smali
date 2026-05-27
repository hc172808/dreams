.class Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->loadMoreMessages()V
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

    .line 305
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 349
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 5
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSnapshot",
            "s"
        }
    .end annotation

    .line 310
    const-class v0, Lcom/definiteautomation/dreamludofantacy/model/Messages;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/Messages;

    .line 311
    .local v0, "message":Lcom/definiteautomation/dreamludofantacy/model/Messages;
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "messageKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$800(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$908(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$802(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$900(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 321
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1102(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | Prev Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$800(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | Message Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TOTALKEYS"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 327
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1300(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 328
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 329
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSnapshot",
            "s"
        }
    .end annotation

    .line 334
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSnapshot",
            "s"
        }
    .end annotation

    .line 344
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 339
    return-void
.end method
