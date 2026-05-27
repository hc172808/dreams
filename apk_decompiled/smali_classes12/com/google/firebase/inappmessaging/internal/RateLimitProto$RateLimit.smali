.class public final Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RateLimitProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/RateLimitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateLimit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;,
        Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$LimitsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

.field public static final LIMITS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private limits_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 477
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;-><init>()V

    .line 480
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 481
    const-class v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 483
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 94
    nop

    .line 96
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    .line 82
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1

    .line 76
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getMutableLimitsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1

    .line 486
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method private getMutableLimitsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetMutableLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLimits()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLimits()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->limits_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    .line 271
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 274
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsLimits(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 470
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 467
    :pswitch_0
    return-object v2

    .line 464
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 449
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->PARSER:Lcom/google/protobuf/Parser;

    .line 450
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;>;"
    if-nez v0, :cond_1

    .line 451
    const-class v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    monitor-enter v1

    .line 452
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 453
    if-nez v0, :cond_0

    .line 454
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 457
    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->PARSER:Lcom/google/protobuf/Parser;

    .line 459
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 461
    :cond_1
    :goto_0
    return-object v0

    .line 446
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object v0

    .line 436
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "limits_"

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$LimitsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object v2, v0, v1

    .line 440
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 442
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 433
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;)V

    return-object v0

    .line 430
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;-><init>()V

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

.method public getLimits()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLimitsCount()I
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLimitsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 145
    nop

    .line 146
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    nop

    .line 162
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 163
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getLimitsOrThrow(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    nop

    .line 178
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->internalGetLimits()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 179
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v1

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
