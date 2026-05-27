.class public final Lcom/google/type/Fraction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Fraction.java"

# interfaces
.implements Lcom/google/type/FractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Fraction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Fraction;",
        "Lcom/google/type/Fraction$Builder;",
        ">;",
        "Lcom/google/type/FractionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/Fraction;

.field public static final DENOMINATOR_FIELD_NUMBER:I = 0x2

.field public static final NUMERATOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Fraction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private denominator_:J

.field private numerator_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 338
    new-instance v0, Lcom/google/type/Fraction;

    invoke-direct {v0}, Lcom/google/type/Fraction;-><init>()V

    .line 341
    .local v0, "defaultInstance":Lcom/google/type/Fraction;
    sput-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    .line 342
    const-class v1, Lcom/google/type/Fraction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 344
    .end local v0    # "defaultInstance":Lcom/google/type/Fraction;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/Fraction;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/Fraction;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Fraction;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/type/Fraction;->setNumerator(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/Fraction;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Fraction;

    .line 13
    invoke-direct {p0}, Lcom/google/type/Fraction;->clearNumerator()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/Fraction;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Fraction;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/type/Fraction;->setDenominator(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/Fraction;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Fraction;

    .line 13
    invoke-direct {p0}, Lcom/google/type/Fraction;->clearDenominator()V

    return-void
.end method

.method private clearDenominator()V
    .locals 2

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Fraction;->denominator_:J

    .line 97
    return-void
.end method

.method private clearNumerator()V
    .locals 2

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/type/Fraction;->numerator_:J

    .line 56
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/Fraction;
    .locals 1

    .line 347
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 174
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Fraction;)Lcom/google/type/Fraction$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/Fraction;

    .line 177
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0, p0}, Lcom/google/type/Fraction;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/type/Fraction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/type/Fraction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Fraction;",
            ">;"
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDenominator(J)V
    .locals 0
    .param p1, "value"    # J

    .line 84
    iput-wide p1, p0, Lcom/google/type/Fraction;->denominator_:J

    .line 85
    return-void
.end method

.method private setNumerator(J)V
    .locals 0
    .param p1, "value"    # J

    .line 44
    iput-wide p1, p0, Lcom/google/type/Fraction;->numerator_:J

    .line 45
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/google/type/Fraction$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 328
    :pswitch_0
    return-object v2

    .line 325
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_2
    sget-object v0, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 311
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Fraction;>;"
    if-nez v0, :cond_1

    .line 312
    const-class v1, Lcom/google/type/Fraction;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v2, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 314
    if-nez v0, :cond_0

    .line 315
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 318
    sput-object v0, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 320
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 322
    :cond_1
    :goto_0
    return-object v0

    .line 307
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Fraction;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object v0

    .line 296
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "numerator_"

    aput-object v3, v0, v2

    const-string v2, "denominator_"

    aput-object v2, v0, v1

    .line 300
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002"

    .line 303
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v2, v1, v0}, Lcom/google/type/Fraction;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 293
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/Fraction$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/Fraction$Builder;-><init>(Lcom/google/type/Fraction$1;)V

    return-object v0

    .line 290
    :pswitch_6
    new-instance v0, Lcom/google/type/Fraction;

    invoke-direct {v0}, Lcom/google/type/Fraction;-><init>()V

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

.method public getDenominator()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/google/type/Fraction;->denominator_:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/type/Fraction;->numerator_:J

    return-wide v0
.end method
