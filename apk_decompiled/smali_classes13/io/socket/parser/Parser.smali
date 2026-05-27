.class public Lio/socket/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/parser/Parser$BinaryReconstructor;,
        Lio/socket/parser/Parser$Decoder;,
        Lio/socket/parser/Parser$Encoder;
    }
.end annotation


# static fields
.field public static final ACK:I = 0x3

.field public static final BINARY_ACK:I = 0x6

.field public static final BINARY_EVENT:I = 0x5

.field public static final CONNECT:I = 0x0

.field public static final DISCONNECT:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final EVENT:I = 0x2

.field private static final logger:Ljava/util/logging/Logger;

.field public static protocol:I

.field public static types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    const-class v0, Lio/socket/parser/Parser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/parser/Parser;->logger:Ljava/util/logging/Logger;

    .line 52
    const/4 v0, 0x4

    sput v0, Lio/socket/parser/Parser;->protocol:I

    .line 57
    const-string v1, "CONNECT"

    const-string v2, "DISCONNECT"

    const-string v3, "EVENT"

    const-string v4, "ACK"

    const-string v5, "ERROR"

    const-string v6, "BINARY_EVENT"

    const-string v7, "BINARY_ACK"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/socket/parser/Parser;->types:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 13
    sget-object v0, Lio/socket/parser/Parser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lio/socket/parser/Packet;
    .locals 1

    .line 13
    invoke-static {}, Lio/socket/parser/Parser;->error()Lio/socket/parser/Packet;

    move-result-object v0

    return-object v0
.end method

.method private static error()Lio/socket/parser/Packet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/socket/parser/Packet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lio/socket/parser/Packet;

    const/4 v1, 0x4

    const-string v2, "parser error"

    invoke-direct {v0, v1, v2}, Lio/socket/parser/Packet;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
