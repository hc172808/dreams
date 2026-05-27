.class public Lcom/payu/custombrowser/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/payu/custombrowser/util/e;

    monitor-enter v0

    .line 26
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(I)Z

    move-result v1

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

.method private static a(I)Z
    .locals 1

    .line 58
    const-string v0, "PAYU"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/payu/custombrowser/util/e;

    monitor-enter v0

    .line 32
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "PAYU"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v0

    return-void

    .line 31
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/payu/custombrowser/util/e;

    monitor-enter v0

    .line 39
    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "PAYU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
