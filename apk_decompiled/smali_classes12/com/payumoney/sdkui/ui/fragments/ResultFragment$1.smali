.class Lcom/payumoney/sdkui/ui/fragments/ResultFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/ResultFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/ResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/ResultFragment;

    .line 99
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ResultFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 103
    return-void
.end method
