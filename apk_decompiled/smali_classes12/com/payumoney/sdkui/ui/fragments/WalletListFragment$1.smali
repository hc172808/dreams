.class Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    .line 105
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 109
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/utils/Utils;->showKeyBoard(Landroid/content/Context;)V

    .line 110
    return-void
.end method
