.class Leasypay/actions/PasswordHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/PasswordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/PasswordHelper;


# direct methods
.method constructor <init>(Leasypay/actions/PasswordHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/PasswordHelper;

    .line 34
    iput-object p1, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "eventName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "togglePassword"

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "submitPassword"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "activatePasswordHelper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v4, "id"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 54
    :pswitch_0
    iget-object v2, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v2}, Leasypay/actions/PasswordHelper;->access$200(Leasypay/actions/PasswordHelper;)V

    goto :goto_2

    .line 50
    :pswitch_1
    iget-object v2, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-virtual {v2}, Leasypay/actions/PasswordHelper;->togglePassword()V

    .line 51
    iget-object v2, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v2}, Leasypay/actions/PasswordHelper;->access$100(Leasypay/actions/PasswordHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    iget-object v5, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v5}, Leasypay/actions/PasswordHelper;->access$000(Leasypay/actions/PasswordHelper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    goto :goto_2

    .line 46
    :pswitch_2
    iget-object v2, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    const-string v3, "data0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leasypay/actions/PasswordHelper;->activate(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v2}, Leasypay/actions/PasswordHelper;->access$100(Leasypay/actions/PasswordHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    iget-object v3, p0, Leasypay/actions/PasswordHelper$1;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v3}, Leasypay/actions/PasswordHelper;->access$000(Leasypay/actions/PasswordHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "activated"

    invoke-virtual {v2, v4, v3}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    nop

    .line 57
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x718f6e04 -> :sswitch_2
        -0x61d3b9f1 -> :sswitch_1
        0x7d6ac6d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
