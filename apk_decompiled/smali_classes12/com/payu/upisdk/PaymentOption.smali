.class public final enum Lcom/payu/upisdk/PaymentOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/upisdk/PaymentOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PHONEPE:Lcom/payu/upisdk/PaymentOption;

.field public static final enum SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

.field public static final enum TEZ:Lcom/payu/upisdk/PaymentOption;

.field public static final enum UPI_COLLECT:Lcom/payu/upisdk/PaymentOption;

.field public static final enum UPI_COLLECT_GENERIC:Lcom/payu/upisdk/PaymentOption;

.field public static final enum UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

.field private static final synthetic e:[Lcom/payu/upisdk/PaymentOption;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 8
    new-instance v7, Lcom/payu/upisdk/PaymentOption;

    const-string v1, "UPI_INTENT"

    const/4 v2, 0x0

    const-string v3, "INTENT"

    const-string v4, "com.payu.upisdk.UpiWrapper"

    const-string v5, "com.payu.upisdk"

    const-string v6, "GENERIC_INTENT"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    .line 9
    new-instance v0, Lcom/payu/upisdk/PaymentOption;

    const-string v9, "UPI_COLLECT"

    const/4 v10, 0x1

    const-string v11, "upi"

    const-string v12, "com.payu.upisdk.UpiWrapper"

    const-string v13, "com.payu.upisdk"

    const-string v14, "UPI_COLLECT"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT:Lcom/payu/upisdk/PaymentOption;

    .line 10
    new-instance v1, Lcom/payu/upisdk/PaymentOption;

    const-string v16, "UPI_COLLECT_GENERIC"

    const/16 v17, 0x2

    const-string v18, "COLLECT_GENERIC"

    const-string v19, "com.payu.upisdk.UpiWrapper"

    const-string v20, "com.payu.upisdk"

    const-string v21, "UPI_COLLECT_GENERIC"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT_GENERIC:Lcom/payu/upisdk/PaymentOption;

    .line 11
    new-instance v2, Lcom/payu/upisdk/PaymentOption;

    const-string v9, "TEZ"

    const/4 v10, 0x3

    const-string v11, "Tez"

    const-string v12, "com.payu.gpay.GPayWrapper"

    const-string v13, "com.payu.gpay"

    const-string v14, "TEZ"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    .line 12
    new-instance v3, Lcom/payu/upisdk/PaymentOption;

    const-string v16, "PHONEPE"

    const/16 v17, 0x4

    const-string v18, "PPINTENT"

    const-string v19, "com.payu.phonepe.PhonePeWrapper"

    const-string v20, "com.payu.phonepe"

    const-string v21, "PHONEPE"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    .line 13
    new-instance v4, Lcom/payu/upisdk/PaymentOption;

    const-string v9, "SAMSUNGPAY"

    const/4 v10, 0x5

    const-string v11, "SAMPAY"

    const-string v12, "com.payu.samsungpay.SamsungWrapper"

    const-string v13, "com.payu.samsungpay"

    const-string v14, "SAMSUNGPAY"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/payu/upisdk/PaymentOption;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    .line 6
    const/4 v5, 0x6

    new-array v5, v5, [Lcom/payu/upisdk/PaymentOption;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    sput-object v5, Lcom/payu/upisdk/PaymentOption;->e:[Lcom/payu/upisdk/PaymentOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "paymentName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "analyticsKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    nop

    .end local p3    # "paymentName":Ljava/lang/String;
    iput-object p3, p0, Lcom/payu/upisdk/PaymentOption;->a:Ljava/lang/String;

    .line 28
    nop

    .end local p5    # "packageName":Ljava/lang/String;
    iput-object p5, p0, Lcom/payu/upisdk/PaymentOption;->c:Ljava/lang/String;

    .line 29
    nop

    .end local p6    # "analyticsKey":Ljava/lang/String;
    iput-object p6, p0, Lcom/payu/upisdk/PaymentOption;->d:Ljava/lang/String;

    .line 30
    nop

    .end local p0    # "this":Lcom/payu/upisdk/PaymentOption;
    .end local p4    # "className":Ljava/lang/String;
    iput-object p4, p0, Lcom/payu/upisdk/PaymentOption;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/upisdk/PaymentOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/payu/upisdk/PaymentOption;

    .end local p0    # "name":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/payu/upisdk/PaymentOption;

    return-object p0
.end method

.method public static values()[Lcom/payu/upisdk/PaymentOption;
    .locals 1

    .line 6
    sget-object v0, Lcom/payu/upisdk/PaymentOption;->e:[Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, [Lcom/payu/upisdk/PaymentOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/upisdk/PaymentOption;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsKey()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/payu/upisdk/PaymentOption;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/payu/upisdk/PaymentOption;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/payu/upisdk/PaymentOption;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/payu/upisdk/PaymentOption;->a:Ljava/lang/String;

    return-object v0
.end method
