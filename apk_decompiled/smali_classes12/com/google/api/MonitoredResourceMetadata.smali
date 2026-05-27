.class public final Lcom/google/api/MonitoredResourceMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoredResourceMetadata.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MonitoredResourceMetadata$Builder;,
        Lcom/google/api/MonitoredResourceMetadata$UserLabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/MonitoredResourceMetadata;",
        "Lcom/google/api/MonitoredResourceMetadata$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceMetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_LABELS_FIELD_NUMBER:I = 0x1

.field public static final USER_LABELS_FIELD_NUMBER:I = 0x2


# instance fields
.field private systemLabels_:Lcom/google/protobuf/Struct;

.field private userLabels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 650
    new-instance v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {v0}, Lcom/google/api/MonitoredResourceMetadata;-><init>()V

    .line 653
    .local v0, "defaultInstance":Lcom/google/api/MonitoredResourceMetadata;
    sput-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    .line 654
    const-class v1, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 656
    .end local v0    # "defaultInstance":Lcom/google/api/MonitoredResourceMetadata;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 142
    nop

    .line 144
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/MonitoredResourceMetadata;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/MonitoredResourceMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Struct;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->setSystemLabels(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/MonitoredResourceMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Struct;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->mergeSystemLabels(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/MonitoredResourceMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/MonitoredResourceMetadata;

    .line 18
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->clearSystemLabels()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/MonitoredResourceMetadata;

    .line 18
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->getMutableUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private clearSystemLabels()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 129
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/MonitoredResourceMetadata;
    .locals 1

    .line 659
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method private getMutableUserLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetMutableUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableUserLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeSystemLabels(Lcom/google/protobuf/Struct;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 106
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Struct;

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 111
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 319
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/MonitoredResourceMetadata;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/MonitoredResourceMetadata;

    .line 322
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0, p0}, Lcom/google/api/MonitoredResourceMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/api/MonitoredResourceMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceMetadata;",
            ">;"
        }
    .end annotation

    .line 665
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSystemLabels(Lcom/google/protobuf/Struct;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    iput-object p1, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 84
    return-void
.end method


# virtual methods
.method public containsUserLabels(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

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

    .line 600
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 643
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 640
    :pswitch_0
    return-object v2

    .line 637
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 622
    :pswitch_2
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 623
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/MonitoredResourceMetadata;>;"
    if-nez v0, :cond_1

    .line 624
    const-class v1, Lcom/google/api/MonitoredResourceMetadata;

    monitor-enter v1

    .line 625
    :try_start_0
    sget-object v2, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 626
    if-nez v0, :cond_0

    .line 627
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 630
    sput-object v0, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 632
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 634
    :cond_1
    :goto_0
    return-object v0

    .line 619
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/MonitoredResourceMetadata;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object v0

    .line 608
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "systemLabels_"

    aput-object v3, v0, v2

    const-string v2, "userLabels_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/api/MonitoredResourceMetadata$UserLabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object v2, v0, v1

    .line 613
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001\t\u00022"

    .line 615
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v2, v1, v0}, Lcom/google/api/MonitoredResourceMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 605
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/MonitoredResourceMetadata$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/MonitoredResourceMetadata$Builder;-><init>(Lcom/google/api/MonitoredResourceMetadata$1;)V

    return-object v0

    .line 602
    :pswitch_6
    new-instance v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {v0}, Lcom/google/api/MonitoredResourceMetadata;-><init>()V

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

.method public getSystemLabels()Lcom/google/protobuf/Struct;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserLabelsCount()I
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getUserLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    nop

    .line 194
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    nop

    .line 210
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 211
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getUserLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    nop

    .line 226
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 227
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public hasSystemLabels()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
