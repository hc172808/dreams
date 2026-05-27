.class final Lcom/payu/socketverification/socket/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/socketverification/socket/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/socketverification/socket/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field private static final synthetic h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 94
    const/4 v0, 0x1

    sput v0, Lcom/payu/socketverification/socket/b$a;->a:I

    .line 95
    const/4 v1, 0x2

    sput v1, Lcom/payu/socketverification/socket/b$a;->b:I

    .line 96
    const/4 v2, 0x3

    sput v2, Lcom/payu/socketverification/socket/b$a;->c:I

    .line 97
    const/4 v3, 0x4

    sput v3, Lcom/payu/socketverification/socket/b$a;->d:I

    .line 98
    const/4 v4, 0x5

    sput v4, Lcom/payu/socketverification/socket/b$a;->e:I

    .line 99
    const/4 v5, 0x6

    sput v5, Lcom/payu/socketverification/socket/b$a;->f:I

    .line 100
    const/4 v6, 0x7

    sput v6, Lcom/payu/socketverification/socket/b$a;->g:I

    .line 93
    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v1, v7, v0

    aput v2, v7, v1

    aput v3, v7, v2

    aput v4, v7, v3

    aput v5, v7, v4

    aput v6, v7, v5

    sput-object v7, Lcom/payu/socketverification/socket/b$a;->h:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .line 93
    sget-object v0, Lcom/payu/socketverification/socket/b$a;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
