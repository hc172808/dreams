.class Lcom/payumoney/core/SdkSession$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkSession$Task;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/SdkSession$Task;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 595
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$10;->c:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$10;->a:Lcom/payumoney/core/SdkSession$Task;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$10;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$10;->a:Lcom/payumoney/core/SdkSession$Task;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$10;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/payumoney/core/SdkSession$Task;->onError(Ljava/lang/Throwable;)V

    .line 599
    return-void
.end method
