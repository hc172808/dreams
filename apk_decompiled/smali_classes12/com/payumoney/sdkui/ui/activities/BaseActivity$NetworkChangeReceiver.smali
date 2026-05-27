.class public Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/activities/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    .line 547
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 551
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isDataConnectionAvailable(Landroid/content/Context;)Z

    .line 552
    return-void
.end method
