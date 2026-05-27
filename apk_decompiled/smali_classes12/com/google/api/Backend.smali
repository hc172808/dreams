.class public final Lcom/google/api/Backend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Backend.java"

# interfaces
.implements Lcom/google/api/BackendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Backend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Backend;",
        "Lcom/google/api/Backend$Builder;",
        ">;",
        "Lcom/google/api/BackendOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Backend;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1


# instance fields
.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 487
    new-instance v0, Lcom/google/api/Backend;

    invoke-direct {v0}, Lcom/google/api/Backend;-><init>()V

    .line 490
    .local v0, "defaultInstance":Lcom/google/api/Backend;
    sput-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    .line 491
    const-class v1, Lcom/google/api/Backend;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 493
    .end local v0    # "defaultInstance":Lcom/google/api/Backend;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Backend;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->setRules(ILcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;
    .param p1, "x1"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addRules(Lcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->addRules(ILcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Backend;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Backend;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;

    .line 13
    invoke-direct {p0}, Lcom/google/api/Backend;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Backend;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Backend;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->removeRules(I)V

    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/BackendRule;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/BackendRule;>;"
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 143
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method private addRules(ILcom/google/api/BackendRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/BackendRule;

    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 130
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method private addRules(Lcom/google/api/BackendRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/BackendRule;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 116
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 156
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 85
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/BackendRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    nop

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 89
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Backend;
    .locals 1

    .line 496
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Backend$Builder;
    .locals 1

    .line 245
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Backend;)Lcom/google/api/Backend$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Backend;

    .line 248
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0, p0}, Lcom/google/api/Backend;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 166
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 167
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private setRules(ILcom/google/api/BackendRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/BackendRule;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 103
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/google/api/Backend$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 477
    :pswitch_0
    return-object v2

    .line 474
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 459
    :pswitch_2
    sget-object v0, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    .line 460
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Backend;>;"
    if-nez v0, :cond_1

    .line 461
    const-class v1, Lcom/google/api/Backend;

    monitor-enter v1

    .line 462
    :try_start_0
    sget-object v2, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 463
    if-nez v0, :cond_0

    .line 464
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 467
    sput-object v0, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    .line 469
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 471
    :cond_1
    :goto_0
    return-object v0

    .line 456
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Backend;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0

    .line 446
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rules_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/api/BackendRule;

    aput-object v2, v0, v1

    .line 450
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 452
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v2, v1, v0}, Lcom/google/api/Backend;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 443
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Backend$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Backend$Builder;-><init>(Lcom/google/api/Backend$1;)V

    return-object v0

    .line 440
    :pswitch_6
    new-instance v0, Lcom/google/api/Backend;

    invoke-direct {v0}, Lcom/google/api/Backend;-><init>()V

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

.method public getRules(I)Lcom/google/api/BackendRule;
    .locals 1
    .param p1, "index"    # I

    .line 69
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/BackendRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 81
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRuleOrBuilder;

    return-object v0
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/BackendRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
