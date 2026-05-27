.class Lcom/payumoney/core/SdkSession$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/SdkSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkSession$Task;

.field final synthetic b:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$13;->a:Lcom/payumoney/core/SdkSession$Task;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$13;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/payumoney/core/SdkSession$Task;->onSuccess(Ljava/lang/String;)V

    .line 625
    return-void
.end method
