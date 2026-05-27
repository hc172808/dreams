.class Leasypay/actions/ProceedHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ProceedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/ProceedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/ProceedHelper;


# direct methods
.method constructor <init>(Leasypay/actions/ProceedHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/ProceedHelper;

    .line 22
    iput-object p1, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "eventName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "activateProceedHelper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "proceedProceedHelper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "id"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 36
    :pswitch_0
    iget-object v2, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    invoke-virtual {v2}, Leasypay/actions/ProceedHelper;->proceed()V

    .line 37
    iget-object v2, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    iget-object v2, v2, Leasypay/actions/ProceedHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v4, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    iget-object v4, v4, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "proceeded"

    invoke-virtual {v2, v4, v3}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :pswitch_1
    iget-object v2, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    invoke-virtual {v2}, Leasypay/actions/ProceedHelper;->activate()V

    .line 33
    iget-object v2, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    iget-object v2, v2, Leasypay/actions/ProceedHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v4, p0, Leasypay/actions/ProceedHelper$1;->this$0:Leasypay/actions/ProceedHelper;

    iget-object v4, v4, Leasypay/actions/ProceedHelper;->action:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "activated"

    invoke-virtual {v2, v4, v3}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    nop

    .line 41
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x569e0412 -> :sswitch_1
        0x48159bc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
