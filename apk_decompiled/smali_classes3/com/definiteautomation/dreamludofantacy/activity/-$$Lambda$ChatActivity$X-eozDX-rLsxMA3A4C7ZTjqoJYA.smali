.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->lambda$onActivityResult$4$ChatActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
