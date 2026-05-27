.class public final Lcom/payu/upisdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/payu/upisdk/PaymentOption;

.field private b:Lcom/payu/upisdk/c/b;


# direct methods
.method public constructor <init>(Lcom/payu/upisdk/PaymentOption;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/payu/upisdk/a/a;->a:Lcom/payu/upisdk/PaymentOption;

    .line 17
    return-void
.end method

.method private static b()Lcom/payu/upisdk/c/b;
    .locals 1

    .line 49
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2050
    iget-object v0, v0, Lcom/payu/upisdk/b;->c:Lcom/payu/upisdk/c/d;

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/payu/upisdk/c/d;

    invoke-direct {v0}, Lcom/payu/upisdk/c/d;-><init>()V

    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3050
    iget-object v0, v0, Lcom/payu/upisdk/b;->c:Lcom/payu/upisdk/c/d;

    .line 52
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/payu/upisdk/c/b;
    .locals 2

    .line 20
    sget-object v0, Lcom/payu/upisdk/a/a$1;->a:[I

    iget-object v1, p0, Lcom/payu/upisdk/a/a;->a:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    nop

    .line 2039
    new-instance v0, Lcom/payu/upisdk/c/a;

    invoke-direct {v0}, Lcom/payu/upisdk/c/a;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/payu/upisdk/a/a;->b:Lcom/payu/upisdk/c/b;

    goto :goto_0

    .line 25
    :pswitch_1
    invoke-static {}, Lcom/payu/upisdk/a/a;->b()Lcom/payu/upisdk/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/a/a;->b:Lcom/payu/upisdk/c/b;

    .line 26
    goto :goto_0

    .line 22
    :pswitch_2
    nop

    .line 1043
    new-instance v0, Lcom/payu/upisdk/c/c;

    invoke-direct {v0}, Lcom/payu/upisdk/c/c;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/payu/upisdk/a/a;->b:Lcom/payu/upisdk/c/b;

    .line 23
    nop

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/payu/upisdk/a/a;->b:Lcom/payu/upisdk/c/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
