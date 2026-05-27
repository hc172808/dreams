.class Lcom/payumoney/core/SdkWebViewActivityNew$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkWebViewActivityNew$1;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkWebViewActivityNew$1;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkWebViewActivityNew$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/core/SdkWebViewActivityNew$1;

    .line 83
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;->a:Lcom/payumoney/core/SdkWebViewActivityNew$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;->a:Lcom/payumoney/core/SdkWebViewActivityNew$1;

    iget-object v0, v0, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;->a:Lcom/payumoney/core/SdkWebViewActivityNew$1;

    iget-object v1, v1, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-static {v1}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Lcom/payumoney/core/SdkWebViewActivityNew;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkWebViewActivityNew$1$1;->a:Lcom/payumoney/core/SdkWebViewActivityNew$1;

    iget-object v2, v2, Lcom/payumoney/core/SdkWebViewActivityNew$1;->b:Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/core/SdkSession;->verifyPaymentDetails(Ljava/lang/String;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V

    .line 87
    return-void
.end method
