.class public Lcom/facebook/internal/CustomTab;
.super Ljava/lang/Object;
.source "CustomTab.java"


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    .line 42
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/internal/CustomTab;->getURIForAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/CustomTab;->uri:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method public static getURIForAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5

    const-class v0, Lcom/facebook/internal/CustomTab;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 47
    .local p0, "action":Ljava/lang/String;
    .local p1, "parameters":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dialog/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v1, v3, p1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "action":Ljava/lang/String;
    .end local p1    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public openCustomTab(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 53
    .local v0, "this":Lcom/facebook/internal/CustomTab;
    .local p1, "activity":Landroid/app/Activity;
    .local p2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->getPreparedSessionOnce()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    .line 54
    .local v2, "session":Landroidx/browser/customtabs/CustomTabsSession;
    new-instance v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v3, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    invoke-virtual {v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v3

    .line 55
    .local v3, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    iget-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v4, v0, Lcom/facebook/internal/CustomTab;->uri:Landroid/net/Uri;

    invoke-virtual {v3, p1, v4}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    nop

    .line 62
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v0    # "this":Lcom/facebook/internal/CustomTab;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    return v1

    .line 62
    .end local v2    # "session":Landroidx/browser/customtabs/CustomTabsSession;
    .end local v3    # "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
