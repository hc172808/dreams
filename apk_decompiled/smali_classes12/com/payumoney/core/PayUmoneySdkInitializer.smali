.class public Lcom/payumoney/core/PayUmoneySdkInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->a:Ljava/lang/Boolean;

    .line 37
    const-string v0, "https://www.payumoney.com"

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->b:Ljava/lang/String;

    .line 38
    const-string v0, "https://file.payumoney.com"

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->c:Ljava/lang/String;

    .line 39
    const-string v0, "https://secure.payu.in/_payment"

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->d:Ljava/lang/String;

    .line 43
    const-string v0, "https://www.payumoney.com/tnc.html"

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDebugMode()Ljava/lang/Boolean;
    .locals 1

    .line 74
    sget-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static a()V
    .locals 1

    .line 94
    const-string v0, "https://www.payumoney.com/sandbox"

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setBaseUrl(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setBaseUrlImage(Ljava/lang/String;)V

    .line 96
    const-string v0, "https://sandboxsecure.payu.in/_payment"

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setWebviewRedirectionUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private static b()V
    .locals 1

    .line 100
    const-string v0, "https://www.payumoney.com"

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setBaseUrl(Ljava/lang/String;)V

    .line 101
    const-string v0, "https://file.payumoney.com"

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setBaseUrlImage(Ljava/lang/String;)V

    .line 102
    const-string v0, "https://secure.payu.in/_payment"

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setWebviewRedirectionUrl(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getBaseUrlImage()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getTermsAndConditionsUrl()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getWebviewRedirectionUrl()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .line 50
    sput-object p0, Lcom/payumoney/core/PayUmoneySdkInitializer;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static setBaseUrlImage(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .line 58
    sput-object p0, Lcom/payumoney/core/PayUmoneySdkInitializer;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "isDebugMode"    # Z

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/payumoney/core/PayUmoneySdkInitializer;->a:Ljava/lang/Boolean;

    .line 79
    if-eqz p0, :cond_0

    .line 81
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->a()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->b()V

    .line 85
    :goto_0
    return-void
.end method

.method public static setWebviewRedirectionUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .line 70
    sput-object p0, Lcom/payumoney/core/PayUmoneySdkInitializer;->d:Ljava/lang/String;

    .line 71
    return-void
.end method
