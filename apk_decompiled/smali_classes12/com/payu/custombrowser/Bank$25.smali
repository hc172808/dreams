.class Lcom/payu/custombrowser/Bank$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/widget/TextView;

.field final synthetic i:Landroid/widget/Button;

.field final synthetic j:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 2900
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$25;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$25;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/payu/custombrowser/Bank$25;->c:Landroid/widget/Button;

    iput-object p5, p0, Lcom/payu/custombrowser/Bank$25;->d:Landroid/widget/Button;

    iput-object p6, p0, Lcom/payu/custombrowser/Bank$25;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/payu/custombrowser/Bank$25;->f:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/payu/custombrowser/Bank$25;->g:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/payu/custombrowser/Bank$25;->h:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/payu/custombrowser/Bank$25;->i:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 2904
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->isRetryNowPressed:Z

    .line 2905
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget v2, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 2906
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    const-string v2, "snooze_interaction_time"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 2908
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iput v1, v0, Lcom/payu/custombrowser/Bank;->y:I

    .line 2909
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 2914
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/payu/custombrowser/Bank;->snoozeClickedTime:J

    .line 2917
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->isSnoozeBroadCastReceiverRegistered:Z

    .line 2920
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;Z)Z

    .line 2922
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2923
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2924
    sput-boolean v1, Lcom/payu/custombrowser/b;->hasToStart:Z

    .line 2925
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->bindService()V

    .line 2928
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    .line 2930
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Lcom/payu/custombrowser/Bank;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 2934
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2935
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2936
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2937
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2938
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->e:Landroid/widget/TextView;

    const-string v3, "We have paused your transaction because the network was unable to process it now. We will notify you when the network improves."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2940
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2941
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payu/custombrowser/R$string;->cb_transaction_paused:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2942
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2943
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2946
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/payu/custombrowser/Bank;->a(ILjava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    const-string v2, "snooze_window_action"

    const-string v4, "snooze_click"

    invoke-virtual {v0, v2, v4}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "snooze_load_url"

    invoke-virtual {v0, v4, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    .line 2955
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->j:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, v3}, Lcom/payu/custombrowser/Bank;->showCbBlankOverlay(I)V

    .line 2958
    return-void
.end method
