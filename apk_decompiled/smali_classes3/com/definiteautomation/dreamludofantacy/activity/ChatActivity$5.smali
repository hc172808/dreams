.class Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->loadMessages()V
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

    .line 359
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

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

    .line 396
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 4
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

    .line 363
    const-class v0, Lcom/definiteautomation/dreamludofantacy/model/Messages;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/Messages;

    .line 365
    .local v0, "message":Lcom/definiteautomation/dreamludofantacy/model/Messages;
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$908(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I

    .line 366
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$900(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "messageKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1102(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$802(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .end local v1    # "messageKey":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 374
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 375
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$1300(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 376
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

    .line 381
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

    .line 391
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

    .line 386
    return-void
.end method
