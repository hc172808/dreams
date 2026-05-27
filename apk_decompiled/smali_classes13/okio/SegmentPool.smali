.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n+ 2 -Platform.kt\nokio/-Platform\n*L\n1#1,62:1\n28#2:63\n28#2:64\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n*L\n37#1:63\n52#1:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010\u0013\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokio/SegmentPool;",
        "",
        "()V",
        "MAX_SIZE",
        "",
        "byteCount",
        "getByteCount",
        "()J",
        "setByteCount",
        "(J)V",
        "next",
        "Lokio/Segment;",
        "getNext",
        "()Lokio/Segment;",
        "setNext",
        "(Lokio/Segment;)V",
        "recycle",
        "",
        "segment",
        "take",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field public static final MAX_SIZE:J = 0x10000L

.field private static byteCount:J

.field private static next:Lokio/Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByteCount()J
    .locals 2

    .line 34
    sget-wide v0, Lokio/SegmentPool;->byteCount:J

    return-wide v0
.end method

.method public final getNext()Lokio/Segment;
    .locals 1

    .line 31
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    return-object v0
.end method

.method public final recycle(Lokio/Segment;)V
    .locals 13
    .param p1, "segment"    # Lokio/Segment;

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 50
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_1

    return-void

    .line 52
    :cond_1
    move-object v0, p0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-synchronized-SegmentPool$recycle$1":I
    :try_start_0
    sget-wide v4, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x2000

    int-to-long v6, v6

    add-long v8, v4, v6

    const-wide/32 v10, 0x10000

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-SegmentPool$recycle$1":I
    monitor-exit v0

    return-void

    .line 54
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-SegmentPool$recycle$1":I
    :cond_2
    add-long/2addr v4, v6

    :try_start_1
    sput-wide v4, Lokio/SegmentPool;->byteCount:J

    .line 55
    sget-object v4, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v4, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 56
    iput v1, p1, Lokio/Segment;->limit:I

    .line 57
    iget v1, p1, Lokio/Segment;->limit:I

    iput v1, p1, Lokio/Segment;->pos:I

    .line 58
    sput-object p1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 59
    .end local v3    # "$i$a$-synchronized-SegmentPool$recycle$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 60
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    return-void

    .line 59
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 49
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :cond_3
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final setByteCount(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 34
    sput-wide p1, Lokio/SegmentPool;->byteCount:J

    return-void
.end method

.method public final setNext(Lokio/Segment;)V
    .locals 0
    .param p1, "<set-?>"    # Lokio/Segment;

    .line 31
    sput-object p1, Lokio/SegmentPool;->next:Lokio/Segment;

    return-void
.end method

.method public final take()Lokio/Segment;
    .locals 9

    .line 37
    move-object v0, p0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-synchronized-SegmentPool$take$1":I
    :try_start_0
    sget-object v3, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v3, :cond_0

    .local v3, "result":Lokio/Segment;
    const/4 v4, 0x0

    .line 39
    .local v4, "$i$a$-let-SegmentPool$take$1$1":I
    iget-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    sput-object v5, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 40
    const/4 v5, 0x0

    check-cast v5, Lokio/Segment;

    iput-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 41
    sget-wide v5, Lokio/SegmentPool;->byteCount:J

    const/16 v7, 0x2000

    int-to-long v7, v7

    sub-long/2addr v5, v7

    sput-wide v5, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-SegmentPool$take$1":I
    .end local v3    # "result":Lokio/Segment;
    .end local v4    # "$i$a$-let-SegmentPool$take$1$1":I
    monitor-exit v0

    return-object v3

    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-SegmentPool$take$1":I
    :cond_0
    nop

    .line 43
    .end local v2    # "$i$a$-synchronized-SegmentPool$take$1":I
    monitor-exit v0

    .line 45
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    .line 43
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
