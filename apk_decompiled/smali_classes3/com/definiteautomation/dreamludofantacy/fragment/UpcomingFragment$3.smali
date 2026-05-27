.class Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;
.super Ljava/lang/Object;
.source "UpcomingFragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->joinMatch(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDataChange$0(Ljava/lang/Void;)V
    .locals 0
    .param p0, "aVoid"    # Ljava/lang/Void;

    .line 281
    return-void
.end method


# virtual methods
.method public synthetic lambda$onDataChange$1$UpcomingFragment$3(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "device_token":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v2, "Users"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 281
    .local v1, "mUserDatabase":Lcom/google/firebase/database/DatabaseReference;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_USER_ID"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "device_token"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$3$D1Ql-LTC6GR-gkVGGUI6KoMHXR0;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$3$D1Ql-LTC6GR-gkVGGUI6KoMHXR0;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 283
    .end local v0    # "device_token":Ljava/lang/String;
    .end local v1    # "mUserDatabase":Lcom/google/firebase/database/DatabaseReference;
    :cond_1
    return-void
.end method

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

    .line 290
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_USER_ID"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;->this$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;->access$1000(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$3$VkwhikQiA54WaGb7tNPE_QA1pak;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$3$VkwhikQiA54WaGb7tNPE_QA1pak;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 285
    :goto_0
    return-void
.end method
