.class public final Lcom/google/geo/type/Viewport;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Viewport.java"

# interfaces
.implements Lcom/google/geo/type/ViewportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/type/Viewport$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/type/Viewport;",
        "Lcom/google/geo/type/Viewport$Builder;",
        ">;",
        "Lcom/google/geo/type/ViewportOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

.field public static final HIGH_FIELD_NUMBER:I = 0x2

.field public static final LOW_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/type/Viewport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private high_:Lcom/google/type/LatLng;

.field private low_:Lcom/google/type/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 501
    new-instance v0, Lcom/google/geo/type/Viewport;

    invoke-direct {v0}, Lcom/google/geo/type/Viewport;-><init>()V

    .line 504
    .local v0, "defaultInstance":Lcom/google/geo/type/Viewport;
    sput-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    .line 505
    const-class v1, Lcom/google/geo/type/Viewport;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 507
    .end local v0    # "defaultInstance":Lcom/google/geo/type/Viewport;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/google/geo/type/Viewport;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->setLow(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->mergeLow(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/geo/type/Viewport;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;

    .line 39
    invoke-direct {p0}, Lcom/google/geo/type/Viewport;->clearLow()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->setHigh(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->mergeHigh(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/geo/type/Viewport;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/geo/type/Viewport;

    .line 39
    invoke-direct {p0}, Lcom/google/geo/type/Viewport;->clearHigh()V

    return-void
.end method

.method private clearHigh()V
    .locals 1

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 176
    return-void
.end method

.method private clearLow()V
    .locals 1

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 110
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/geo/type/Viewport;
    .locals 1

    .line 510
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method private mergeHigh(Lcom/google/type/LatLng;)V
    .locals 2
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 161
    invoke-static {v0}, Lcom/google/type/LatLng;->newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/type/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    invoke-virtual {v0}, Lcom/google/type/LatLng$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    iput-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    goto :goto_0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 166
    :goto_0
    return-void
.end method

.method private mergeLow(Lcom/google/type/LatLng;)V
    .locals 2
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 95
    invoke-static {v0}, Lcom/google/type/LatLng;->newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/type/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    invoke-virtual {v0}, Lcom/google/type/LatLng$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    iput-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    goto :goto_0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 100
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 253
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/geo/type/Viewport;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/geo/type/Viewport;

    .line 256
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0, p0}, Lcom/google/geo/type/Viewport;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/geo/type/Viewport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/geo/type/Viewport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/type/Viewport;",
            ">;"
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHigh(Lcom/google/type/LatLng;)V
    .locals 0
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 147
    return-void
.end method

.method private setLow(Lcom/google/type/LatLng;)V
    .locals 0
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 81
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/google/geo/type/Viewport$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 494
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 491
    :pswitch_0
    return-object v2

    .line 488
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 473
    :pswitch_2
    sget-object v0, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    .line 474
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/geo/type/Viewport;>;"
    if-nez v0, :cond_1

    .line 475
    const-class v1, Lcom/google/geo/type/Viewport;

    monitor-enter v1

    .line 476
    :try_start_0
    sget-object v2, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 477
    if-nez v0, :cond_0

    .line 478
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 481
    sput-object v0, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    .line 483
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 485
    :cond_1
    :goto_0
    return-object v0

    .line 470
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/geo/type/Viewport;>;"
    :pswitch_3
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object v0

    .line 460
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "low_"

    aput-object v3, v0, v2

    const-string v2, "high_"

    aput-object v2, v0, v1

    .line 464
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 466
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v2, v1, v0}, Lcom/google/geo/type/Viewport;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 457
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/geo/type/Viewport$Builder;

    invoke-direct {v0, v2}, Lcom/google/geo/type/Viewport$Builder;-><init>(Lcom/google/geo/type/Viewport$1;)V

    return-object v0

    .line 454
    :pswitch_6
    new-instance v0, Lcom/google/geo/type/Viewport;

    invoke-direct {v0}, Lcom/google/geo/type/Viewport;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHigh()Lcom/google/type/LatLng;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLow()Lcom/google/type/LatLng;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasHigh()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLow()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
