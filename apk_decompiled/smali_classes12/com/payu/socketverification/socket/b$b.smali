.class final Lcom/payu/socketverification/socket/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/socketverification/socket/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    const-wide/16 v0, 0x14

    sput-wide v0, Lcom/payu/socketverification/socket/b$b;->a:J

    .line 167
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/payu/socketverification/socket/b$b;->b:J

    .line 168
    sput-wide v0, Lcom/payu/socketverification/socket/b$b;->c:J

    return-void
.end method

.method static synthetic a()J
    .locals 2

    .line 164
    sget-wide v0, Lcom/payu/socketverification/socket/b$b;->b:J

    return-wide v0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 164
    sput-wide p0, Lcom/payu/socketverification/socket/b$b;->a:J

    return-wide p0
.end method

.method static synthetic b()J
    .locals 2

    .line 164
    sget-wide v0, Lcom/payu/socketverification/socket/b$b;->a:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 164
    sput-wide p0, Lcom/payu/socketverification/socket/b$b;->b:J

    return-wide p0
.end method

.method static synthetic c(J)J
    .locals 0

    .line 164
    sput-wide p0, Lcom/payu/socketverification/socket/b$b;->c:J

    return-wide p0
.end method
