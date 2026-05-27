.class Lcom/payu/custombrowser/Bank$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/payu/custombrowser/Bank$3;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$3;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$3$3;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 1282
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3$3;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->b(Lcom/payu/custombrowser/Bank;Z)Z

    .line 1283
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$3;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "\")"

    const-string v2, "(\""

    const-string v3, "javascript:"

    if-eqz v0, :cond_0

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_toggle_field:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1289
    :goto_0
    goto :goto_1

    .line 1294
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$3$3;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_toggle_field:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1297
    goto :goto_1

    .line 1295
    :catch_1
    move-exception v0

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1300
    :goto_1
    return-void
.end method
