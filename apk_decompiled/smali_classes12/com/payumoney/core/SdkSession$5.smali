.class Lcom/payumoney/core/SdkSession$5;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->validateVPA(Lcom/payumoney/core/listener/OnValidateVpaListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p5, "x3"    # Lcom/android/volley/Response$ErrorListener;

    .line 369
    .local p4, "x2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$5;->b:Lcom/payumoney/core/SdkSession;

    iput-object p6, p0, Lcom/payumoney/core/SdkSession$5;->a:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 377
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$5;->a:Ljava/util/Map;

    return-object v0
.end method
