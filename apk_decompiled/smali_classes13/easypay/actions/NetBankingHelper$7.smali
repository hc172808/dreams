.class Leasypay/actions/NetBankingHelper$7;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper;->nextPageChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NetBankingHelper;

.field final synthetic val$length:I

.field final synthetic val$oldUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Leasypay/actions/NetBankingHelper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NetBankingHelper;

    .line 323
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    iput p2, p0, Leasypay/actions/NetBankingHelper$7;->val$length:I

    iput-object p3, p0, Leasypay/actions/NetBankingHelper$7;->val$oldUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 326
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leasypay/actions/NetBankingHelper$7;->val$length:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "xUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v1, "jsBuilderChecker":Ljava/lang/StringBuilder;
    const-string v3, "javascript:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v3, "(function() { try {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "selectorType"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    const-string v3, "var x=document.getElementsByName(\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :cond_0
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const-string v3, "var x=document.getElementById(\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_1
    :goto_0
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "nextelement"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 337
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 339
    :cond_2
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "selector"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    const-string v3, "\');"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v3, "if("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v3, "!=null)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v3, "{Android.NbWatcher(1,2)}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v3, "else{Android.NbWatcher(1,4)}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v3, "}catch(e){Android.showLog(\'not found -Net Banking js Injection\');}}());"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    .line 351
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Leasypay/actions/NetBankingHelper$7$1;

    invoke-direct {v5, p0}, Leasypay/actions/NetBankingHelper$7$1;-><init>(Leasypay/actions/NetBankingHelper$7;)V

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 358
    :cond_3
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 360
    :goto_2
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->val$oldUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 362
    iget-object v3, p0, Leasypay/actions/NetBankingHelper$7;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v3}, Leasypay/actions/NetBankingHelper;->access$100(Leasypay/actions/NetBankingHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v3

    sget v4, Lpaytm/assist/easypay/easypay/R$id;->layout_netbanking:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Leasypay/actions/EasypayBrowserFragment;->toggleView(ILjava/lang/Boolean;)V

    .line 364
    :cond_4
    return-void
.end method
