.class Leasypay/actions/RadioHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/RadioHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/RadioHelper;


# direct methods
.method constructor <init>(Leasypay/actions/RadioHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/RadioHelper;

    .line 34
    iput-object p1, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "eventName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "activateRadioHelper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "selectRadioOption"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "submit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 52
    :pswitch_0
    iget-object v2, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    invoke-static {v2}, Leasypay/actions/RadioHelper;->access$000(Leasypay/actions/RadioHelper;)V

    goto :goto_2

    .line 47
    :pswitch_1
    iget-object v2, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    invoke-virtual {v2}, Leasypay/actions/RadioHelper;->activate()V

    .line 48
    iget-object v2, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    iget-object v2, v2, Leasypay/actions/RadioHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    iget-object v3, v3, Leasypay/actions/RadioHelper;->action:Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "activated"

    invoke-virtual {v2, v4, v3}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    goto :goto_2

    .line 44
    :pswitch_2
    iget-object v2, p0, Leasypay/actions/RadioHelper$1;->this$0:Leasypay/actions/RadioHelper;

    const-string v3, "data0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leasypay/actions/RadioHelper;->selectOption(Ljava/lang/String;)V

    .line 45
    nop

    .line 55
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3523bfe8 -> :sswitch_2
        0x3d461db4 -> :sswitch_1
        0x58063496 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
