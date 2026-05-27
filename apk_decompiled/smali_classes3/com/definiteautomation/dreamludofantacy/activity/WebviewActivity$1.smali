.class Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;
.super Landroid/os/Handler;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V

    .line 47
    :cond_0
    return-void
.end method
