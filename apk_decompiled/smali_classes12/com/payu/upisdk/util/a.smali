.class public final Lcom/payu/upisdk/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/payu/upisdk/util/a;

    monitor-enter v0

    .line 1058
    :try_start_0
    const-string v1, "PAYU"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    const-string v1, "PAYU"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    .line 25
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/payu/upisdk/util/a;

    monitor-enter v0

    .line 2058
    :try_start_0
    const-string v1, "PAYU"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const-string v1, "PAYU"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v0

    return-void

    .line 38
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
