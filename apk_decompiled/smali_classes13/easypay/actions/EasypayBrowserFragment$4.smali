.class Leasypay/actions/EasypayBrowserFragment$4;
.super Ljava/lang/Object;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->minimizeAssistView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 551
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 554
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leasypay/actions/EasypayBrowserFragment;->isHideAssistClicked:Z

    .line 555
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$700(Leasypay/actions/EasypayBrowserFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$700(Leasypay/actions/EasypayBrowserFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 558
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$500(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$600(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$4;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isAssistMinimized(Z)V

    .line 563
    :cond_1
    return-void
.end method
