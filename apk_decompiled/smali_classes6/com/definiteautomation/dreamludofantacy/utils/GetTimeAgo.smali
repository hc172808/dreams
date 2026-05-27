.class public Lcom/definiteautomation/dreamludofantacy/utils/GetTimeAgo;
.super Landroid/app/Application;
.source "GetTimeAgo.java"


# static fields
.field private static final DAY_MILLIS:I = 0x5265c00

.field private static final HOUR_MILLIS:I = 0x36ee80

.field private static final MINUTE_MILLIS:I = 0xea60

.field private static final SECOND_MILLIS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getTimeAgo(JLandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "time"    # J
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "ctx"
        }
    .end annotation

    .line 15
    const-wide v0, 0xe8d4a51000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 17
    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    .local v0, "now":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    goto/16 :goto_0

    .line 26
    :cond_1
    sub-long v2, v0, p0

    .line 27
    .local v2, "diff":J
    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 28
    const-string v4, "just now"

    return-object v4

    .line 29
    :cond_2
    const-wide/32 v6, 0x1d4c0

    cmp-long v8, v2, v6

    if-gez v8, :cond_3

    .line 30
    const-string v4, "a minute ago"

    return-object v4

    .line 31
    :cond_3
    const-wide/32 v6, 0x2dc6c0

    cmp-long v8, v2, v6

    if-gez v8, :cond_4

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " minutes ago"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 33
    :cond_4
    const-wide/32 v4, 0x5265c0

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 34
    const-string v4, "an hour ago"

    return-object v4

    .line 35
    :cond_5
    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v5, 0x36ee80

    div-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " hours ago"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 37
    :cond_6
    const-wide/32 v6, 0xa4cb800

    cmp-long v8, v2, v6

    if-gez v8, :cond_7

    .line 38
    const-string v4, "yesterday"

    return-object v4

    .line 40
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " days ago"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 22
    .end local v2    # "diff":J
    :cond_8
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method
