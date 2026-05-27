.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 294
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "clevertap"

    const-string v2, "SDK"

    const-string v3, "EventSource"

    const-string v4, "Checkout"

    const-string v5, "page"

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ShowPaymentDetailsClicked"

    invoke-static {v2, v3, v0, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenieneceFee()V

    .line 306
    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "HidePaymentDetailsClicked"

    invoke-static {v2, v3, v0, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenieneceFee()V

    .line 316
    :goto_0
    return-void
.end method
