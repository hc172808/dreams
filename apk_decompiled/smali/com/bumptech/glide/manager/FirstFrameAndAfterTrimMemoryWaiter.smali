.class final Lcom/bumptech/glide/manager/FirstFrameAndAfterTrimMemoryWaiter;
.super Ljava/lang/Object;
.source "FirstFrameAndAfterTrimMemoryWaiter.java"

# interfaces
.implements Lcom/bumptech/glide/manager/FrameWaiter;
.implements Landroid/content/ComponentCallbacks2;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 20
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 24
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/FirstFrameAndAfterTrimMemoryWaiter;->onTrimMemory(I)V

    .line 25
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 17
    return-void
.end method

.method public registerSelf(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 14
    return-void
.end method
