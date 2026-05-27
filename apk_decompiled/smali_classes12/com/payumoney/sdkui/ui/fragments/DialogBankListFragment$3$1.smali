.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;

    .line 161
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 165
    return-void
.end method
