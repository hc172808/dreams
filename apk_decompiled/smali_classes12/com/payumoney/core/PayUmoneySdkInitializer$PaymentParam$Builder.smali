.class public Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private amount:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fUrl:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private isDebug:Z

.field private key:Ljava/lang/String;

.field private merchantId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private sUrl:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private udf1:Ljava/lang/String;

.field private udf10:Ljava/lang/String;

.field private udf2:Ljava/lang/String;

.field private udf3:Ljava/lang/String;

.field private udf4:Ljava/lang/String;

.field private udf5:Ljava/lang/String;

.field private udf6:Ljava/lang/String;

.field private udf7:Ljava/lang/String;

.field private udf8:Ljava/lang/String;

.field private udf9:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf1:Ljava/lang/String;

    .line 306
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf2:Ljava/lang/String;

    .line 307
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf3:Ljava/lang/String;

    .line 308
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf4:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf5:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf6:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf7:Ljava/lang/String;

    .line 312
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf8:Ljava/lang/String;

    .line 313
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf9:Ljava/lang/String;

    .line 314
    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf10:Ljava/lang/String;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-boolean v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->isDebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf8:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf9:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->amount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->fUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 293
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->firstName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;-><init>(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;Lcom/payumoney/core/PayUmoneySdkInitializer$1;)V

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .line 327
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->amount:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 367
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->email:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->firstName:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public setIsDebug(Z)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "isDebug"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->isDebug:Z

    .line 323
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 332
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->key:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public setMerchantId(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "merchantId"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->merchantId:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->phone:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->productName:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setTxnId(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->txnId:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setUdf1(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .line 377
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf1:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public setUdf10(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf10"    # Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf10:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public setUdf2(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf2:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setUdf3(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf3:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public setUdf4(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf4:Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public setUdf5(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .line 397
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf5:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public setUdf6(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf6"    # Ljava/lang/String;

    .line 402
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf6:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public setUdf7(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf7"    # Ljava/lang/String;

    .line 407
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf7:Ljava/lang/String;

    .line 408
    return-object p0
.end method

.method public setUdf8(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf8"    # Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf8:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public setUdf9(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "udf9"    # Ljava/lang/String;

    .line 417
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->udf9:Ljava/lang/String;

    .line 418
    return-object p0
.end method

.method public setfUrl(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "fUrl"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->fUrl:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public setsUrl(Ljava/lang/String;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .locals 0
    .param p1, "sUrl"    # Ljava/lang/String;

    .line 347
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->sUrl:Ljava/lang/String;

    .line 348
    return-object p0
.end method
