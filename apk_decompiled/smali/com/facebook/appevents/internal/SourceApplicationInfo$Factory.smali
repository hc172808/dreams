.class public final Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;",
        "",
        "()V",
        "create",
        "Lcom/facebook/appevents/internal/SourceApplicationInfo;",
        "activity",
        "Landroid/app/Activity;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;->INSTANCE:Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "openedByAppLink":Z
    const-string v1, ""

    .line 55
    .local v1, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 56
    .local v2, "callingApplication":Landroid/content/ComponentName;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    return-object v3

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 68
    .local v4, "openIntent":Landroid/content/Intent;
    nop

    .line 69
    const/4 v5, 0x1

    const-string v6, "_fbSourceApplicationHasBeenSet"

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-static {v4}, Lcom/facebook/bolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v7

    .line 72
    .local v7, "appLinkData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 73
    const/4 v0, 0x1

    .line 74
    const-string v8, "referer_app_link"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 75
    .local v8, "appLinkReferrerData":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 76
    const-string v9, "package"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "appLinkReferrerPackage":Ljava/lang/String;
    move-object v1, v9

    .line 81
    .end local v7    # "appLinkData":Landroid/os/Bundle;
    .end local v8    # "appLinkReferrerData":Landroid/os/Bundle;
    .end local v9    # "appLinkReferrerPackage":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    :cond_2
    new-instance v5, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method
