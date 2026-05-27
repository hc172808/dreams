.class Lcom/payumoney/core/presenter/MakePayment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/presenter/MakePayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/presenter/MakePayment;


# direct methods
.method constructor <init>(Lcom/payumoney/core/presenter/MakePayment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/presenter/MakePayment;

    .line 52
    iput-object p1, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v0, v0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v0, v0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v0, v0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    invoke-static {v1}, Lcom/payumoney/core/presenter/MakePayment;->a(Lcom/payumoney/core/presenter/MakePayment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    const-string v0, "eventname"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "payuresponse"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "merchantresponse"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "TAG"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_0
    const-string v4, "onPaymentSuccess"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v4, v4, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_1
    const-string v4, "onPaymentFailure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v4, v4, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    :goto_1
    const-string v2, "onPaymentCancelled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment$1;->a:Lcom/payumoney/core/presenter/MakePayment;

    iget-object v0, v0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v0, v1, v3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onCancelled(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    return-void
.end method
