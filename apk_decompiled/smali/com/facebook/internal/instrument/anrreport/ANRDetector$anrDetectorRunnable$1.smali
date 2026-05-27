.class final Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;
.super Ljava/lang/Object;
.source "ANRDetector.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/anrreport/ANRDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;->INSTANCE:Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 44
    .local v0, "this":Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;
    nop

    .line 45
    nop

    .line 46
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/app/ActivityManager;

    .line 45
    nop

    .line 48
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-static {v1}, Lcom/facebook/internal/instrument/anrreport/ANRDetector;->checkProcessError(Landroid/app/ActivityManager;)V

    .end local v1    # "am":Landroid/app/ActivityManager;
    goto :goto_0

    .line 46
    .end local v0    # "this":Lcom/facebook/internal/instrument/anrreport/ANRDetector$anrDetectorRunnable$1;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 49
    :catch_0
    move-exception v1

    .line 51
    :goto_0
    nop

    .line 52
    return-void

    :catchall_2
    move-exception v1

    move-object v0, p0

    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
