.class public final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfileManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u000c\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0014\u001a\u00020\u0010H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/ProfileManager;",
        "",
        "localBroadcastManager",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "profileCache",
        "Lcom/facebook/ProfileCache;",
        "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V",
        "value",
        "Lcom/facebook/Profile;",
        "currentProfile",
        "getCurrentProfile",
        "()Lcom/facebook/Profile;",
        "setCurrentProfile",
        "(Lcom/facebook/Profile;)V",
        "currentProfileField",
        "loadCurrentProfile",
        "",
        "sendCurrentProfileChangedBroadcast",
        "",
        "oldProfile",
        "writeToCache",
        "Companion",
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
.field public static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field public static final Companion:Lcom/facebook/ProfileManager$Companion;

.field public static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field public static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfileField:Lcom/facebook/Profile;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/ProfileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/ProfileManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V
    .locals 1
    .param p1, "localBroadcastManager"    # Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .param p2, "profileCache"    # Lcom/facebook/ProfileCache;

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/facebook/ProfileManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/facebook/ProfileManager;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/facebook/ProfileManager;

    .line 27
    sput-object p0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-void
.end method

.method public static final getInstance()Lcom/facebook/ProfileManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/ProfileManager$Companion;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    return-object v0
.end method

.method private final sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 3
    .param p1, "oldProfile"    # Lcom/facebook/Profile;
    .param p2, "currentProfile"    # Lcom/facebook/Profile;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    move-object v1, p2

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 67
    return-void
.end method

.method private final setCurrentProfile(Lcom/facebook/Profile;Z)V
    .locals 2
    .param p1, "currentProfile"    # Lcom/facebook/Profile;
    .param p2, "writeToCache"    # Z

    .line 48
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    .line 49
    .local v0, "oldProfile":Lcom/facebook/Profile;
    iput-object p1, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    .line 50
    if-eqz p2, :cond_1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1, p1}, Lcom/facebook/ProfileCache;->save(Lcom/facebook/Profile;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1}, Lcom/facebook/ProfileCache;->clear()V

    .line 55
    :cond_1
    :goto_0
    nop

    .line 57
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/facebook/ProfileManager;->sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrentProfile()Lcom/facebook/Profile;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    return-object v0
.end method

.method public final loadCurrentProfile()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v0}, Lcom/facebook/ProfileCache;->load()Lcom/facebook/Profile;

    move-result-object v0

    .line 40
    .local v0, "profile":Lcom/facebook/Profile;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    .line 42
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_0
    return v1
.end method

.method public final setCurrentProfile(Lcom/facebook/Profile;)V
    .locals 1
    .param p1, "value"    # Lcom/facebook/Profile;

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    return-void
.end method
