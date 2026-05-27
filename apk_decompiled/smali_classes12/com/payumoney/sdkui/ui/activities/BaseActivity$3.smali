.class Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;
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

    .line 471
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 475
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->userCancelledTransaction()V

    .line 477
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->a:Ljava/util/HashMap;

    const-string v1, "TxnCancelled"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->a:Ljava/util/HashMap;

    const-string v2, "TxnCancelAttempt"

    const-string v3, "clevertap"

    invoke-static {v0, v2, v1, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    .line 484
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    .line 487
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;->b:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->finish()V

    .line 488
    return-void
.end method
