.class public Lcom/payumoney/sdkui/ui/utils/PPLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/payumoney/sdkui/ui/utils/PPLogger;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/PPLogger;->b:Z

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;
    .locals 2

    .line 20
    sget-object v0, Lcom/payumoney/sdkui/ui/utils/PPLogger;->a:Lcom/payumoney/sdkui/ui/utils/PPLogger;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/payumoney/sdkui/ui/utils/PPLogger;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/payumoney/sdkui/ui/utils/PPLogger;->a:Lcom/payumoney/sdkui/ui/utils/PPLogger;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/PPLogger;

    invoke-direct {v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;-><init>()V

    sput-object v1, Lcom/payumoney/sdkui/ui/utils/PPLogger;->a:Lcom/payumoney/sdkui/ui/utils/PPLogger;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/sdkui/ui/utils/PPLogger;->a:Lcom/payumoney/sdkui/ui/utils/PPLogger;

    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 39
    nop

    .line 42
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 68
    nop

    .line 71
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 62
    nop

    .line 65
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 51
    nop

    .line 53
    return-void
.end method

.method public isEnableLogs()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/utils/PPLogger;->b:Z

    return v0
.end method

.method public json(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 56
    nop

    .line 59
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 75
    nop

    .line 78
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 45
    nop

    .line 48
    return-void
.end method
