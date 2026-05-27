.class Lcom/payu/custombrowser/Bank$3$2;
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
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/payu/custombrowser/Bank$3;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$3;Landroid/widget/Button;)V
    .locals 0

    .line 1249
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$3$2;->b:Lcom/payu/custombrowser/Bank$3;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$3$2;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$2;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/payu/custombrowser/util/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$3$2;->a:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$2;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3$2;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$3$2;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_btn_action:I

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1259
    :goto_0
    return-void
.end method
