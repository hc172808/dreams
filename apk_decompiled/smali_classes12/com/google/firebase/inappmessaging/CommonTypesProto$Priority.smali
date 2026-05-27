.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3484
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;-><init>()V

    .line 3487
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 3488
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3490
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3250
    return-void
.end method

.method static synthetic access$5100()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 3244
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .param p1, "x1"    # I

    .line 3244
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->setValue(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 3244
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 3286
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    .line 3287
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 3493
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1

    .line 3364
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 3367
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3341
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3347
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3305
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3312
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3352
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3359
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3329
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3336
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3292
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3299
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3317
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3324
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
            ">;"
        }
    .end annotation

    .line 3499
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 3275
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    .line 3276
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3436
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3474
    :pswitch_0
    return-object v2

    .line 3471
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3456
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    .line 3457
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;>;"
    if-nez v0, :cond_1

    .line 3458
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    monitor-enter v1

    .line 3459
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 3460
    if-nez v0, :cond_0

    .line 3461
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 3464
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    .line 3466
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3468
    :cond_1
    :goto_0
    return-object v0

    .line 3453
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0

    .line 3444
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "value_"

    aput-object v2, v0, v1

    .line 3447
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    .line 3449
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3441
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object v0

    .line 3438
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;-><init>()V

    return-object v0

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

.method public getValue()I
    .locals 1

    .line 3263
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    return v0
.end method
