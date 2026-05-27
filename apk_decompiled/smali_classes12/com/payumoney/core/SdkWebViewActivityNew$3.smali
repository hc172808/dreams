.class Lcom/payumoney/core/SdkWebViewActivityNew$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkWebViewActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkWebViewActivityNew;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkWebViewActivityNew;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkWebViewActivityNew;

    .line 259
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$3;->a:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$3;->a:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->b(Lcom/payumoney/core/SdkWebViewActivityNew;)Lcom/payu/custombrowser/Bank;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$3;->a:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->b(Lcom/payumoney/core/SdkWebViewActivityNew;)Lcom/payu/custombrowser/Bank;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->showBackButtonDialog()V

    .line 265
    :cond_0
    return-void
.end method
