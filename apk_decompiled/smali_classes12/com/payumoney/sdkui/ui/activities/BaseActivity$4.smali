.class Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/activities/BaseActivity;->showCancelTransactionMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    .line 490
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 493
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;->a:Ljava/util/HashMap;

    const-string v1, "TxnCancelled"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;->a:Ljava/util/HashMap;

    const-string v2, "TxnCancelAttempt"

    const-string v3, "clevertap"

    invoke-static {v0, v2, v1, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 496
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 497
    return-void
.end method
