.class Leasypay/actions/NetBankingHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NetBankingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/NetBankingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NetBankingHelper;


# direct methods
.method constructor <init>(Leasypay/actions/NetBankingHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NetBankingHelper;

    .line 70
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 76
    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "eventName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 79
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "submitPassword"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "userIdInputHelper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "nbConfirmSubmit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v3, "confirmhelper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "activateNetBankingHelper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "nbLoginSubmit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "activatePasswordHelper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "activated"

    const-string v4, "data0"

    const-string v5, "id"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 106
    :pswitch_0
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$600(Leasypay/actions/NetBankingHelper;)V

    goto/16 :goto_1

    .line 103
    :pswitch_1
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$500(Leasypay/actions/NetBankingHelper;)V

    .line 104
    goto :goto_1

    .line 99
    :pswitch_2
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$300(Leasypay/actions/NetBankingHelper;)Ljava/lang/String;

    .line 100
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "submitLogin"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3, v4}, Leasypay/actions/NetBankingHelper;->access$400(Leasypay/actions/NetBankingHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto :goto_1

    .line 96
    :pswitch_3
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$200(Leasypay/actions/NetBankingHelper;)V

    .line 97
    goto :goto_1

    .line 93
    :pswitch_4
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$100(Leasypay/actions/NetBankingHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    iget-object v3, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "negtbanking userid"

    invoke-virtual {v2, v4, v3}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_1

    .line 87
    :pswitch_5
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Leasypay/actions/NetBankingHelper;->activate(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$100(Leasypay/actions/NetBankingHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    iget-object v4, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v4}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    goto :goto_1

    .line 81
    :pswitch_6
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Leasypay/actions/NetBankingHelper;->activate(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$100(Leasypay/actions/NetBankingHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    iget-object v4, p0, Leasypay/actions/NetBankingHelper$1;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v4}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x718f6e04 -> :sswitch_6
        0x201dea8d -> :sswitch_5
        0x24057fea -> :sswitch_4
        0x31d2e66e -> :sswitch_3
        0x51a809a4 -> :sswitch_2
        0x7cd0c5f2 -> :sswitch_1
        0x7d6ac6d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
