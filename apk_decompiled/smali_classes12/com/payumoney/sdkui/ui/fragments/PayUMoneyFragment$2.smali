.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 498
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 503
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 504
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->d(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 505
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->e(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->f(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->expand()V

    .line 511
    :cond_1
    :goto_0
    return-void
.end method
