.class public final synthetic Lcom/payu/upisdk/upiintent/c$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/upiintent/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/payu/upisdk/PaymentOption;->values()[Lcom/payu/upisdk/PaymentOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    :try_start_0
    sget-object v1, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT_GENERIC:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    return-void
.end method
