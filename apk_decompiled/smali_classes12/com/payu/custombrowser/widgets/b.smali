.class public Lcom/payu/custombrowser/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/a/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/b;->a:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    new-instance v0, Lcom/payu/custombrowser/bean/a;

    invoke-direct {v0}, Lcom/payu/custombrowser/bean/a;-><init>()V

    .line 39
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/a;->a(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/widgets/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command=EventAnalytics&data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/a;->c(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/a;->b(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/payu/custombrowser/util/d;

    const-string v2, "SURE_PAY_ANALYTICS"

    invoke-direct {v1, p0, v2}, Lcom/payu/custombrowser/util/d;-><init>(Lcom/payu/custombrowser/a/a;Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/payu/custombrowser/bean/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    return-void
.end method
