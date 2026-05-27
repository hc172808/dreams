.class public final Lcom/google/type/TimeOfDay;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TimeOfDay.java"

# interfaces
.implements Lcom/google/type/TimeOfDayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/TimeOfDay$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/TimeOfDay;",
        "Lcom/google/type/TimeOfDay$Builder;",
        ">;",
        "Lcom/google/type/TimeOfDayOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

.field public static final HOURS_FIELD_NUMBER:I = 0x1

.field public static final MINUTES_FIELD_NUMBER:I = 0x2

.field public static final NANOS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/TimeOfDay;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x3


# instance fields
.field private hours_:I

.field private minutes_:I

.field private nanos_:I

.field private seconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 506
    new-instance v0, Lcom/google/type/TimeOfDay;

    invoke-direct {v0}, Lcom/google/type/TimeOfDay;-><init>()V

    .line 509
    .local v0, "defaultInstance":Lcom/google/type/TimeOfDay;
    sput-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    .line 510
    const-class v1, Lcom/google/type/TimeOfDay;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 512
    .end local v0    # "defaultInstance":Lcom/google/type/TimeOfDay;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/TimeOfDay;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/TimeOfDay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeOfDay;->setHours(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/TimeOfDay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeOfDay;->clearHours()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/TimeOfDay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeOfDay;->setMinutes(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/TimeOfDay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeOfDay;->clearMinutes()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/TimeOfDay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeOfDay;->setSeconds(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/TimeOfDay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeOfDay;->clearSeconds()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/TimeOfDay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeOfDay;->setNanos(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/TimeOfDay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/TimeOfDay;

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeOfDay;->clearNanos()V

    return-void
.end method

.method private clearHours()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/TimeOfDay;->hours_:I

    .line 61
    return-void
.end method

.method private clearMinutes()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/TimeOfDay;->minutes_:I

    .line 99
    return-void
.end method

.method private clearNanos()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/TimeOfDay;->nanos_:I

    .line 178
    return-void
.end method

.method private clearSeconds()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/TimeOfDay;->seconds_:I

    .line 140
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/TimeOfDay;
    .locals 1

    .line 515
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/TimeOfDay$Builder;
    .locals 1

    .line 255
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/TimeOfDay;)Lcom/google/type/TimeOfDay$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/TimeOfDay;

    .line 258
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-virtual {v0, p0}, Lcom/google/type/TimeOfDay;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/type/TimeOfDay;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/type/TimeOfDay;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeOfDay;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeOfDay;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/TimeOfDay;",
            ">;"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHours(I)V
    .locals 0
    .param p1, "value"    # I

    .line 48
    iput p1, p0, Lcom/google/type/TimeOfDay;->hours_:I

    .line 49
    return-void
.end method

.method private setMinutes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 87
    iput p1, p0, Lcom/google/type/TimeOfDay;->minutes_:I

    .line 88
    return-void
.end method

.method private setNanos(I)V
    .locals 0
    .param p1, "value"    # I

    .line 166
    iput p1, p0, Lcom/google/type/TimeOfDay;->nanos_:I

    .line 167
    return-void
.end method

.method private setSeconds(I)V
    .locals 0
    .param p1, "value"    # I

    .line 127
    iput p1, p0, Lcom/google/type/TimeOfDay;->seconds_:I

    .line 128
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/google/type/TimeOfDay$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 496
    :pswitch_0
    return-object v2

    .line 493
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_2
    sget-object v0, Lcom/google/type/TimeOfDay;->PARSER:Lcom/google/protobuf/Parser;

    .line 479
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/TimeOfDay;>;"
    if-nez v0, :cond_1

    .line 480
    const-class v1, Lcom/google/type/TimeOfDay;

    monitor-enter v1

    .line 481
    :try_start_0
    sget-object v2, Lcom/google/type/TimeOfDay;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 482
    if-nez v0, :cond_0

    .line 483
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 486
    sput-object v0, Lcom/google/type/TimeOfDay;->PARSER:Lcom/google/protobuf/Parser;

    .line 488
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 490
    :cond_1
    :goto_0
    return-object v0

    .line 475
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/TimeOfDay;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    return-object v0

    .line 462
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hours_"

    aput-object v3, v0, v2

    const-string v2, "minutes_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "seconds_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nanos_"

    aput-object v2, v0, v1

    .line 468
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004"

    .line 471
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/TimeOfDay;->DEFAULT_INSTANCE:Lcom/google/type/TimeOfDay;

    invoke-static {v2, v1, v0}, Lcom/google/type/TimeOfDay;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 459
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/TimeOfDay$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/TimeOfDay$Builder;-><init>(Lcom/google/type/TimeOfDay$1;)V

    return-object v0

    .line 456
    :pswitch_6
    new-instance v0, Lcom/google/type/TimeOfDay;

    invoke-direct {v0}, Lcom/google/type/TimeOfDay;-><init>()V

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

.method public getHours()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/type/TimeOfDay;->hours_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/type/TimeOfDay;->minutes_:I

    return v0
.end method

.method public getNanos()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/google/type/TimeOfDay;->nanos_:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/type/TimeOfDay;->seconds_:I

    return v0
.end method
