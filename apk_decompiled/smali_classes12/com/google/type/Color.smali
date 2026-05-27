.class public final Lcom/google/type/Color;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Color.java"

# interfaces
.implements Lcom/google/type/ColorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Color$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Color;",
        "Lcom/google/type/Color$Builder;",
        ">;",
        "Lcom/google/type/ColorOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALPHA_FIELD_NUMBER:I = 0x4

.field public static final BLUE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/type/Color;

.field public static final GREEN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final RED_FIELD_NUMBER:I = 0x1


# instance fields
.field private alpha_:Lcom/google/protobuf/FloatValue;

.field private blue_:F

.field private green_:F

.field private red_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 841
    new-instance v0, Lcom/google/type/Color;

    invoke-direct {v0}, Lcom/google/type/Color;-><init>()V

    .line 844
    .local v0, "defaultInstance":Lcom/google/type/Color;
    sput-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    .line 845
    const-class v1, Lcom/google/type/Color;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 847
    .end local v0    # "defaultInstance":Lcom/google/type/Color;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/Color;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/Color;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;
    .param p1, "x1"    # F

    .line 115
    invoke-direct {p0, p1}, Lcom/google/type/Color;->setRed(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/Color;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;

    .line 115
    invoke-direct {p0}, Lcom/google/type/Color;->clearRed()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/Color;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;
    .param p1, "x1"    # F

    .line 115
    invoke-direct {p0, p1}, Lcom/google/type/Color;->setGreen(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/Color;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;

    .line 115
    invoke-direct {p0}, Lcom/google/type/Color;->clearGreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/Color;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;
    .param p1, "x1"    # F

    .line 115
    invoke-direct {p0, p1}, Lcom/google/type/Color;->setBlue(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/Color;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;

    .line 115
    invoke-direct {p0}, Lcom/google/type/Color;->clearBlue()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;
    .param p1, "x1"    # Lcom/google/protobuf/FloatValue;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/type/Color;->setAlpha(Lcom/google/protobuf/FloatValue;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;
    .param p1, "x1"    # Lcom/google/protobuf/FloatValue;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/type/Color;->mergeAlpha(Lcom/google/protobuf/FloatValue;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/type/Color;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/Color;

    .line 115
    invoke-direct {p0}, Lcom/google/type/Color;->clearAlpha()V

    return-void
.end method

.method private clearAlpha()V
    .locals 1

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    .line 340
    return-void
.end method

.method private clearBlue()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/Color;->blue_:F

    .line 234
    return-void
.end method

.method private clearGreen()V
    .locals 1

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/Color;->green_:F

    .line 196
    return-void
.end method

.method private clearRed()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/Color;->red_:F

    .line 158
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/Color;
    .locals 1

    .line 850
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    return-object v0
.end method

.method private mergeAlpha(Lcom/google/protobuf/FloatValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/FloatValue;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    iget-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDefaultInstance()Lcom/google/protobuf/FloatValue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    .line 317
    invoke-static {v0}, Lcom/google/protobuf/FloatValue;->newBuilder(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/FloatValue$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue;

    iput-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    goto :goto_0

    .line 319
    :cond_0
    iput-object p1, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    .line 322
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/type/Color$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Color;)Lcom/google/type/Color$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/Color;

    .line 420
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-virtual {v0, p0}, Lcom/google/type/Color;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/type/Color;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/type/Color;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Color;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/Color;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Color;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlpha(Lcom/google/protobuf/FloatValue;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/FloatValue;

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    iput-object p1, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    .line 295
    return-void
.end method

.method private setBlue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 222
    iput p1, p0, Lcom/google/type/Color;->blue_:F

    .line 223
    return-void
.end method

.method private setGreen(F)V
    .locals 0
    .param p1, "value"    # F

    .line 184
    iput p1, p0, Lcom/google/type/Color;->green_:F

    .line 185
    return-void
.end method

.method private setRed(F)V
    .locals 0
    .param p1, "value"    # F

    .line 146
    iput p1, p0, Lcom/google/type/Color;->red_:F

    .line 147
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/google/type/Color$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 834
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 831
    :pswitch_0
    return-object v2

    .line 828
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 813
    :pswitch_2
    sget-object v0, Lcom/google/type/Color;->PARSER:Lcom/google/protobuf/Parser;

    .line 814
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Color;>;"
    if-nez v0, :cond_1

    .line 815
    const-class v1, Lcom/google/type/Color;

    monitor-enter v1

    .line 816
    :try_start_0
    sget-object v2, Lcom/google/type/Color;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 817
    if-nez v0, :cond_0

    .line 818
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 821
    sput-object v0, Lcom/google/type/Color;->PARSER:Lcom/google/protobuf/Parser;

    .line 823
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 825
    :cond_1
    :goto_0
    return-object v0

    .line 810
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/Color;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    return-object v0

    .line 797
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "red_"

    aput-object v3, v0, v2

    const-string v2, "green_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "blue_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alpha_"

    aput-object v2, v0, v1

    .line 803
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0001\u0002\u0001\u0003\u0001\u0004\t"

    .line 806
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/Color;->DEFAULT_INSTANCE:Lcom/google/type/Color;

    invoke-static {v2, v1, v0}, Lcom/google/type/Color;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 794
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/Color$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/Color$Builder;-><init>(Lcom/google/type/Color$1;)V

    return-object v0

    .line 791
    :pswitch_6
    new-instance v0, Lcom/google/type/Color;

    invoke-direct {v0}, Lcom/google/type/Color;-><init>()V

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

.method public getAlpha()Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDefaultInstance()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBlue()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/google/type/Color;->blue_:F

    return v0
.end method

.method public getGreen()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/google/type/Color;->green_:F

    return v0
.end method

.method public getRed()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/type/Color;->red_:F

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/type/Color;->alpha_:Lcom/google/protobuf/FloatValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
