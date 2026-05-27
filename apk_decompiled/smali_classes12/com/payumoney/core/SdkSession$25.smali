.class Lcom/payumoney/core/SdkSession$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->verifyPaymentDetails(Ljava/lang/String;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

.field final synthetic b:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1575
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$25;->b:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$25;->a:Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1588
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$25;->a:Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/payumoney/core/listener/OnVerifyPaymentResponse;->onVerifyStatusResponseReceived(Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1595
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$25;->a:Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

    invoke-interface {v0, p1}, Lcom/payumoney/core/listener/OnVerifyPaymentResponse;->onVerifyStatusResponseReceived(Ljava/lang/String;)V

    .line 1584
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 1578
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$25;->a:Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payumoney/core/listener/OnVerifyPaymentResponse;->onVerifyStatusResponseReceived(Ljava/lang/String;)V

    .line 1579
    return-void
.end method
