.class Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;

    .line 125
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2$1;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2$1;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->dismiss()V

    .line 129
    return-void
.end method
