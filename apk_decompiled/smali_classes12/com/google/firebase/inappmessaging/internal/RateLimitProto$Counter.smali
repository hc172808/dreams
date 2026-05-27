.class public final Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RateLimitProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/RateLimitProto$CounterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/RateLimitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Counter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$CounterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_TIME_EPOCH_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private startTimeEpoch_:J

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 838
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;-><init>()V

    .line 841
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 842
    const-class v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 844
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 529
    return-void
.end method

.method static synthetic access$300()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1

    .line 523
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .param p1, "x1"    # J

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->setValue(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 523
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .param p1, "x1"    # J

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->setStartTimeEpoch(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 523
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->clearStartTimeEpoch()V

    return-void
.end method

.method private clearStartTimeEpoch()V
    .locals 2

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->startTimeEpoch_:J

    .line 604
    return-void
.end method

.method private clearValue()V
    .locals 2

    .line 565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->value_:J

    .line 566
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1

    .line 847
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;
    .locals 1

    .line 681
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 684
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 616
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 634
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 853
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStartTimeEpoch(J)V
    .locals 0
    .param p1, "value"    # J

    .line 592
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->startTimeEpoch_:J

    .line 593
    return-void
.end method

.method private setValue(J)V
    .locals 0
    .param p1, "value"    # J

    .line 554
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->value_:J

    .line 555
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 831
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 828
    :pswitch_0
    return-object v2

    .line 825
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 810
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->PARSER:Lcom/google/protobuf/Parser;

    .line 811
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;>;"
    if-nez v0, :cond_1

    .line 812
    const-class v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    monitor-enter v1

    .line 813
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 814
    if-nez v0, :cond_0

    .line 815
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 818
    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->PARSER:Lcom/google/protobuf/Parser;

    .line 820
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 822
    :cond_1
    :goto_0
    return-object v0

    .line 807
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0

    .line 796
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "value_"

    aput-object v3, v0, v2

    const-string v2, "startTimeEpoch_"

    aput-object v2, v0, v1

    .line 800
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002"

    .line 803
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 793
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;)V

    return-object v0

    .line 790
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;-><init>()V

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

.method public getStartTimeEpoch()J
    .locals 2

    .line 580
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->startTimeEpoch_:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .line 542
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->value_:J

    return-wide v0
.end method
