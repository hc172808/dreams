.class public final Lcom/google/api/BackendRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BackendRule.java"

# interfaces
.implements Lcom/google/api/BackendRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/BackendRule$Builder;,
        Lcom/google/api/BackendRule$AuthenticationCase;,
        Lcom/google/api/BackendRule$PathTranslation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/BackendRule;",
        "Lcom/google/api/BackendRule$Builder;",
        ">;",
        "Lcom/google/api/BackendRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final DEADLINE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

.field public static final DISABLE_AUTH_FIELD_NUMBER:I = 0x8

.field public static final JWT_AUDIENCE_FIELD_NUMBER:I = 0x7

.field public static final MIN_DEADLINE_FIELD_NUMBER:I = 0x4

.field public static final OPERATION_DEADLINE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_TRANSLATION_FIELD_NUMBER:I = 0x6

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x9

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private address_:Ljava/lang/String;

.field private authenticationCase_:I

.field private authentication_:Ljava/lang/Object;

.field private deadline_:D

.field private minDeadline_:D

.field private operationDeadline_:D

.field private pathTranslation_:I

.field private protocol_:Ljava/lang/String;

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1733
    new-instance v0, Lcom/google/api/BackendRule;

    invoke-direct {v0}, Lcom/google/api/BackendRule;-><init>()V

    .line 1736
    .local v0, "defaultInstance":Lcom/google/api/BackendRule;
    sput-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    .line 1737
    const-class v1, Lcom/google/api/BackendRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1739
    .end local v0    # "defaultInstance":Lcom/google/api/BackendRule;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/BackendRule;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearAuthentication()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/BackendRule;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # D

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/BackendRule;->setMinDeadline(D)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearMinDeadline()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/BackendRule;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # D

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/BackendRule;->setOperationDeadline(D)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearOperationDeadline()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/BackendRule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setPathTranslationValue(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/BackendRule;Lcom/google/api/BackendRule$PathTranslation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Lcom/google/api/BackendRule$PathTranslation;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setPathTranslation(Lcom/google/api/BackendRule$PathTranslation;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearPathTranslation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/BackendRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setJwtAudience(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearJwtAudience()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setJwtAudienceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/BackendRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/BackendRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setDisableAuth(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearDisableAuth()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/BackendRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearProtocol()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/BackendRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearAddress()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule;->setAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/BackendRule;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;
    .param p1, "x1"    # D

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/BackendRule;->setDeadline(D)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/BackendRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/BackendRule;

    .line 13
    invoke-direct {p0}, Lcom/google/api/BackendRule;->clearDeadline()V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 423
    invoke-static {}, Lcom/google/api/BackendRule;->getDefaultInstance()Lcom/google/api/BackendRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    .line 424
    return-void
.end method

.method private clearAuthentication()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private clearDeadline()V
    .locals 2

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/BackendRule;->deadline_:D

    .line 493
    return-void
.end method

.method private clearDisableAuth()V
    .locals 2

    .line 750
    iget v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 754
    :cond_0
    return-void
.end method

.method private clearJwtAudience()V
    .locals 2

    .line 683
    iget v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 687
    :cond_0
    return-void
.end method

.method private clearMinDeadline()V
    .locals 2

    .line 533
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/BackendRule;->minDeadline_:D

    .line 534
    return-void
.end method

.method private clearOperationDeadline()V
    .locals 2

    .line 574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/BackendRule;->operationDeadline_:D

    .line 575
    return-void
.end method

.method private clearPathTranslation()V
    .locals 1

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/BackendRule;->pathTranslation_:I

    .line 617
    return-void
.end method

.method private clearProtocol()V
    .locals 1

    .line 866
    invoke-static {}, Lcom/google/api/BackendRule;->getDefaultInstance()Lcom/google/api/BackendRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    .line 867
    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 299
    invoke-static {}, Lcom/google/api/BackendRule;->getDefaultInstance()Lcom/google/api/BackendRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/BackendRule;
    .locals 1

    .line 1742
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 973
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/BackendRule;)Lcom/google/api/BackendRule$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/BackendRule;

    .line 976
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-virtual {v0, p0}, Lcom/google/api/BackendRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/api/BackendRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/BackendRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 914
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 921
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 901
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 908
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 926
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/BackendRule;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 933
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 1748
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    iput-object p1, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    .line 399
    return-void
.end method

.method private setAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 449
    invoke-static {p1}, Lcom/google/api/BackendRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 450
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    .line 452
    return-void
.end method

.method private setDeadline(D)V
    .locals 0
    .param p1, "value"    # D

    .line 480
    iput-wide p1, p0, Lcom/google/api/BackendRule;->deadline_:D

    .line 481
    return-void
.end method

.method private setDisableAuth(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 736
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 737
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 738
    return-void
.end method

.method private setJwtAudience(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 671
    iput-object p1, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 672
    return-void
.end method

.method private setJwtAudienceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 700
    invoke-static {p1}, Lcom/google/api/BackendRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 701
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    .line 702
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    .line 703
    return-void
.end method

.method private setMinDeadline(D)V
    .locals 0
    .param p1, "value"    # D

    .line 521
    iput-wide p1, p0, Lcom/google/api/BackendRule;->minDeadline_:D

    .line 522
    return-void
.end method

.method private setOperationDeadline(D)V
    .locals 0
    .param p1, "value"    # D

    .line 562
    iput-wide p1, p0, Lcom/google/api/BackendRule;->operationDeadline_:D

    .line 563
    return-void
.end method

.method private setPathTranslation(Lcom/google/api/BackendRule$PathTranslation;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/BackendRule$PathTranslation;

    .line 608
    invoke-virtual {p1}, Lcom/google/api/BackendRule$PathTranslation;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/api/BackendRule;->pathTranslation_:I

    .line 610
    return-void
.end method

.method private setPathTranslationValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 601
    iput p1, p0, Lcom/google/api/BackendRule;->pathTranslation_:I

    .line 602
    return-void
.end method

.method private setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    iput-object p1, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    .line 841
    return-void
.end method

.method private setProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 893
    invoke-static {p1}, Lcom/google/api/BackendRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 894
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    .line 896
    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    iput-object p1, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    .line 288
    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 312
    invoke-static {p1}, Lcom/google/api/BackendRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 313
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1676
    sget-object v0, Lcom/google/api/BackendRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1726
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1723
    :pswitch_0
    return-object v2

    .line 1720
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1705
    :pswitch_2
    sget-object v0, Lcom/google/api/BackendRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1706
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/BackendRule;>;"
    if-nez v0, :cond_1

    .line 1707
    const-class v1, Lcom/google/api/BackendRule;

    monitor-enter v1

    .line 1708
    :try_start_0
    sget-object v2, Lcom/google/api/BackendRule;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1709
    if-nez v0, :cond_0

    .line 1710
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1713
    sput-object v0, Lcom/google/api/BackendRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1715
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1717
    :cond_1
    :goto_0
    return-object v0

    .line 1702
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/BackendRule;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    return-object v0

    .line 1684
    :pswitch_4
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "authentication_"

    aput-object v3, v0, v2

    const-string v2, "authenticationCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "selector_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "deadline_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "minDeadline_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "operationDeadline_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pathTranslation_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "protocol_"

    aput-object v2, v0, v1

    .line 1695
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0000\u0004\u0000\u0005\u0000\u0006\u000c\u0007\u023b\u0000\u0008:\u0000\t\u0208"

    .line 1698
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/BackendRule;->DEFAULT_INSTANCE:Lcom/google/api/BackendRule;

    invoke-static {v2, v1, v0}, Lcom/google/api/BackendRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1681
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/BackendRule$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/BackendRule$Builder;-><init>(Lcom/google/api/BackendRule$1;)V

    return-object v0

    .line 1678
    :pswitch_6
    new-instance v0, Lcom/google/api/BackendRule;

    invoke-direct {v0}, Lcom/google/api/BackendRule;-><init>()V

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/api/BackendRule;->address_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationCase()Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1

    .line 236
    iget v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    invoke-static {v0}, Lcom/google/api/BackendRule$AuthenticationCase;->forNumber(I)Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v0

    return-object v0
.end method

.method public getDeadline()D
    .locals 2

    .line 467
    iget-wide v0, p0, Lcom/google/api/BackendRule;->deadline_:D

    return-wide v0
.end method

.method public getDisableAuth()Z
    .locals 2

    .line 719
    iget v0, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 722
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getJwtAudience()Ljava/lang/String;
    .locals 3

    .line 632
    const-string v0, ""

    .line 633
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 636
    :cond_0
    return-object v0
.end method

.method public getJwtAudienceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 651
    const-string v0, ""

    .line 652
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/api/BackendRule;->authenticationCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 653
    iget-object v1, p0, Lcom/google/api/BackendRule;->authentication_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 655
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getMinDeadline()D
    .locals 2

    .line 508
    iget-wide v0, p0, Lcom/google/api/BackendRule;->minDeadline_:D

    return-wide v0
.end method

.method public getOperationDeadline()D
    .locals 2

    .line 549
    iget-wide v0, p0, Lcom/google/api/BackendRule;->operationDeadline_:D

    return-wide v0
.end method

.method public getPathTranslation()Lcom/google/api/BackendRule$PathTranslation;
    .locals 2

    .line 593
    iget v0, p0, Lcom/google/api/BackendRule;->pathTranslation_:I

    invoke-static {v0}, Lcom/google/api/BackendRule$PathTranslation;->forNumber(I)Lcom/google/api/BackendRule$PathTranslation;

    move-result-object v0

    .line 594
    .local v0, "result":Lcom/google/api/BackendRule$PathTranslation;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/api/BackendRule$PathTranslation;->UNRECOGNIZED:Lcom/google/api/BackendRule$PathTranslation;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getPathTranslationValue()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/google/api/BackendRule;->pathTranslation_:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/google/api/BackendRule;->protocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/api/BackendRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
