.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->initListener()V
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

    .line 1468
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$11;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1471
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    .line 1472
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$11;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Z)V

    .line 1473
    return-void
.end method
