.class Lcom/payu/custombrowser/Bank$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/payu/custombrowser/Bank$13;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$13;Lorg/json/JSONObject;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$13$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1710
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->ac:Z

    .line 1711
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    .line 1712
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 1713
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iput v1, v0, Lcom/payu/custombrowser/Bank;->y:I

    .line 1714
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_register:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_register:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1718
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/payu/custombrowser/R$layout;->register_pin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object p1, v0

    .line 1719
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1720
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1722
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const/4 v2, 0x2

    iput v2, v0, Lcom/payu/custombrowser/Bank;->y:I

    .line 1725
    :cond_1
    sget v0, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/payu/custombrowser/Bank$13$1$1;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/Bank$13$1$1;-><init>(Lcom/payu/custombrowser/Bank$13$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1737
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1738
    sget v0, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    :cond_2
    sget v0, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v1}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1742
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "password_click"

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 1743
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1746
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_0
    goto :goto_1

    .line 1748
    :catch_0
    move-exception v0

    .line 1749
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1751
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1752
    return-void
.end method
