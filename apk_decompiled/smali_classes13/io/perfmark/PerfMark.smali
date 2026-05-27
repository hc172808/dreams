.class public final Lio/perfmark/PerfMark;
.super Ljava/lang/Object;
.source "PerfMark.java"


# static fields
.field private static final impl:Lio/perfmark/Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "instance":Lio/perfmark/Impl;
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 33
    .local v1, "level":Ljava/util/logging/Level;
    const/4 v2, 0x0

    .line 34
    .local v2, "err":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 36
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    .local v4, "t":Ljava/lang/Throwable;
    move-object v2, v4

    goto :goto_1

    .line 37
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    .line 38
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 39
    move-object v2, v4

    .line 42
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 43
    :goto_1
    if-eqz v3, :cond_0

    .line 45
    :try_start_1
    const-class v4, Lio/perfmark/Impl;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lio/perfmark/Tag;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/perfmark/Impl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    .line 48
    goto :goto_2

    .line 46
    :catchall_1
    move-exception v4

    .line 47
    .local v4, "t":Ljava/lang/Throwable;
    move-object v2, v4

    .line 50
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 51
    sput-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    goto :goto_3

    .line 53
    :cond_1
    new-instance v4, Lio/perfmark/Impl;

    sget-object v5, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    invoke-direct {v4, v5}, Lio/perfmark/Impl;-><init>(Lio/perfmark/Tag;)V

    sput-object v4, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    .line 55
    :goto_3
    if-eqz v2, :cond_2

    .line 56
    const-class v4, Lio/perfmark/PerfMark;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Error during PerfMark.<clinit>"

    invoke-virtual {v4, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "instance":Lio/perfmark/Impl;
    .end local v1    # "level":Ljava/util/logging/Level;
    .end local v2    # "err":Ljava/lang/Throwable;
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachTag(Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "tag"    # Lio/perfmark/Tag;

    .line 279
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->attachTag(Lio/perfmark/Tag;)V

    .line 280
    return-void
.end method

.method public static createTag()Lio/perfmark/Tag;
    .locals 1

    .line 168
    sget-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    return-object v0
.end method

.method public static createTag(J)Lio/perfmark/Tag;
    .locals 2
    .param p0, "id"    # J

    .line 180
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Ljava/lang/String;)Lio/perfmark/Tag;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 192
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, p0, v1, v2}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Ljava/lang/String;J)Lio/perfmark/Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 205
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1, p2}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->event(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static event(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 110
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 111
    return-void
.end method

.method public static link()Lio/perfmark/Link;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    sget-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-object v0
.end method

.method public static linkIn(Lio/perfmark/Link;)V
    .locals 1
    .param p0, "link"    # Lio/perfmark/Link;

    .line 240
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->linkIn(Lio/perfmark/Link;)V

    .line 241
    return-void
.end method

.method public static linkOut()Lio/perfmark/Link;
    .locals 1

    .line 229
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0}, Lio/perfmark/Impl;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "value"    # Z

    .line 67
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->setEnabled(Z)V

    .line 68
    return-void
.end method

.method public static startTask(Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 83
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 84
    return-void
.end method

.method public static stopTask(Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .line 154
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->stopTask(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 138
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 139
    return-void
.end method
