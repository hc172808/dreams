.class public final Lcom/google/type/Quaternion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Quaternion.java"

# interfaces
.implements Lcom/google/type/QuaternionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Quaternion$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Quaternion;",
        "Lcom/google/type/Quaternion$Builder;",
        ">;",
        "Lcom/google/type/QuaternionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final W_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3


# instance fields
.field private w_:D

.field private x_:D

.field private y_:D

.field private z_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 574
    new-instance v0, Lcom/google/type/Quaternion;

    invoke-direct {v0}, Lcom/google/type/Quaternion;-><init>()V

    .line 577
    .local v0, "defaultInstance":Lcom/google/type/Quaternion;
    sput-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    .line 578
    const-class v1, Lcom/google/type/Quaternion;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 580
    .end local v0    # "defaultInstance":Lcom/google/type/Quaternion;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/Quaternion;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/Quaternion;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;
    .param p1, "x1"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/type/Quaternion;->setX(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/Quaternion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;

    .line 55
    invoke-direct {p0}, Lcom/google/type/Quaternion;->clearX()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/Quaternion;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;
    .param p1, "x1"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/type/Quaternion;->setY(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/Quaternion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;

    .line 55
    invoke-direct {p0}, Lcom/google/type/Quaternion;->clearY()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/Quaternion;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;
    .param p1, "x1"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/type/Quaternion;->setZ(D)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/Quaternion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;

    .line 55
    invoke-direct {p0}, Lcom/google/type/Quaternion;->clearZ()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/Quaternion;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;
    .param p1, "x1"    # D

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/type/Quaternion;->setW(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/Quaternion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Quaternion;

    .line 55
    invoke-direct {p0}, Lcom/google/type/Quaternion;->clearW()V

    return-void
.end method

.method private clearW()V
    .locals 2

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Quaternion;->w_:D

    .line 212
    return-void
.end method

.method private clearX()V
    .locals 2

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Quaternion;->x_:D

    .line 98
    return-void
.end method

.method private clearY()V
    .locals 2

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Quaternion;->y_:D

    .line 136
    return-void
.end method

.method private clearZ()V
    .locals 2

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Quaternion;->z_:D

    .line 174
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/Quaternion;
    .locals 1

    .line 583
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 289
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Quaternion;)Lcom/google/type/Quaternion$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/Quaternion;

    .line 292
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-virtual {v0, p0}, Lcom/google/type/Quaternion;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/type/Quaternion;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/type/Quaternion;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Quaternion;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Quaternion;",
            ">;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setW(D)V
    .locals 0
    .param p1, "value"    # D

    .line 200
    iput-wide p1, p0, Lcom/google/type/Quaternion;->w_:D

    .line 201
    return-void
.end method

.method private setX(D)V
    .locals 0
    .param p1, "value"    # D

    .line 86
    iput-wide p1, p0, Lcom/google/type/Quaternion;->x_:D

    .line 87
    return-void
.end method

.method private setY(D)V
    .locals 0
    .param p1, "value"    # D

    .line 124
    iput-wide p1, p0, Lcom/google/type/Quaternion;->y_:D

    .line 125
    return-void
.end method

.method private setZ(D)V
    .locals 0
    .param p1, "value"    # D

    .line 162
    iput-wide p1, p0, Lcom/google/type/Quaternion;->z_:D

    .line 163
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/google/type/Quaternion$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 564
    :pswitch_0
    return-object v2

    .line 561
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 546
    :pswitch_2
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/Parser;

    .line 547
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Quaternion;>;"
    if-nez v0, :cond_1

    .line 548
    const-class v1, Lcom/google/type/Quaternion;

    monitor-enter v1

    .line 549
    :try_start_0
    sget-object v2, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 550
    if-nez v0, :cond_0

    .line 551
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 554
    sput-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/Parser;

    .line 556
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 558
    :cond_1
    :goto_0
    return-object v0

    .line 543
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Quaternion;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    return-object v0

    .line 530
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "x_"

    aput-object v3, v0, v2

    const-string v2, "y_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "z_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "w_"

    aput-object v2, v0, v1

    .line 536
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0000\u0002\u0000\u0003\u0000\u0004\u0000"

    .line 539
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-static {v2, v1, v0}, Lcom/google/type/Quaternion;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 527
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/Quaternion$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/Quaternion$Builder;-><init>(Lcom/google/type/Quaternion$1;)V

    return-object v0

    .line 524
    :pswitch_6
    new-instance v0, Lcom/google/type/Quaternion;

    invoke-direct {v0}, Lcom/google/type/Quaternion;-><init>()V

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

.method public getW()D
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/google/type/Quaternion;->w_:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/google/type/Quaternion;->x_:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/google/type/Quaternion;->y_:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/google/type/Quaternion;->z_:D

    return-wide v0
.end method
