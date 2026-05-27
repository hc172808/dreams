.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    .line 1485
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    iput p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1488
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->a:I

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    iget-object v2, v2, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->D(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->onSavedCardClick(II)V

    .line 1489
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$12$1;->a:I

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;I)I

    .line 1490
    return-void
.end method
