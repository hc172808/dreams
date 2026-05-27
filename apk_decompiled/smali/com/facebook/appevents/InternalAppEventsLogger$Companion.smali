.class public final Lcom/facebook/appevents/InternalAppEventsLogger$Companion;
.super Ljava/lang/Object;
.source "InternalAppEventsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/InternalAppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\"\u0010\t\u001a\u00020\n2\u0018\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u000cH\u0007J\u0012\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/appevents/InternalAppEventsLogger$Companion;",
        "",
        "()V",
        "getAnalyticsExecutor",
        "Ljava/util/concurrent/Executor;",
        "getFlushBehavior",
        "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;",
        "getPushNotificationsRegistrationId",
        "",
        "setInternalUserData",
        "",
        "ud",
        "",
        "setUserData",
        "userData",
        "Landroid/os/Bundle;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 115
    invoke-direct {p0}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnalyticsExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 123
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "AppEventsLoggerImpl.getAnalyticsExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 118
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    const-string v1, "AppEventsLoggerImpl.getFlushBehavior()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPushNotificationsRegistrationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 128
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setInternalUserData(Ljava/util/Map;)V
    .locals 0
    .param p1, "ud"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/facebook/appevents/UserDataStore;->setInternalUd(Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public final setUserData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "userData"    # Landroid/os/Bundle;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method
