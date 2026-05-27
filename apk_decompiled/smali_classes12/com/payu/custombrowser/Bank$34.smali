.class Lcom/payu/custombrowser/Bank$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/payu/custombrowser/Bank;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V
    .locals 1

    .line 996
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$34;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    const/16 p1, 0x64

    iput p1, p0, Lcom/payu/custombrowser/Bank$34;->c:I

    .line 998
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    const/16 p2, 0x30

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p2, p1

    iput p2, p0, Lcom/payu/custombrowser/Bank$34;->d:I

    .line 999
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/payu/custombrowser/Bank$34;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1003
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget v0, p0, Lcom/payu/custombrowser/Bank$34;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$34;->a:Landroid/view/View;

    .line 1006
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1008
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$34;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$34;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1009
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$34;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$34;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$34;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 1010
    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1011
    :goto_0
    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iget v0, v0, Lcom/payu/custombrowser/Bank;->j:I

    if-nez v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1014
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1015
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$34;->b:Lcom/payu/custombrowser/Bank;

    iput v2, v0, Lcom/payu/custombrowser/Bank;->j:I

    .line 1019
    :cond_1
    return-void
.end method
