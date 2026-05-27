.class final Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 718
    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 735
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 736
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v2, :cond_0

    .line 740
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "%8s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 744
    const-string v1, "END_STREAM"

    aput-object v1, v0, v5

    .line 746
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 748
    .local v1, "prefixFlags":[I
    const-string v2, "PADDED"

    const/16 v5, 0x8

    aput-object v2, v0, v5

    .line 749
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    const-string v6, "|PADDED"

    if-ge v2, v0, :cond_1

    aget v7, v1, v2

    .line 750
    .local v7, "prefixFlag":I
    sget-object v8, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v9, v7, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 749
    .end local v7    # "prefixFlag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 753
    :cond_1
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v7, "END_HEADERS"

    aput-object v7, v0, v2

    .line 754
    const-string v2, "PRIORITY"

    aput-object v2, v0, v3

    .line 755
    const/16 v2, 0x24

    const-string v3, "END_HEADERS|PRIORITY"

    aput-object v3, v0, v2

    .line 756
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 759
    .local v0, "frameFlags":[I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget v7, v0, v3

    .line 760
    .local v7, "frameFlag":I
    array-length v8, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_2

    aget v10, v1, v9

    .line 761
    .local v10, "prefixFlag":I
    sget-object v11, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v15, v11, v7

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 762
    or-int v12, v10, v7

    or-int/2addr v12, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v11, v10

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v14, v11, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 760
    .end local v10    # "prefixFlag":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 759
    .end local v7    # "frameFlag":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 767
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v3, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 768
    aget-object v4, v3, v2

    if-nez v4, :cond_4

    sget-object v4, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 767
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 770
    .end local v0    # "frameFlags":[I
    .end local v1    # "prefixFlags":[I
    .end local v2    # "i":I
    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 696
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 697
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 707
    :pswitch_0
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object v0, v0, p1

    goto :goto_1

    .line 700
    :pswitch_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "ACK"

    goto :goto_0

    :cond_1
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    .line 705
    :pswitch_2
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 707
    :cond_2
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 709
    .local v0, "result":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 710
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 711
    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 712
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 714
    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 6
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 684
    sget-object v0, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "formattedFlags":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v5, "<<"

    goto :goto_1

    :cond_1
    const-string v5, ">>"

    :goto_1
    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    const-string v2, "%s 0x%08x %5d %-13s %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
