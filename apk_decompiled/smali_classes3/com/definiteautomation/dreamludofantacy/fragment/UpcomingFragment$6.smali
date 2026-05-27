.class Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;
.super Ljava/lang/Object;
.source "UpcomingFragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getUserToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$name"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->val$name:Ljava/lang/String;

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

    .line 402
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    const-string v1, "device_token"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$1202(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$1300(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$1302(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;I)I

    .line 395
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$6;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$1400(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method
