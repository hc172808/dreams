.class Leasypay/manager/PaytmAssist$2;
.super Ljava/lang/Object;
.source "PaytmAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/manager/PaytmAssist;->accessCheckApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/manager/PaytmAssist;


# direct methods
.method constructor <init>(Leasypay/manager/PaytmAssist;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/manager/PaytmAssist;

    .line 438
    iput-object p1, p0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 441
    iget-object v0, p0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-static {v0}, Leasypay/manager/PaytmAssist;->access$200(Leasypay/manager/PaytmAssist;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v0, "midMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mid"

    iget-object v2, p0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-static {v2}, Leasypay/manager/PaytmAssist;->access$200(Leasypay/manager/PaytmAssist;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 446
    .local v1, "JSON":Lokhttp3/MediaType;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 447
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 448
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "json":Ljava/lang/String;
    invoke-static {v1, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 450
    .local v5, "body":Lokhttp3/RequestBody;
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    const-string v7, "https://securegw.paytm.in/merchant-settlement-service/paytmAssist/enable"

    .line 451
    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 452
    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 453
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 454
    .local v6, "request":Lokhttp3/Request;
    invoke-virtual {v2, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 455
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 456
    iget-object v8, p0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-static {v8}, Leasypay/manager/PaytmAssist;->access$300(Leasypay/manager/PaytmAssist;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 457
    iget-object v8, p0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-static {v8}, Leasypay/manager/PaytmAssist;->access$300(Leasypay/manager/PaytmAssist;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v8

    new-instance v9, Leasypay/manager/PaytmAssist$2$1;

    invoke-direct {v9, p0}, Leasypay/manager/PaytmAssist$2$1;-><init>(Leasypay/manager/PaytmAssist$2;)V

    invoke-virtual {v8, v9}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "midMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "JSON":Lokhttp3/MediaType;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "body":Lokhttp3/RequestBody;
    .end local v6    # "request":Lokhttp3/Request;
    .end local v7    # "response":Lokhttp3/Response;
    :cond_0
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
