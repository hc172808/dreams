.class Lcom/payu/custombrowser/b$12;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 224
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 226
    const-string v0, "broadcaststatus"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/payu/custombrowser/CBActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v2, "sender"

    const-string v3, "snoozeService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "verificationMsgReceived"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "payu_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    invoke-static {v0}, Lcom/payu/custombrowser/b;->a(Lcom/payu/custombrowser/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v2, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    invoke-static {v2}, Lcom/payu/custombrowser/b;->a(Lcom/payu/custombrowser/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;)V

    .line 242
    :cond_1
    const-string v0, "BROAD_CAST_FROM_SNOOZE_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    const-string v3, "event_key"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    const-string v0, "snoozeServiceStatus"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iput-boolean v1, v0, Lcom/payu/custombrowser/b;->aa:Z

    .line 248
    sget v0, Lcom/payu/custombrowser/CBActivity;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 252
    :cond_3
    sget v0, Lcom/payu/custombrowser/CBActivity;->b:I

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    invoke-static {v0}, Lcom/payu/custombrowser/b;->b(Lcom/payu/custombrowser/b;)V

    .line 259
    :cond_4
    const-string v0, "broadcast_from_service_update_ui"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_forward_journey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "good_network_notification_launched"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iput-boolean v1, v0, Lcom/payu/custombrowser/b;->aa:Z

    .line 264
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iput-object p2, v0, Lcom/payu/custombrowser/b;->ab:Landroid/content/Intent;

    goto :goto_1

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    iput-boolean v2, v0, Lcom/payu/custombrowser/b;->aa:Z

    .line 268
    iget-object v0, p0, Lcom/payu/custombrowser/b$12;->a:Lcom/payu/custombrowser/b;

    invoke-static {v0, p2}, Lcom/payu/custombrowser/b;->a(Lcom/payu/custombrowser/b;Landroid/content/Intent;)V

    .line 272
    :cond_6
    :goto_1
    return-void
.end method
