.class public final enum Lcom/payu/custombrowser/util/PaymentOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/custombrowser/util/PaymentOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/util/PaymentOption;

.field public static final enum PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

.field public static final enum SAMSUNGPAY:Lcom/payu/custombrowser/util/PaymentOption;

.field public static final enum TEZ:Lcom/payu/custombrowser/util/PaymentOption;

.field public static final enum UPI_COLLECT:Lcom/payu/custombrowser/util/PaymentOption;

.field public static final enum UPI_INTENT:Lcom/payu/custombrowser/util/PaymentOption;


# instance fields
.field private analyticsKey:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private isDefault:Z

.field private packageName:Ljava/lang/String;

.field private paymentName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 11
    new-instance v8, Lcom/payu/custombrowser/util/PaymentOption;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v1, "SAMSUNGPAY"

    const/4 v2, 0x0

    const-string v3, "SAMPAY"

    const-string v4, "com.payu.samsungpay.SamsungWrapper"

    const-string v5, "com.payu.upisdk"

    const-string v6, "SAMSUNGPAY"

    move-object v0, v8

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/payu/custombrowser/util/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v8, Lcom/payu/custombrowser/util/PaymentOption;->SAMSUNGPAY:Lcom/payu/custombrowser/util/PaymentOption;

    .line 12
    new-instance v11, Lcom/payu/custombrowser/util/PaymentOption;

    const-string v1, "PHONEPE"

    const/4 v2, 0x1

    const-string v3, "PPINTENT"

    const-string v4, "com.payu.phonepe.PhonePeWrapper"

    const-string v5, "com.payu.upisdk"

    const-string v6, "PHONEPE"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/payu/custombrowser/util/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v11, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    .line 13
    new-instance v0, Lcom/payu/custombrowser/util/PaymentOption;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v13, "UPI_INTENT"

    const/4 v14, 0x2

    const-string v15, "INTENT"

    const-string v16, "com.payu.upisdk.UpiWrapper"

    const-string v17, "com.payu.upisdk"

    const-string v18, "GENERIC_INTENT"

    move-object v12, v0

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Lcom/payu/custombrowser/util/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/payu/custombrowser/util/PaymentOption;->UPI_INTENT:Lcom/payu/custombrowser/util/PaymentOption;

    .line 14
    new-instance v3, Lcom/payu/custombrowser/util/PaymentOption;

    const-string v13, "TEZ"

    const/4 v14, 0x3

    const-string v15, "TEZ"

    const-string v16, "com.payu.upisdk.UpiWrapper"

    const-string v17, "com.payu.upisdk"

    const-string v18, "TEZ"

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lcom/payu/custombrowser/util/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/payu/custombrowser/util/PaymentOption;->TEZ:Lcom/payu/custombrowser/util/PaymentOption;

    .line 15
    new-instance v4, Lcom/payu/custombrowser/util/PaymentOption;

    const-string v13, "UPI_COLLECT"

    const/4 v14, 0x4

    const-string v15, "upi"

    const-string v16, "com.payu.upisdk.UpiWrapper"

    const-string v17, "com.payu.upisdk"

    const-string v18, "UPI_COLLECT"

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Lcom/payu/custombrowser/util/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v4, Lcom/payu/custombrowser/util/PaymentOption;->UPI_COLLECT:Lcom/payu/custombrowser/util/PaymentOption;

    .line 10
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/payu/custombrowser/util/PaymentOption;

    aput-object v8, v2, v9

    aput-object v11, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v0, 0x3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object v4, v2, v0

    sput-object v2, Lcom/payu/custombrowser/util/PaymentOption;->$VALUES:[Lcom/payu/custombrowser/util/PaymentOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p3, "paymentName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "analyticsKey"    # Ljava/lang/String;
    .param p7, "isDefault"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/payu/custombrowser/util/PaymentOption;->paymentName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/payu/custombrowser/util/PaymentOption;->className:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/payu/custombrowser/util/PaymentOption;->packageName:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/payu/custombrowser/util/PaymentOption;->analyticsKey:Ljava/lang/String;

    .line 44
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/payu/custombrowser/util/PaymentOption;->isDefault:Z

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/util/PaymentOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/payu/custombrowser/util/PaymentOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/util/PaymentOption;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/util/PaymentOption;
    .locals 1

    .line 10
    sget-object v0, Lcom/payu/custombrowser/util/PaymentOption;->$VALUES:[Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/util/PaymentOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/util/PaymentOption;

    return-object v0
.end method


# virtual methods
.method public getAnalyticsKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/payu/custombrowser/util/PaymentOption;->analyticsKey:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/payu/custombrowser/util/PaymentOption;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/payu/custombrowser/util/PaymentOption;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/payu/custombrowser/util/PaymentOption;->paymentName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/payu/custombrowser/util/PaymentOption;->isDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0
    .param p1, "aDefault"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/payu/custombrowser/util/PaymentOption;->isDefault:Z

    .line 28
    return-void
.end method
