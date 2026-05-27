.class Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;
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

    .line 173
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

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

    .line 201
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

    .line 176
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    const-string v1, "online"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$202(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    const-string v2, "device_token"

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$302(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 183
    .local v2, "lastTime":J
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/definiteautomation/dreamludofantacy/utils/GetTimeAgo;->getTimeAgo(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "lastSeenTime":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v5, "just now"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .end local v0    # "lastSeenTime":Ljava/lang/String;
    .end local v2    # "lastTime":J
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
