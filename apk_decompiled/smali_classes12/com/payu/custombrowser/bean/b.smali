.class public final enum Lcom/payu/custombrowser/bean/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/custombrowser/bean/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/bean/b;

.field public static final enum SINGLETON:Lcom/payu/custombrowser/bean/b;


# instance fields
.field private paymentOptionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/payu/custombrowser/util/PaymentOption;",
            ">;"
        }
    .end annotation
.end field

.field private payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/payu/custombrowser/bean/b;

    const-string v1, "SINGLETON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payu/custombrowser/bean/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    .line 11
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/custombrowser/bean/b;

    aput-object v0, v1, v2

    sput-object v1, Lcom/payu/custombrowser/bean/b;->$VALUES:[Lcom/payu/custombrowser/bean/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/payu/custombrowser/bean/b;->paymentOptionSet:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/bean/b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/payu/custombrowser/bean/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/b;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/bean/b;
    .locals 1

    .line 11
    sget-object v0, Lcom/payu/custombrowser/bean/b;->$VALUES:[Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/bean/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/bean/b;

    return-object v0
.end method


# virtual methods
.method public getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/payu/custombrowser/bean/b;->payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    return-object v0
.end method

.method public isPaymentOptionAvailabilityCalled(Lcom/payu/custombrowser/util/PaymentOption;)Z
    .locals 4
    .param p1, "paymentOptionName"    # Lcom/payu/custombrowser/util/PaymentOption;

    .line 49
    iget-object v0, p0, Lcom/payu/custombrowser/bean/b;->paymentOptionSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/util/PaymentOption;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Payment options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/bean/b;->paymentOptionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V
    .locals 1
    .param p1, "paymentOption"    # Lcom/payu/custombrowser/util/PaymentOption;

    .line 71
    iget-object v0, p0, Lcom/payu/custombrowser/bean/b;->paymentOptionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V
    .locals 1
    .param p1, "paymentOptionName"    # Lcom/payu/custombrowser/util/PaymentOption;

    .line 63
    iget-object v0, p0, Lcom/payu/custombrowser/bean/b;->paymentOptionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V
    .locals 0
    .param p1, "payuCustomBrowserCallback"    # Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 40
    iput-object p1, p0, Lcom/payu/custombrowser/bean/b;->payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 41
    return-void
.end method
