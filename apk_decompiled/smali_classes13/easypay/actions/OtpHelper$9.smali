.class Leasypay/actions/OtpHelper$9;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/OtpHelper;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/OtpHelper;

    .line 546
    iput-object p1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 551
    :try_start_0
    iget-object v0, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$200(Leasypay/actions/OtpHelper;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "receivedOtp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "receivedOtp":Ljava/lang/String;
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Leasypay/actions/OtpHelper;->access$902(Leasypay/actions/OtpHelper;Z)Z

    .line 553
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$1000(Leasypay/actions/OtpHelper;)Leasypay/actions/GAEventManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$1000(Leasypay/actions/OtpHelper;)Leasypay/actions/GAEventManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Leasypay/actions/GAEventManager;->onReadOTPByPaytmAssist(Z)V

    .line 558
    :cond_0
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$800(Leasypay/actions/OtpHelper;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "OTP detected, press submit to continue"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$800(Leasypay/actions/OtpHelper;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 563
    iget-object v1, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 567
    :cond_1
    const-string v1, "javascript:"

    .line 568
    .local v1, "javascript":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFillOtp(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "triggerAutoFill":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 570
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 572
    iget-object v3, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v3}, Leasypay/actions/OtpHelper;->access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;

    move-result-object v3

    new-instance v4, Leasypay/actions/OtpHelper$9$1;

    invoke-direct {v4, p0}, Leasypay/actions/OtpHelper$9$1;-><init>(Leasypay/actions/OtpHelper$9;)V

    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v3, p0, Leasypay/actions/OtpHelper$9;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v3}, Leasypay/actions/OtpHelper;->access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v0    # "receivedOtp":Ljava/lang/String;
    .end local v1    # "javascript":Ljava/lang/String;
    .end local v2    # "triggerAutoFill":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 584
    :catch_1
    move-exception v0

    .line 587
    :goto_0
    nop

    .line 591
    :goto_1
    return-void
.end method
