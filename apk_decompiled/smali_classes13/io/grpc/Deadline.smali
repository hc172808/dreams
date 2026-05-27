.class public final Lio/grpc/Deadline;
.super Ljava/lang/Object;
.source "Deadline.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Deadline$SystemTicker;,
        Lio/grpc/Deadline$Ticker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/grpc/Deadline;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_OFFSET:J

.field private static final MIN_OFFSET:J

.field private static final NANOS_PER_SECOND:J

.field private static final SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;


# instance fields
.field private final deadlineNanos:J

.field private volatile expired:Z

.field private final ticker:Lio/grpc/Deadline$Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lio/grpc/Deadline$SystemTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Deadline$SystemTicker;-><init>(Lio/grpc/Deadline$1;)V

    sput-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x8e94

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    .line 39
    neg-long v0, v0

    sput-wide v0, Lio/grpc/Deadline;->MIN_OFFSET:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/Deadline;->NANOS_PER_SECOND:J

    return-void
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JJZ)V
    .locals 4
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;
    .param p2, "baseInstant"    # J
    .param p4, "offset"    # J
    .param p6, "baseInstantAlreadyExpired"    # Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    .line 109
    sget-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    sget-wide v2, Lio/grpc/Deadline;->MIN_OFFSET:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 110
    add-long v0, p2, p4

    iput-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    .line 111
    if-eqz p6, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/grpc/Deadline;->expired:Z

    .line 112
    return-void
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JZ)V
    .locals 7
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;
    .param p2, "offset"    # J
    .param p4, "baseInstantAlreadyExpired"    # Z

    .line 102
    invoke-virtual {p1}, Lio/grpc/Deadline$Ticker;->nanoTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JJZ)V

    .line 103
    return-void
.end method

.method public static after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;
    .locals 1
    .param p0, "duration"    # J
    .param p2, "units"    # Ljava/util/concurrent/TimeUnit;

    .line 67
    sget-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    invoke-static {p0, p1, p2, v0}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method public static after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;
    .locals 4
    .param p0, "duration"    # J
    .param p2, "units"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 93
    const-string v0, "units"

    invoke-static {p2, v0}, Lio/grpc/Deadline;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lio/grpc/Deadline;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, p3, v1, v2, v3}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JZ)V

    return-object v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 288
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 291
    return-object p0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTicker(Lio/grpc/Deadline;)V
    .locals 3
    .param p1, "other"    # Lio/grpc/Deadline;

    .line 295
    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    iget-object v1, p1, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    if-ne v0, v1, :cond_0

    .line 300
    return-void

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tickers ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getSystemTicker()Lio/grpc/Deadline$Ticker;
    .locals 1

    .line 52
    sget-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/grpc/Deadline;)I
    .locals 5
    .param p1, "that"    # Lio/grpc/Deadline;

    .line 225
    invoke-direct {p0, p1}, Lio/grpc/Deadline;->checkTicker(Lio/grpc/Deadline;)V

    .line 226
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    .line 227
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 228
    const/4 v2, -0x1

    return v2

    .line 229
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 230
    const/4 v2, 0x1

    return v2

    .line 232
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lio/grpc/Deadline;

    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 242
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 243
    return v0

    .line 245
    :cond_0
    instance-of v1, p1, Lio/grpc/Deadline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 246
    return v2

    .line 249
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/grpc/Deadline;

    .line 250
    .local v1, "other":Lio/grpc/Deadline;
    iget-object v3, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    if-nez v3, :cond_2

    iget-object v3, v1, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    if-eq v3, v4, :cond_3

    .line 251
    :goto_0
    return v2

    .line 253
    :cond_3
    iget-wide v3, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v5, v1, Lio/grpc/Deadline;->deadlineNanos:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 254
    return v2

    .line 256
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/grpc/Deadline;->deadlineNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBefore(Lio/grpc/Deadline;)Z
    .locals 5
    .param p1, "other"    # Lio/grpc/Deadline;

    .line 134
    invoke-direct {p0, p1}, Lio/grpc/Deadline;->checkTicker(Lio/grpc/Deadline;)V

    .line 135
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpired()Z
    .locals 6

    .line 119
    iget-boolean v0, p0, Lio/grpc/Deadline;->expired:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 120
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v0}, Lio/grpc/Deadline$Ticker;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lio/grpc/Deadline;->expired:Z

    goto :goto_0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_1
    :goto_0
    return v1
.end method

.method public minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 1
    .param p1, "other"    # Lio/grpc/Deadline;

    .line 145
    invoke-direct {p0, p1}, Lio/grpc/Deadline;->checkTicker(Lio/grpc/Deadline;)V

    .line 146
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public offset(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;
    .locals 10
    .param p1, "offset"    # J
    .param p3, "units"    # Ljava/util/concurrent/TimeUnit;

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 161
    return-object p0

    .line 163
    :cond_0
    new-instance v0, Lio/grpc/Deadline;

    iget-object v4, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    iget-wide v5, p0, Lio/grpc/Deadline;->deadlineNanos:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-virtual {p0}, Lio/grpc/Deadline;->isExpired()Z

    move-result v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JJZ)V

    return-object v0
.end method

.method public runOnExpiration(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 192
    const-string v0, "task"

    invoke-static {p1, v0}, Lio/grpc/Deadline;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lio/grpc/Deadline;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-object v2, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v2}, Lio/grpc/Deadline$Ticker;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public timeRemaining(Ljava/util/concurrent/TimeUnit;)J
    .locals 7
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 173
    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v0}, Lio/grpc/Deadline$Ticker;->nanoTime()J

    move-result-wide v0

    .line 174
    .local v0, "nowNanos":J
    iget-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    .line 177
    :cond_0
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 199
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 200
    .local v0, "remainingNanos":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lio/grpc/Deadline;->NANOS_PER_SECOND:J

    div-long/2addr v2, v4

    .line 201
    .local v2, "seconds":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    rem-long/2addr v6, v4

    .line 203
    .local v6, "nanos":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v4, "buf":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    .line 205
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 209
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const-string v8, ".%09d"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    const-string v5, "s from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v5, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    sget-object v8, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    if-eq v5, v8, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " (ticker="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
