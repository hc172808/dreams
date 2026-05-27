.class Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/ReviewOrderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    .line 149
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReviewOrderScreenIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    iget v1, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->g:I

    const-string v2, "key_style"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    return-object v0
.end method
