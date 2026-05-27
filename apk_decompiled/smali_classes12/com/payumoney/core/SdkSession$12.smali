.class Lcom/payumoney/core/SdkSession$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkSession$Task;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 612
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$12;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$12;->a:Lcom/payumoney/core/SdkSession$Task;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$12;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$12;->a:Lcom/payumoney/core/SdkSession$Task;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$12;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/payumoney/core/SdkSession$Task;->onSuccess(Lorg/json/JSONObject;)V

    .line 616
    return-void
.end method
