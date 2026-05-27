.class public final enum Lcom/payu/upisdk/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/upisdk/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/payu/upisdk/b;

.field private static final synthetic i:[Lcom/payu/upisdk/b;


# instance fields
.field public b:Landroid/view/View;

.field public c:Lcom/payu/upisdk/c/d;

.field public d:Lcom/payu/upisdk/bean/UpiConfig;

.field e:Lcom/payu/upisdk/upi/IValidityCheck;

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

.field public h:Lcom/payu/upisdk/PaymentOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/payu/upisdk/b;

    const-string v1, "SINGLETON"

    invoke-direct {v0, v1}, Lcom/payu/upisdk/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 13
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/upisdk/b;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/payu/upisdk/b;->i:[Lcom/payu/upisdk/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/payu/upisdk/b;->f:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/upisdk/b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/payu/upisdk/b;

    .end local p0    # "name":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/payu/upisdk/b;

    return-object p0
.end method

.method public static values()[Lcom/payu/upisdk/b;
    .locals 1

    .line 13
    sget-object v0, Lcom/payu/upisdk/b;->i:[Lcom/payu/upisdk/b;

    invoke-virtual {v0}, [Lcom/payu/upisdk/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/upisdk/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/payu/upisdk/b;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/payu/upisdk/b;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
