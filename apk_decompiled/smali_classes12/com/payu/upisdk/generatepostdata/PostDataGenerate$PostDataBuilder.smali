.class public Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/generatepostdata/PostDataGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostDataBuilder"
.end annotation


# instance fields
.field private a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->c:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    return-object p0
.end method

.method static synthetic b(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/payu/upisdk/generatepostdata/PostDataGenerate;
    .locals 2

    .line 61
    new-instance v0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;-><init>(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;B)V

    return-object v0
.end method

.method public setPaymentMode(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    .locals 0
    .param p1, "mPaymentMode"    # Ljava/lang/String;

    .line 50
    nop

    .end local p1    # "mPaymentMode":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->b:Ljava/lang/String;

    .line 51
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    return-object p0
.end method

.method public setPaymentParamUpiSdk(Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;)Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    .locals 0
    .param p1, "mPaymentParams"    # Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    .line 45
    nop

    .end local p1    # "mPaymentParams":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    .line 46
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    return-object p0
.end method
