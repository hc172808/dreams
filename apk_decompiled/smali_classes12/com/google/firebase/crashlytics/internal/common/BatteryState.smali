.class Lcom/google/firebase/crashlytics/internal/common/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# static fields
.field static final VELOCITY_CHARGING:I = 0x2

.field static final VELOCITY_FULL:I = 0x3

.field static final VELOCITY_UNPLUGGED:I = 0x1


# instance fields
.field private final level:Ljava/lang/Float;

.field private final powerConnected:Z


# direct methods
.method private constructor <init>(Ljava/lang/Float;Z)V
    .locals 0
    .param p1, "level"    # Ljava/lang/Float;
    .param p2, "powerConnected"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    .line 34
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    .line 35
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/common/BatteryState;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "powerConnected":Z
    const/4 v1, 0x0

    .line 71
    .local v1, "level":Ljava/lang/Float;
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "ifilter":Landroid/content/IntentFilter;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 73
    .local v3, "batteryStatusIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 74
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->isPowerConnected(Landroid/content/Intent;)Z

    move-result v4

    move v0, v4

    .line 75
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->getLevel(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 80
    .end local v2    # "ifilter":Landroid/content/IntentFilter;
    .end local v3    # "batteryStatusIntent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 79
    .local v2, "ex":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v3

    const-string v4, "An error occurred getting battery state."

    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :goto_0
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/BatteryState;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;-><init>(Ljava/lang/Float;Z)V

    return-object v2
.end method

.method private static getLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 4
    .param p0, "batteryStatusIntent"    # Landroid/content/Intent;

    .line 108
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "level":I
    const-string v2, "scale"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "scale":I
    if-eq v0, v1, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isPowerConnected(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "batteryStatusIntent"    # Landroid/content/Intent;

    .line 92
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "status":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 94
    return v2

    .line 97
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public getBatteryLevel()Ljava/lang/Float;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    return-object v0
.end method

.method public getBatteryVelocity()I
    .locals 5

    .line 56
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 59
    const/4 v0, 0x2

    return v0

    .line 61
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 57
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isPowerConnected()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    return v0
.end method
