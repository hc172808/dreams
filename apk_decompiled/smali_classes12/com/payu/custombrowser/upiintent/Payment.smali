.class public final enum Lcom/payu/custombrowser/upiintent/Payment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/custombrowser/upiintent/Payment;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/upiintent/Payment;

.field public static final enum GENERIC_INTENT:Lcom/payu/custombrowser/upiintent/Payment;

.field public static final enum TEZ:Lcom/payu/custombrowser/upiintent/Payment;


# instance fields
.field private isWebFlowSupported:Z

.field private minSdk:I

.field private packageName:Ljava/lang/String;

.field private paymentName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 12
    new-instance v7, Lcom/payu/custombrowser/upiintent/Payment;

    const-string v1, "TEZ"

    const/4 v2, 0x0

    const-string v3, "Tez"

    const-string v4, "com.google.android.apps.nbu.paisa.user"

    const/4 v5, 0x1

    const/16 v6, 0x13

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/payu/custombrowser/upiintent/Payment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    sput-object v7, Lcom/payu/custombrowser/upiintent/Payment;->TEZ:Lcom/payu/custombrowser/upiintent/Payment;

    .line 13
    new-instance v0, Lcom/payu/custombrowser/upiintent/Payment;

    const-string v9, "GENERIC_INTENT"

    const/4 v10, 0x1

    const-string v11, "INTENT"

    const-string v12, ""

    const/4 v13, 0x0

    const/16 v14, 0x10

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/payu/custombrowser/upiintent/Payment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    sput-object v0, Lcom/payu/custombrowser/upiintent/Payment;->GENERIC_INTENT:Lcom/payu/custombrowser/upiintent/Payment;

    .line 6
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/payu/custombrowser/upiintent/Payment;

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/payu/custombrowser/upiintent/Payment;->$VALUES:[Lcom/payu/custombrowser/upiintent/Payment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p3, "paymentName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isWebFlowSupported"    # Z
    .param p6, "minSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/payu/custombrowser/upiintent/Payment;->paymentName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/payu/custombrowser/upiintent/Payment;->packageName:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/payu/custombrowser/upiintent/Payment;->isWebFlowSupported:Z

    .line 24
    iput p6, p0, Lcom/payu/custombrowser/upiintent/Payment;->minSdk:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/upiintent/Payment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/payu/custombrowser/upiintent/Payment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/upiintent/Payment;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/upiintent/Payment;
    .locals 1

    .line 6
    sget-object v0, Lcom/payu/custombrowser/upiintent/Payment;->$VALUES:[Lcom/payu/custombrowser/upiintent/Payment;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/upiintent/Payment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/upiintent/Payment;

    return-object v0
.end method


# virtual methods
.method public getMinSdk()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/payu/custombrowser/upiintent/Payment;->minSdk:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/payu/custombrowser/upiintent/Payment;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/upiintent/Payment;->paymentName:Ljava/lang/String;

    return-object v0
.end method

.method public isWebFlowSupported()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/payu/custombrowser/upiintent/Payment;->isWebFlowSupported:Z

    return v0
.end method

.method public setWebFlowSupported(Z)V
    .locals 0
    .param p1, "webFlowSupported"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/payu/custombrowser/upiintent/Payment;->isWebFlowSupported:Z

    .line 41
    return-void
.end method
