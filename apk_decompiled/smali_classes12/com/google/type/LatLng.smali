.class public final Lcom/google/type/LatLng;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatLng.java"

# interfaces
.implements Lcom/google/type/LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/LatLng$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/LatLng;",
        "Lcom/google/type/LatLng$Builder;",
        ">;",
        "Lcom/google/type/LatLngOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/LatLng;

.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude_:D

.field private longitude_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 340
    new-instance v0, Lcom/google/type/LatLng;

    invoke-direct {v0}, Lcom/google/type/LatLng;-><init>()V

    .line 343
    .local v0, "defaultInstance":Lcom/google/type/LatLng;
    sput-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    .line 344
    const-class v1, Lcom/google/type/LatLng;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 346
    .end local v0    # "defaultInstance":Lcom/google/type/LatLng;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/LatLng;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/LatLng;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/LatLng;
    .param p1, "x1"    # D

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/type/LatLng;->setLatitude(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/LatLng;

    .line 17
    invoke-direct {p0}, Lcom/google/type/LatLng;->clearLatitude()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/LatLng;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/LatLng;
    .param p1, "x1"    # D

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/type/LatLng;->setLongitude(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/LatLng;

    .line 17
    invoke-direct {p0}, Lcom/google/type/LatLng;->clearLongitude()V

    return-void
.end method

.method private clearLatitude()V
    .locals 2

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/LatLng;->latitude_:D

    .line 60
    return-void
.end method

.method private clearLongitude()V
    .locals 2

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/LatLng;->longitude_:D

    .line 98
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/LatLng;
    .locals 1

    .line 349
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 175
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/LatLng;

    .line 178
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0, p0}, Lcom/google/type/LatLng;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/type/LatLng;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/type/LatLng;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/LatLng;",
            ">;"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLatitude(D)V
    .locals 0
    .param p1, "value"    # D

    .line 48
    iput-wide p1, p0, Lcom/google/type/LatLng;->latitude_:D

    .line 49
    return-void
.end method

.method private setLongitude(D)V
    .locals 0
    .param p1, "value"    # D

    .line 86
    iput-wide p1, p0, Lcom/google/type/LatLng;->longitude_:D

    .line 87
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/type/LatLng$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 330
    :pswitch_0
    return-object v2

    .line 327
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 312
    :pswitch_2
    sget-object v0, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    .line 313
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/LatLng;>;"
    if-nez v0, :cond_1

    .line 314
    const-class v1, Lcom/google/type/LatLng;

    monitor-enter v1

    .line 315
    :try_start_0
    sget-object v2, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 316
    if-nez v0, :cond_0

    .line 317
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 320
    sput-object v0, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    .line 322
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 324
    :cond_1
    :goto_0
    return-object v0

    .line 309
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/LatLng;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object v0

    .line 298
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "latitude_"

    aput-object v3, v0, v2

    const-string v2, "longitude_"

    aput-object v2, v0, v1

    .line 302
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    .line 305
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v2, v1, v0}, Lcom/google/type/LatLng;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 295
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/LatLng$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/LatLng$Builder;-><init>(Lcom/google/type/LatLng$1;)V

    return-object v0

    .line 292
    :pswitch_6
    new-instance v0, Lcom/google/type/LatLng;

    invoke-direct {v0}, Lcom/google/type/LatLng;-><init>()V

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

.method public getLatitude()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/google/type/LatLng;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/google/type/LatLng;->longitude_:D

    return-wide v0
.end method
