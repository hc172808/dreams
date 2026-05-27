.class Leasypay/actions/NetBankingHelper$4;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper;->confirInjector()V
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

    .line 205
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$4;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "jsBuilderChecker":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "(function() { try {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Leasypay/actions/NetBankingHelper$4;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v1}, Leasypay/actions/NetBankingHelper;->access$000(Leasypay/actions/NetBankingHelper;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "confirmJs"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "}catch(e){Android.showLog(\'net banking confirm page error\');}}());"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Leasypay/actions/NetBankingHelper$4;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v1}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leasypay/actions/NetBankingHelper$4$1;

    invoke-direct {v3, p0}, Leasypay/actions/NetBankingHelper$4$1;-><init>(Leasypay/actions/NetBankingHelper$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Leasypay/actions/NetBankingHelper$4;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v1}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void
.end method
