.class Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->onResume()V
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

    .line 210
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 214
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$4;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->dismiss()V

    .line 223
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
