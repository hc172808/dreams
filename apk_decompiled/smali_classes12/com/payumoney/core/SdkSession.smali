.class public Lcom/payumoney/core/SdkSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/SdkSession$SessionData;,
        Lcom/payumoney/core/SdkSession$Task;,
        Lcom/payumoney/core/SdkSession$Method;,
        Lcom/payumoney/core/SdkSession$PaymentMode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/payumoney/core/SdkSession$PaymentMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/payumoney/core/SdkSession;

.field private static f:Ljava/lang/String;

.field public static paymentId:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/Long;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/Long;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private final l:Lcom/payumoney/core/SdkSession$SessionData;

.field private final m:Landroid/content/Context;

.field private final n:Landroid/os/Handler;

.field private o:Z

.field private p:Lcom/android/volley/RequestQueue;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/payumoney/core/utils/ResponseParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    const-class v0, Lcom/payumoney/core/SdkSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payumoney/core/SdkSession;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;

    .line 80
    sput-object v0, Lcom/payumoney/core/SdkSession;->paymentId:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/payumoney/core/SdkSession;->a:Ljava/util/Map;

    .line 89
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->CC:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "Credit CardDetail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->DC:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "Debit CardDetail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->NB:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "Net Banking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->EMI:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "EMI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->PAYU_MONEY:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "PayUMoney"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->STORED_CARDS:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "Stored Cards"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/payumoney/core/SdkSession$PaymentMode;->CASH:Lcom/payumoney/core/SdkSession$PaymentMode;

    const-string v2, "Cash CardDetail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->g:Z

    .line 82
    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->h:Z

    .line 83
    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->i:Z

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payumoney/core/SdkSession;->j:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->k:Z

    .line 98
    new-instance v2, Lcom/payumoney/core/SdkSession$SessionData;

    invoke-direct {v2, p0}, Lcom/payumoney/core/SdkSession$SessionData;-><init>(Lcom/payumoney/core/SdkSession;)V

    iput-object v2, p0, Lcom/payumoney/core/SdkSession;->l:Lcom/payumoney/core/SdkSession$SessionData;

    .line 101
    iput-object v1, p0, Lcom/payumoney/core/SdkSession;->b:Ljava/lang/Long;

    iput-object v1, p0, Lcom/payumoney/core/SdkSession;->c:Ljava/lang/Long;

    iput-object v1, p0, Lcom/payumoney/core/SdkSession;->d:Ljava/lang/Long;

    .line 102
    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->o:Z

    .line 104
    const-string v3, ""

    iput-object v3, p0, Lcom/payumoney/core/SdkSession;->q:Ljava/lang/String;

    .line 105
    iput-object v3, p0, Lcom/payumoney/core/SdkSession;->r:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/payumoney/core/SdkSession;->s:Lcom/payumoney/core/utils/ResponseParser;

    .line 110
    new-instance v3, Lcom/payumoney/core/utils/ResponseParser;

    invoke-direct {v3}, Lcom/payumoney/core/utils/ResponseParser;-><init>()V

    iput-object v3, p0, Lcom/payumoney/core/SdkSession;->s:Lcom/payumoney/core/utils/ResponseParser;

    .line 115
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/payumoney/core/SdkSession;->n:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    .line 117
    sput-object v1, Lcom/payumoney/core/SdkSession;->f:Ljava/lang/String;

    .line 118
    iput-boolean v0, p0, Lcom/payumoney/core/SdkSession;->o:Z

    .line 120
    const-string v0, "access_token"

    invoke-static {p1, v0}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v2, v0}, Lcom/payumoney/core/SdkSession$SessionData;->setToken(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkSession;)Lcom/payumoney/core/utils/ResponseParser;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/payumoney/core/SdkSession;->s:Lcom/payumoney/core/utils/ResponseParser;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/payumoney/core/SdkSession;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    const-string v0, "/payuPaisa/up.php"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 576
    nop

    .line 577
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 578
    const-string v0, "?"

    const/4 v1, 0x1

    .line 579
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 581
    const-string v3, "="

    if-eqz v1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_1
    const/4 v1, 0x0

    .line 587
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 588
    goto :goto_0

    .line 589
    :cond_1
    return-object v0
.end method

