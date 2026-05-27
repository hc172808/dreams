.class Lcom/payumoney/core/SdkWebViewActivityNew$2;
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
.field final synthetic a:Lcom/payumoney/core/listener/ReviewOrderImpl;

.field final synthetic b:Lcom/payumoney/core/SdkWebViewActivityNew;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkWebViewActivityNew;Lcom/payumoney/core/listener/ReviewOrderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkWebViewActivityNew;

    .line 248
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$2;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    iput-object p2, p0, Lcom/payumoney/core/SdkWebViewActivityNew$2;->a:Lcom/payumoney/core/listener/ReviewOrderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$2;->a:Lcom/payumoney/core/listener/ReviewOrderImpl;

    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$2;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-interface {v0, v1}, Lcom/payumoney/core/listener/ReviewOrderImpl;->getReviewOrderScreenIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$2;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v1, v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method
