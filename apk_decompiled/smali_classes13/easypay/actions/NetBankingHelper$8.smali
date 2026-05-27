.class Leasypay/actions/NetBankingHelper$8;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper;->activate(Ljava/lang/String;)V
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

    .line 389
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 394
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$100(Leasypay/actions/NetBankingHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->layout_netbanking:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Leasypay/actions/EasypayBrowserFragment;->toggleView(ILjava/lang/Boolean;)V

    .line 396
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Leasypay/actions/GAEventManager;->isNetBankingInvoked(Z)V

    .line 397
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v1}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->NbUrl(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$800(Leasypay/actions/NetBankingHelper;)V

    .line 400
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "userNameInject"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Leasypay/actions/NetBankingHelper;->access$900(Leasypay/actions/NetBankingHelper;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$1000(Leasypay/actions/NetBankingHelper;)V

    .line 402
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "userInputjs"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Leasypay/actions/NetBankingHelper$8;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v2}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "passwordInputJs"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Leasypay/actions/NetBankingHelper;->access$400(Leasypay/actions/NetBankingHelper;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
