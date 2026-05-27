.class public Lcom/payu/custombrowser/b$a;
.super Lcom/payu/custombrowser/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/payu/custombrowser/b;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/payu/custombrowser/b$a;->e:Lcom/payu/custombrowser/b;

    invoke-direct {p0, p1}, Lcom/payu/custombrowser/a$a;-><init>(Lcom/payu/custombrowser/a;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onTouch of PayUCBLifeCycleCalled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/payu/custombrowser/b$a;->e:Lcom/payu/custombrowser/b;

    invoke-static {v0}, Lcom/payu/custombrowser/b;->c(Lcom/payu/custombrowser/b;)V

    .line 1349
    invoke-super {p0, p1, p2}, Lcom/payu/custombrowser/a$a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
