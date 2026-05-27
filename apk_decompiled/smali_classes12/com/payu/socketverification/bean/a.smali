.class public final enum Lcom/payu/socketverification/bean/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/socketverification/bean/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/payu/socketverification/bean/a;

.field private static final synthetic e:[Lcom/payu/socketverification/bean/a;


# instance fields
.field public b:Z

.field public c:I

.field public d:Lcom/payu/socketverification/interfaces/PayUSocketEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/payu/socketverification/bean/a;

    const-string v1, "SINGLETON"

    invoke-direct {v0, v1}, Lcom/payu/socketverification/bean/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/payu/socketverification/bean/a;->a:Lcom/payu/socketverification/bean/a;

    .line 5
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/socketverification/bean/a;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/payu/socketverification/bean/a;->e:[Lcom/payu/socketverification/bean/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/socketverification/bean/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/payu/socketverification/bean/a;

    .end local p0    # "name":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/payu/socketverification/bean/a;

    return-object p0
.end method

.method public static values()[Lcom/payu/socketverification/bean/a;
    .locals 1

    .line 5
    sget-object v0, Lcom/payu/socketverification/bean/a;->e:[Lcom/payu/socketverification/bean/a;

    invoke-virtual {v0}, [Lcom/payu/socketverification/bean/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/socketverification/bean/a;

    return-object v0
.end method
