.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentVariant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field private index_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4271
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;-><init>()V

    .line 4274
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    .line 4275
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4277
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3898
    return-void
.end method

.method static synthetic access$6000()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1

    .line 3892
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .param p1, "x1"    # I

    .line 3892
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->setIndex(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    .line 3892
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->clearIndex()V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3892
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3892
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    .line 3892
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->clearContent()V

    return-void
.end method

.method private clearContent()V
    .locals 1

    .line 3999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 4001
    return-void
.end method

.method private clearIndex()V
    .locals 1

    .line 3934
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->index_:I

    .line 3935
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1

    .line 4280
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method private mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3983
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-eqz v0, :cond_0

    .line 3984
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3985
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3986
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    goto :goto_0

    .line 3988
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3991
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    .line 4078
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    .line 4081
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4055
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4061
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4019
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4026
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4066
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4073
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4043
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4050
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4006
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4013
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4031
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4038
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;",
            ">;"
        }
    .end annotation

    .line 4286
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3969
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3970
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 3972
    return-void
.end method

.method private setIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .line 3923
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->index_:I

    .line 3924
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 4221
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4261
    :pswitch_0
    return-object v2

    .line 4258
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 4243
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->PARSER:Lcom/google/protobuf/Parser;

    .line 4244
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;>;"
    if-nez v0, :cond_1

    .line 4245
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    monitor-enter v1

    .line 4246
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 4247
    if-nez v0, :cond_0

    .line 4248
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 4251
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->PARSER:Lcom/google/protobuf/Parser;

    .line 4253
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4255
    :cond_1
    :goto_0
    return-object v0

    .line 4240
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    return-object v0

    .line 4229
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "index_"

    aput-object v3, v0, v2

    const-string v2, "content_"

    aput-object v2, v0, v1

    .line 4233
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\t"

    .line 4236
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 4226
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object v0

    .line 4223
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;-><init>()V

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

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 3959
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 3911
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->index_:I

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .line 3948
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
