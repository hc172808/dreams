.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    .line 116
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 120
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/utils/Utils;->showKeyBoard(Landroid/content/Context;)V

    .line 121
    return-void
.end method
