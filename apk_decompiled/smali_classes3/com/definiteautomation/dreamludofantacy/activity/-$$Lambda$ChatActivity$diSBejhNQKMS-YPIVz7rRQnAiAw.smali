.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

.field public final synthetic f$1:Lcom/google/firebase/storage/StorageReference;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$1:Lcom/google/firebase/storage/StorageReference;

    iput-object p3, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$1:Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->lambda$onActivityResult$5$ChatActivity(Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
