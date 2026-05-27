.class public final Lcom/payu/socketverification/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/payu/socketverification/util/a;->a:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/payu/socketverification/util/a;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2012
    iget-boolean v1, v1, Lcom/payu/socketverification/bean/a;->b:Z

    .line 55
    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 2020
    iget v1, v1, Lcom/payu/socketverification/bean/a;->c:I

    .line 56
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 57
    const-string v1, "### PAYU ####"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit v0

    return-void

    .line 54
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/payu/socketverification/util/a;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 1012
    iget-boolean v1, v1, Lcom/payu/socketverification/bean/a;->b:Z

    .line 47
    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 1020
    iget v1, v1, Lcom/payu/socketverification/bean/a;->c:I

    .line 48
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v0

    return-void

    .line 46
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
