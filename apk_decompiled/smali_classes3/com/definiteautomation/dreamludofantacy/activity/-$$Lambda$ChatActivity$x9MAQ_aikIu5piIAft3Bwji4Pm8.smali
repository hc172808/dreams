.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->lambda$sendMessage$6$ChatActivity(Ljava/lang/String;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    return-void
.end method
