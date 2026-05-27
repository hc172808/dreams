.class public final Lio/grpc/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final ENABLE_PUSH:I = 0x2

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0xa

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final HEADER_TABLE_SIZE:I = 0x1

.field public static final INITIAL_WINDOW_SIZE:I = 0x7

.field public static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    .line 89
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 90
    return-void
.end method

.method flags(I)I
    .locals 2
    .param p1, "id"    # I

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->persistValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 130
    :cond_1
    return v0
.end method

.method public get(I)I
    .locals 1
    .param p1, "id"    # I

    .line 122
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getClientCertificateVectorSize(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 206
    const/16 v0, 0x100

    .line 207
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getCurrentCwnd(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 177
    const/16 v0, 0x20

    .line 178
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getDownloadBandwidth(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 152
    const/4 v0, 0x4

    .line 153
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getDownloadRetransRate(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 189
    const/16 v0, 0x40

    .line 190
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getEnablePush(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    .line 159
    const/4 v0, 0x4

    .line 160
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method getHeaderTableSize()I
    .locals 3

    .line 146
    const/4 v0, 0x2

    .line 147
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method getInitialWindowSize(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 200
    const/16 v0, 0x80

    .line 201
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getMaxConcurrentStreams(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 171
    const/16 v0, 0x10

    .line 172
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getMaxFrameSize(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 183
    const/16 v0, 0x20

    .line 184
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getMaxHeaderListSize(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 195
    const/16 v0, 0x40

    .line 196
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getRoundTripTime(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 165
    const/16 v0, 0x8

    .line 166
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getUploadBandwidth(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 140
    const/4 v0, 0x2

    .line 141
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method isFlowControlDisabled()Z
    .locals 4

    .line 212
    const/16 v0, 0x400

    .line 213
    .local v0, "bit":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/16 v3, 0xa

    aget v1, v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 214
    .local v1, "value":I
    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method isPersisted(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 228
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 229
    .local v1, "bit":I
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 116
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 117
    .local v1, "bit":I
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method merge(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 3
    .param p1, "other"    # Lio/grpc/okhttp/internal/framed/Settings;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 238
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Settings;->set(III)Lio/grpc/okhttp/internal/framed/Settings;

    .line 237
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method persistValue(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 222
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 223
    .local v1, "bit":I
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(III)Lio/grpc/okhttp/internal/framed/Settings;
    .locals 4
    .param p1, "id"    # I
    .param p2, "idFlags"    # I
    .param p3, "value"    # I

    .line 93
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 94
    return-object p0

    .line 97
    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 98
    .local v1, "bit":I
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    .line 99
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_0

    .line 102
    :cond_1
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    .line 104
    :goto_0
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_2

    .line 105
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_1

    .line 107
    :cond_2
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    .line 110
    :goto_1
    aput p3, v0, p1

    .line 111
    return-object p0
.end method

.method size()I
    .locals 1

    .line 135
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
