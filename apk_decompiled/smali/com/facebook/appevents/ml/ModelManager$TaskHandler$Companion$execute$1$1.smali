.class final Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;
.super Ljava/lang/Object;
.source "ModelManager.kt"

# interfaces
.implements Lcom/facebook/appevents/internal/FileDownloadTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1;->onComplete(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "file",
        "Ljava/io/File;",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/facebook/appevents/ml/Model;

.field final synthetic $slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iput-object p2, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$model:Lcom/facebook/appevents/ml/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iget-object v1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$model:Lcom/facebook/appevents/ml/Model;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setModel(Lcom/facebook/appevents/ml/Model;)V

    .line 348
    iget-object v0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setRuleFile(Ljava/io/File;)V

    .line 349
    iget-object v0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1$1;->$slave:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->access$getOnPostExecute$p(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 350
    :cond_0
    return-void
.end method
