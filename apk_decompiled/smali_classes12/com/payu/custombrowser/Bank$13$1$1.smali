.class Lcom/payu/custombrowser/Bank$13$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$13$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank$13$1;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$13$1;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1729
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "password_click"

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 1730
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$13;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$13$1$1;->a:Lcom/payu/custombrowser/Bank$13$1;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$13$1;->b:Lcom/payu/custombrowser/Bank$13;

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

    .line 1734
    goto :goto_0

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1735
    :goto_0
    return-void
.end method
