.class Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/activities/BaseActivity;->clearAllFragments()V
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

    .line 230
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;->a:Lcom/payumoney/sdkui/ui/activities/BaseActivity;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    :goto_0
    return-void
.end method
