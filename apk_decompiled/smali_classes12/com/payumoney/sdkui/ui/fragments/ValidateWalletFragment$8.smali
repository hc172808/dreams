.class Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    .line 485
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 489
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 492
    if-eqz v2, :cond_4

    .line 496
    nop

    .line 497
    nop

    .line 498
    const-string v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 499
    if-eqz v2, :cond_1

    .line 500
    array-length v3, v2

    new-array v4, v3, [Landroid/telephony/SmsMessage;

    .line 501
    const/4 v5, 0x0

    move-object v6, v0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 502
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_0

    .line 503
    const-string v7, "format"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    aget-object v8, v2, v5

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v4, v5

    .line 505
    goto :goto_1

    .line 506
    :cond_0
    aget-object v7, v2, v5

    check-cast v7, [B

    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v4, v5

    .line 508
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v5

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 509
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    .line 501
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 499
    :cond_1
    move-object v6, v0

    .line 515
    :cond_2
    const-string v1, "(|^)\\d{6}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 516
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 517
    const-string v2, ""

    .line 518
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 521
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 524
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    .line 525
    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 527
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_4
    goto :goto_3

    .line 535
    :catch_0
    move-exception v1

    .line 536
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    :goto_3
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 542
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->f(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 543
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->f(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v1, v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 547
    :cond_5
    return-void
.end method