.method private a(Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V
    .locals 2

    .line 593
    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->n:Landroid/os/Handler;

    new-instance v1, Lcom/payumoney/core/SdkSession$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/payumoney/core/SdkSession$11;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 594
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "time out error"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->n:Landroid/os/Handler;

    new-instance v1, Lcom/payumoney/core/SdkSession$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/payumoney/core/SdkSession$10;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    nop

    .line 609
    :goto_1
    return-void
.end method

.method private a(Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->n:Landroid/os/Handler;

    new-instance v1, Lcom/payumoney/core/SdkSession$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/payumoney/core/SdkSession$12;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/SdkSession;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 774
    invoke-static {p1}, Lcom/payumoney/core/utils/SdkHelper;->isNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "authType"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 775
    const-string p1, "OTP"

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 777
    :cond_0
    const-string p1, "Password"

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :goto_0
    const-string p1, "EventSource"

    const-string v0, "SDK"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkSession;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/payumoney/core/SdkSession;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    return-object p0
.end method

.method private b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getUserSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserSessionCookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getDeviceCustomPropertyJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customBrowserProperty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    const-string v2, "UserSessionCookiePageUrl"

    invoke-static {v1, v2}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->isUpdateSessionRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "updateSession"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1297
    const-string v0, "[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/payumoney/core/SdkSession;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/payumoney/core/SdkSession;->o:Z

    return p0
.end method

.method public static declared-synchronized createNewInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/payumoney/core/SdkSession;

    monitor-enter v0

    .line 185
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;

    .line 186
    new-instance v1, Lcom/payumoney/core/SdkSession;

    invoke-direct {v1, p0}, Lcom/payumoney/core/SdkSession;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-object v1

    .line 184
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic d(Lcom/payumoney/core/SdkSession;)Ljava/util/Map;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/payumoney/core/SdkSession;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/payumoney/core/SdkSession;

    monitor-enter v0

    .line 174
    :try_start_0
    sget-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/payumoney/core/SdkSession;

    invoke-direct {v1, p0}, Lcom/payumoney/core/SdkSession;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;

    .line 177
    :cond_0
    sget-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 173
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstanceForService()Lcom/payumoney/core/SdkSession;
    .locals 2

    const-class v0, Lcom/payumoney/core/SdkSession;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/payumoney/core/SdkSession;->e:Lcom/payumoney/core/SdkSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLoggedIn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 638
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "access_token"

    invoke-static {p0, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 639
    :catch_0
    move-exception v1

    .line 640
    return v0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 789
    :try_start_0
    const-string v0, "access_token"

    invoke-static {p0, v0}, Lcom/payumoney/core/utils/SharedPrefsUtils;->deleteKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    :goto_0
    return-void
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 253
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-object v0, Lcom/payumoney/core/SdkSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 254
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/payumoney/core/SdkSession;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 255
    return-void
.end method

.method public cancelPendingRequests()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->p:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/payumoney/core/SdkSession$1;

    invoke-direct {v1, p0}, Lcom/payumoney/core/SdkSession$1;-><init>(Lcom/payumoney/core/SdkSession;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 270
    return-void
.end method

.method public cancelPendingRequests(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->p:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 261
    :cond_0
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/listener/PayULoginDialogListener;Ljava/lang/String;)V
    .locals 12
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/payumoney/core/listener/OnUserLoginListener;
    .param p4, "payULoginDialogListener"    # Lcom/payumoney/core/listener/PayULoginDialogListener;
    .param p5, "tag"    # Ljava/lang/String;

    .line 653
    move-object v7, p0

    move-object v8, p1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 654
    const-string v0, "grant_type"

    const-string v1, "password"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v0, "client_id"

    const-string v2, "10182"

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v0, "username"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    move-object v10, p2

    invoke-interface {v9, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 662
    const-string v1, "IdValue"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MerchantPassedEmail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MerchantPassedPhone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v1, v7, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    const-string v2, "LoginInitiated"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 668
    new-instance v11, Lcom/payumoney/core/SdkSession$14;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/payumoney/core/SdkSession$14;-><init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;Lcom/payumoney/core/listener/PayULoginDialogListener;)V

    const-string v0, "/auth/oauth/token"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v9, v11, v1}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 764
    return-void
.end method

.method public createPayment(Ljava/util/HashMap;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V
    .locals 8
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 917
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "phone"

    const-string v1, "furl"

    const-string v2, "surl"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 918
    const-string v4, "key"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v4, "amount"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v4, "txnid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v4, "productInfo"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "productinfo"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v4, "firstName"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "firstname"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v4, "email"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v5, "udf1"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v5, "udf2"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v5, "udf3"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v5, "udf4"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v5, "udf5"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v5, "udf6"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v5, "udf7"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v5, "udf8"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v5, "udf9"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v5, "udf10"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v5, "hash"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v5, "paymentIdentifiers"

    const-string v6, "[]"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v5, "purchaseFrom"

    const-string v7, "PayUMoneyAndroidSDK"

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 941
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 942
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 943
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 944
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 949
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "txnDetails"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v0, "paymentParts"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v0, "isMobile"

    const-string v1, "1"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession;->isLoggedIn()Z

    move-result v0

    const-string v1, "guestCheckout"

    if-nez v0, :cond_0

    .line 954
    const-string v0, "true"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 956
    :cond_0
    const-string v0, "false"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :goto_1
    new-instance v0, Lcom/payumoney/core/SdkSession$16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/payumoney/core/SdkSession$16;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1013
    const/4 v1, 0x1

    const-string v2, "/payment/app/v2/addPayment"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1014
    return-void
.end method

.method public fetchCardBinInfo(Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnCardBinDetailsReceived;
    .param p2, "cardNumber"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1426
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bin"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/payment/op/v1/getBinDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/payumoney/core/SdkSession$22;

    invoke-direct {v2, p0, p1, p3}, Lcom/payumoney/core/SdkSession$22;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnCardBinDetailsReceived;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1461
    return-void
.end method

.method public fetchMechantParams(Ljava/lang/String;Lcom/payumoney/core/listener/OnMerchantLoginParams;Ljava/lang/String;)V
    .locals 4
    .param p1, "merchantId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnMerchantLoginParams;
    .param p3, "tag"    # Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    const-string v1, "merchantId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/auth/app/op/merchant/LoginParams?merchantId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/payumoney/core/SdkSession$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/payumoney/core/SdkSession$2;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnMerchantLoginParams;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 309
    return-void
.end method

.method public fetchMultipleCardBinInfo(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1472
    .local p2, "cardNumbersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1473
    invoke-static {p2}, Lcom/payumoney/core/utils/SdkHelper;->getCommaSeparatedBins(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bins"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/payment/op/v1/getMultipleBinDetails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/payumoney/core/SdkSession$23;

    invoke-direct {v1, p0, p1, p3}, Lcom/payumoney/core/SdkSession$23;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1524
    return-void
.end method

.method public fetchPaymentStatus(Ljava/lang/String;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
    .locals 4
    .param p1, "paymentID"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;
    .param p3, "tag"    # Ljava/lang/String;

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    const-string v1, "paymentId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Lcom/payumoney/core/SdkSession$15;

    invoke-direct {v1, p0, p2, p3}, Lcom/payumoney/core/SdkSession$15;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V

    const-string v2, "/payment/app/postPayment"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 853
    return-void
.end method

.method public fetchUserDetailsForNitro(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;

    .line 1528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1529
    const-string v1, "paymentId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const-string v1, "email"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string v1, "mobile"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/payment/op/v1/fetchUserDataFromEmailMobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/payumoney/core/SdkSession$24;

    invoke-direct {v1, p0, p1, p5}, Lcom/payumoney/core/SdkSession$24;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1568
    return-void
.end method

.method public fetchUserPaymentData(Ljava/lang/String;Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "paymentId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/payumoney/core/listener/onUserAccountReceivedListener;
    .param p3, "tag"    # Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    const-string v1, "paymentId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Lcom/payumoney/core/SdkSession$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/payumoney/core/SdkSession$6;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/onUserAccountReceivedListener;Ljava/lang/String;)V

    const-string v2, "/payment/app/fetchPaymentUserData"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 440
    return-void
.end method

.method public getEmiInterestsForBank(Ljava/lang/String;DLcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p1, "paymentID"    # Ljava/lang/String;
    .param p2, "totalAmount"    # D
    .param p4, "listener"    # Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1019
    .local p5, "emiThresholds":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/EmiThreshold;>;"
    move-object v7, p0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1020
    const-string v0, "paymentId"

    move-object v9, p1

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v10, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amount"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v0, "resetGlobalOffer"

    const-string v1, "false"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    new-instance v12, Lcom/payumoney/core/SdkSession$17;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/payumoney/core/SdkSession$17;-><init>(Lcom/payumoney/core/SdkSession;DLjava/util/List;Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/lang/String;)V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/payment/op/getEmiInterestForBank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v12, v2}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1054
    return-void
.end method

.method public getGuestEmail()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginMode()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBankingStatus(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1341
    new-instance v0, Lcom/payumoney/core/SdkSession$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/payumoney/core/SdkSession$21;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V

    const-string v1, "/payment/op/getNetBankingStatus"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1376
    return-void
.end method

.method public getRegisteredUserName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->p:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/payumoney/core/tls/HurlStackFactory;->getNewHurlStack()Lcom/android/volley/toolbox/HurlStack;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/SdkSession;->p:Lcom/android/volley/RequestQueue;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->p:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 857
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->WALLET_SDK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->l:Lcom/payumoney/core/SdkSession$SessionData;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession$SessionData;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileNumberRegistered()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/payumoney/core/SdkSession;->k:Z

    return v0
.end method

.method public isNitroEnabled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/payumoney/core/SdkSession;->g:Z

    return v0
.end method

.method public isUserAccountActive()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/payumoney/core/SdkSession;->h:Z

    return v0
.end method

.method public isUserSignUpDisabled()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/payumoney/core/SdkSession;->i:Z

    return v0
.end method

.method public logout(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->m:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->deleteKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->l:Lcom/payumoney/core/SdkSession$SessionData;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession$SessionData;->reset()V

    .line 785
    return-void
.end method

.method public notifyUserCancelledTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "paymentId"    # Ljava/lang/String;
    .param p2, "userCancelled"    # Ljava/lang/String;

    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1303
    const-string v1, "paymentId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    if-eqz p2, :cond_0

    .line 1306
    const-string v1, "cancelled"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/payment/postBackParamIcp.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/payumoney/core/SdkSession$20;

    invoke-direct {v2, p0}, Lcom/payumoney/core/SdkSession$20;-><init>(Lcom/payumoney/core/SdkSession;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1337
    return-void
.end method

.method public postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "task"    # Lcom/payumoney/core/SdkSession$Task;
    .param p4, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/payumoney/core/SdkSession$Task;",
            "I)V"
        }
    .end annotation

    .line 447
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 448
    return-void
.end method

.method public postFetch(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "task"    # Lcom/payumoney/core/SdkSession$Task;
    .param p5, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/payumoney/core/SdkSession$Task;",
            "I)V"
        }
    .end annotation

    .line 451
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "customHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p0

    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkSession.postFetch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk"

    invoke-static {v1, v0}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_0
    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    .line 455
    :goto_0
    new-instance v12, Lcom/payumoney/core/SdkSession$9;

    invoke-static {p1}, Lcom/payumoney/core/SdkSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/payumoney/core/SdkSession$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/core/SdkSession$7;-><init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/Map;ILcom/payumoney/core/SdkSession$Task;)V

    new-instance v5, Lcom/payumoney/core/SdkSession$8;

    move-object/from16 v13, p4

    invoke-direct {v5, p0, v13}, Lcom/payumoney/core/SdkSession$8;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;)V

    move-object v0, v12

    move/from16 v2, p5

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/payumoney/core/SdkSession$9;-><init>(Lcom/payumoney/core/SdkSession;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 565
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x7530

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v12, v0}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 570
    invoke-virtual {p0, v12}, Lcom/payumoney/core/SdkSession;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/payumoney/core/SdkSession;->b:Ljava/lang/Long;

    .line 573
    return-void
.end method

.method public reset()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->l:Lcom/payumoney/core/SdkSession$SessionData;

    invoke-virtual {v0}, Lcom/payumoney/core/SdkSession$SessionData;->reset()V

    .line 444
    return-void
.end method

.method public sendOTPsForLoginSignUP(Ljava/lang/String;Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnOTPRequestSendListener;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1232
    invoke-direct {p0, p1}, Lcom/payumoney/core/SdkSession;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1235
    :cond_0
    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    :goto_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "merchantId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    new-instance v1, Lcom/payumoney/core/SdkSession$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/payumoney/core/SdkSession$19;-><init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "/auth/op/sendPaymentOTP"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1294
    return-void
.end method

.method public sendToPayU(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
    .locals 15
    .param p1, "request"    # Lcom/payumoney/core/request/PaymentRequest;
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1068
    move-object v7, p0

    const-string v1, "PAYU"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v4

    .line 1071
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1073
    nop

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    .line 1075
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v8

    goto :goto_0

    .line 1074
    :cond_0
    move-wide v8, v5

    .line 1078
    :goto_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v10, "amount"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v13

    add-double/2addr v11, v13

    sub-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1080
    :try_start_0
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    goto :goto_1

    .line 1081
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 1082
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1085
    :goto_1
    const-string v11, ""

    const-string v12, "WALLET"

    cmpl-double v0, v8, v5

    if-lez v0, :cond_1

    .line 1087
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1090
    goto :goto_2

    .line 1088
    :catch_1
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v5, "wallet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 1094
    :try_start_2
    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1095
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v9

    add-double/2addr v0, v9

    invoke-virtual {v3, v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1098
    goto :goto_3

    .line 1096
    :catch_2
    move-exception v0

    .line 1101
    :cond_2
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sourceAmountMap"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PG"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1105
    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bankCode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    const-string v0, "isInternational"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UPI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1116
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->PM_KEY_VPA:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getVpa()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getStoreCardId()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    .line 1120
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getStoreCardId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "storeCardId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1122
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1124
    :cond_8
    nop

    .line 1125
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1126
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_9

    .line 1129
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1131
    nop

    .line 1132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "XXXXXX"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1135
    :cond_9
    move-object v0, v9

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1136
    const-string v3, "cardMask"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :cond_a
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/payumoney/core/request/PaymentRequest;->isEmiPayment()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1142
    const-string v0, "convert-emi"

    const-string v3, "on"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    :cond_b
    const-string v0, "revisedCashbackReceivedStatus"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v0, "isMobile"

    const-string v3, "1"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-string v0, "platform"

    const-string v3, "Android_PayUmoneyApp"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession;->isLoggedIn()Z

    move-result v0

    const-string v3, "guestCheckout"

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession;->isUserAccountActive()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 1153
    :cond_c
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v5, "signUpUserFlag"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "guestEmail"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "guestPhone"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1151
    :cond_d
    :goto_6
    const-string v0, "false"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayUMoneySdk:Params -->"

    invoke-static {v1, v0}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/payment/makePayment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/payumoney/core/SdkSession;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/payumoney/core/SdkSession$18;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/payumoney/core/SdkSession$18;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/request/PaymentRequest;Ljava/lang/String;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v9, v10, v8}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1225
    return-void
.end method

.method public setGuestEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "guestEmail"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/payumoney/core/SdkSession;->r:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setLoginMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginMode"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/payumoney/core/SdkSession;->q:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setMobileNumberRegistered(Z)V
    .locals 0
    .param p1, "mobileNumberRegistered"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/payumoney/core/SdkSession;->k:Z

    .line 164
    return-void
.end method

.method public setNitroEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/payumoney/core/SdkSession;->g:Z

    .line 128
    return-void
.end method

.method public setRegisteredUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "registeredUserName"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/payumoney/core/SdkSession;->j:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lcom/payumoney/core/SdkSession;->l:Lcom/payumoney/core/SdkSession$SessionData;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/SdkSession$SessionData;->setToken(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public setUserAccountActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/payumoney/core/SdkSession;->h:Z

    .line 136
    return-void
.end method

.method public setUserSignUpDisabled(Z)V
    .locals 0
    .param p1, "userSignUpDisabled"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/payumoney/core/SdkSession;->i:Z

    .line 148
    return-void
.end method

.method public validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnValidateVpaListener;
    .param p2, "vpa"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 318
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 319
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->PM_KEY_VPA:Ljava/lang/String;

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v7, Lcom/payumoney/core/SdkSession$5;

    sget-object v8, Lcom/payumoney/core/PayUmoneyConstants;->PM_VALIDATE_VPA_URL:Ljava/lang/String;

    new-instance v9, Lcom/payumoney/core/SdkSession$3;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/core/SdkSession$3;-><init>(Lcom/payumoney/core/SdkSession;Ljava/util/Map;Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/payumoney/core/SdkSession$4;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/payumoney/core/SdkSession$4;-><init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/payumoney/core/SdkSession$5;-><init>(Lcom/payumoney/core/SdkSession;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 381
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x7530

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v7, v0}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 386
    invoke-virtual {p0, v7}, Lcom/payumoney/core/SdkSession;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 387
    return-void
.end method

.method public verifyPaymentDetails(Ljava/lang/String;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V
    .locals 4
    .param p1, "paymentID"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/payumoney/core/listener/OnVerifyPaymentResponse;

    .line 1572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1573
    const-string v1, "paymentId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    new-instance v1, Lcom/payumoney/core/SdkSession$25;

    invoke-direct {v1, p0, p2}, Lcom/payumoney/core/SdkSession$25;-><init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V

    const-string v2, "/payment/app/checkPaymentDetails"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/payumoney/core/SdkSession;->postFetch(Ljava/lang/String;Ljava/util/Map;Lcom/payumoney/core/SdkSession$Task;I)V

    .line 1598
    return-void
.end method
