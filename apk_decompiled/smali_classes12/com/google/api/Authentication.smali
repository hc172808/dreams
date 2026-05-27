.class public final Lcom/google/api/Authentication;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Authentication.java"

# interfaces
.implements Lcom/google/api/AuthenticationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Authentication$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Authentication;",
        "Lcom/google/api/Authentication$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Authentication;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Authentication;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDERS_FIELD_NUMBER:I = 0x4

.field public static final RULES_FIELD_NUMBER:I = 0x3


# instance fields
.field private providers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 801
    new-instance v0, Lcom/google/api/Authentication;

    invoke-direct {v0}, Lcom/google/api/Authentication;-><init>()V

    .line 804
    .local v0, "defaultInstance":Lcom/google/api/Authentication;
    sput-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    .line 805
    const-class v1, Lcom/google/api/Authentication;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 807
    .end local v0    # "defaultInstance":Lcom/google/api/Authentication;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 31
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 32
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Authentication;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthenticationRule;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->setRules(ILcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addAllProviders(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Authentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;

    .line 24
    invoke-direct {p0}, Lcom/google/api/Authentication;->clearProviders()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Authentication;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->removeProviders(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # Lcom/google/api/AuthenticationRule;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addRules(Lcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthenticationRule;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->addRules(ILcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Authentication;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;

    .line 24
    invoke-direct {p0}, Lcom/google/api/Authentication;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Authentication;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->removeRules(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthProvider;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->setProviders(ILcom/google/api/AuthProvider;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # Lcom/google/api/AuthProvider;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addProviders(Lcom/google/api/AuthProvider;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Authentication;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthProvider;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->addProviders(ILcom/google/api/AuthProvider;)V

    return-void
.end method

.method private addAllProviders(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/AuthProvider;>;"
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 295
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 297
    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthenticationRule;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/AuthenticationRule;>;"
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 155
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 157
    return-void
.end method

.method private addProviders(ILcom/google/api/AuthProvider;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthProvider;

    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 283
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method private addProviders(Lcom/google/api/AuthProvider;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/AuthProvider;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 270
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method private addRules(ILcom/google/api/AuthenticationRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthenticationRule;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 142
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method private addRules(Lcom/google/api/AuthenticationRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/AuthenticationRule;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 128
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private clearProviders()V
    .locals 1

    .line 306
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 307
    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 168
    return-void
.end method

.method private ensureProvidersIsMutable()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 241
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/AuthProvider;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    nop

    .line 243
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 245
    :cond_0
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 97
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/AuthenticationRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    nop

    .line 99
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 101
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Authentication;
    .locals 1

    .line 810
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 395
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Authentication;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Authentication;

    .line 398
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0, p0}, Lcom/google/api/Authentication;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/api/Authentication;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/api/Authentication;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Authentication;",
            ">;"
        }
    .end annotation

    .line 816
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeProviders(I)V
    .locals 1
    .param p1, "index"    # I

    .line 316
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 317
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private removeRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 178
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 179
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method private setProviders(ILcom/google/api/AuthProvider;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthProvider;

    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 258
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method private setRules(ILcom/google/api/AuthenticationRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthenticationRule;

    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 115
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/google/api/Authentication$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 791
    :pswitch_0
    return-object v2

    .line 788
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 773
    :pswitch_2
    sget-object v0, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    .line 774
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Authentication;>;"
    if-nez v0, :cond_1

    .line 775
    const-class v1, Lcom/google/api/Authentication;

    monitor-enter v1

    .line 776
    :try_start_0
    sget-object v2, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 777
    if-nez v0, :cond_0

    .line 778
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 781
    sput-object v0, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    .line 783
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 785
    :cond_1
    :goto_0
    return-object v0

    .line 770
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Authentication;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object v0

    .line 757
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rules_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/api/AuthenticationRule;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "providers_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/api/AuthProvider;

    aput-object v2, v0, v1

    .line 763
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0003\u0004\u0002\u0000\u0002\u0000\u0003\u001b\u0004\u001b"

    .line 766
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v2, v1, v0}, Lcom/google/api/Authentication;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 754
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Authentication$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Authentication$Builder;-><init>(Lcom/google/api/Authentication$1;)V

    return-object v0

    .line 751
    :pswitch_6
    new-instance v0, Lcom/google/api/Authentication;

    invoke-direct {v0}, Lcom/google/api/Authentication;-><init>()V

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

.method public getProviders(I)Lcom/google/api/AuthProvider;
    .locals 1
    .param p1, "index"    # I

    .line 226
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthProvider;

    return-object v0
.end method

.method public getProvidersCount()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProvidersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProvidersOrBuilder(I)Lcom/google/api/AuthProviderOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 237
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthProviderOrBuilder;

    return-object v0
.end method

.method public getProvidersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AuthProviderOrBuilder;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p1, "index"    # I

    .line 81
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/AuthenticationRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRuleOrBuilder;

    return-object v0
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AuthenticationRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
