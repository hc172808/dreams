.class Leasypay/actions/EasypayBrowserFragment$3;
.super Ljava/lang/Object;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->showAssistView()V
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

    .line 537
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$3;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 540
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$3;->this$0:Leasypay/actions/EasypayBrowserFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leasypay/actions/EasypayBrowserFragment;->isHideAssistClicked:Z

    .line 541
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$3;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$500(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$3;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$600(Leasypay/actions/EasypayBrowserFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$3;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->otpSubmitButtonState()V

    .line 544
    return-void
.end method
