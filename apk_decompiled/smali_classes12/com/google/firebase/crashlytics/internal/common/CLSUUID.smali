.class Lcom/google/firebase/crashlytics/internal/common/CLSUUID;
.super Ljava/lang/Object;
.source "CLSUUID.java"


# static fields
.field private static _clsId:Ljava/lang/String;

.field private static final _sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/IdManager;)V
    .locals 10
    .param p1, "idManager"    # Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 39
    .local v0, "bytes":[B
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populateTime([B)V

    .line 40
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populateSequenceNumber([B)V

    .line 41
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populatePID([B)V

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getCrashlyticsInstallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "idSha":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "timeSeqPid":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 54
    const/16 v7, 0x10

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    .line 55
    const/16 v8, 0x14

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 50
    const-string v5, "%s%s%s%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_clsId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static convertLongToFourByteBuffer(J)[B
    .locals 2
    .param p0, "value"    # J

    .line 90
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "buf":Ljava/nio/ByteBuffer;
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 92
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static convertLongToTwoByteBuffer(J)[B
    .locals 2
    .param p0, "value"    # J

    .line 99
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "buf":Ljava/nio/ByteBuffer;
    long-to-int v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 101
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private populatePID([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    .local v0, "pid":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v1

    .line 85
    .local v1, "pidBytes":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0x8

    aput-byte v2, p1, v3

    .line 86
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x9

    aput-byte v2, p1, v3

    .line 87
    return-void
.end method

.method private populateSequenceNumber([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .line 77
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v0

    .line 78
    .local v0, "sequenceBytes":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x6

    aput-byte v1, p1, v2

    .line 79
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aput-byte v1, p1, v2

    .line 80
    return-void
.end method

.method private populateTime([B)V
    .locals 12
    .param p1, "bytes"    # [B

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 62
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 63
    .local v1, "time":J
    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    .line 64
    .local v5, "tvSec":J
    rem-long v3, v1, v3

    .line 65
    .local v3, "tvUsec":J
    invoke-static {v5, v6}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToFourByteBuffer(J)[B

    move-result-object v7

    .line 66
    .local v7, "timeBytes":[B
    const/4 v8, 0x0

    aget-byte v9, v7, v8

    aput-byte v9, p1, v8

    .line 67
    const/4 v9, 0x1

    aget-byte v10, v7, v9

    aput-byte v10, p1, v9

    .line 68
    const/4 v10, 0x2

    aget-byte v11, v7, v10

    aput-byte v11, p1, v10

    .line 69
    const/4 v10, 0x3

    aget-byte v11, v7, v10

    aput-byte v11, p1, v10

    .line 71
    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v10

    .line 72
    .local v10, "msecsBytes":[B
    aget-byte v8, v10, v8

    const/4 v11, 0x4

    aput-byte v8, p1, v11

    .line 73
    aget-byte v8, v10, v9

    const/4 v9, 0x5

    aput-byte v8, p1, v9

    .line 74
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_clsId:Ljava/lang/String;

    return-object v0
.end method
