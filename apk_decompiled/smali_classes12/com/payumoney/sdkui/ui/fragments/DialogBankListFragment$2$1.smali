.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;

    .line 136
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2$1;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->dismiss()V

    .line 140
    return-void
.end method
