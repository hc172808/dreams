.class public final Lcom/google/api/SystemParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SystemParameters.java"

# interfaces
.implements Lcom/google/api/SystemParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SystemParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SystemParameters;",
        "Lcom/google/api/SystemParameters$Builder;",
        ">;",
        "Lcom/google/api/SystemParametersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameters;",
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
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 955
    new-instance v0, Lcom/google/api/SystemParameters;

    invoke-direct {v0}, Lcom/google/api/SystemParameters;-><init>()V

    .line 958
    .local v0, "defaultInstance":Lcom/google/api/SystemParameters;
    sput-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    .line 959
    const-class v1, Lcom/google/api/SystemParameters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 961
    .end local v0    # "defaultInstance":Lcom/google/api/SystemParameters;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/api/SystemParameters;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SystemParameters;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/SystemParameterRule;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/SystemParameters;->setRules(ILcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;
    .param p1, "x1"    # Lcom/google/api/SystemParameterRule;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->addRules(Lcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/SystemParameterRule;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/SystemParameters;->addRules(ILcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SystemParameters;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SystemParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;

    .line 17
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SystemParameters;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/SystemParameters;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->removeRules(I)V

    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameterRule;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/SystemParameterRule;>;"
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 327
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 329
    return-void
.end method

.method private addRules(ILcom/google/api/SystemParameterRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameterRule;

    .line 292
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 294
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 295
    return-void
.end method

.method private addRules(Lcom/google/api/SystemParameterRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameterRule;

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 260
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 359
    invoke-static {}, Lcom/google/api/SystemParameters;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 360
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 189
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/SystemParameterRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    nop

    .line 191
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 193
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SystemParameters;
    .locals 1

    .line 964
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 469
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/SystemParameters;

    .line 472
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0, p0}, Lcom/google/api/SystemParameters;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/api/SystemParameters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/api/SystemParameters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameters;",
            ">;"
        }
    .end annotation

    .line 970
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 390
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 391
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method private setRules(ILcom/google/api/SystemParameterRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameterRule;

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 227
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/google/api/SystemParameters$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 948
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 945
    :pswitch_0
    return-object v2

    .line 942
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 927
    :pswitch_2
    sget-object v0, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 928
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SystemParameters;>;"
    if-nez v0, :cond_1

    .line 929
    const-class v1, Lcom/google/api/SystemParameters;

    monitor-enter v1

    .line 930
    :try_start_0
    sget-object v2, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 931
    if-nez v0, :cond_0

    .line 932
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 935
    sput-object v0, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 937
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 939
    :cond_1
    :goto_0
    return-object v0

    .line 924
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/SystemParameters;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object v0

    .line 914
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rules_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/api/SystemParameterRule;

    aput-object v2, v0, v1

    .line 918
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 920
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v2, v1, v0}, Lcom/google/api/SystemParameters;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 911
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/SystemParameters$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/SystemParameters$Builder;-><init>(Lcom/google/api/SystemParameters$1;)V

    return-object v0

    .line 908
    :pswitch_6
    new-instance v0, Lcom/google/api/SystemParameters;

    invoke-direct {v0}, Lcom/google/api/SystemParameters;-><init>()V

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

.method public getRules(I)Lcom/google/api/SystemParameterRule;
    .locals 1
    .param p1, "index"    # I

    .line 153
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameterRule;

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/SystemParameterRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 185
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameterRuleOrBuilder;

    return-object v0
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/SystemParameterRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
