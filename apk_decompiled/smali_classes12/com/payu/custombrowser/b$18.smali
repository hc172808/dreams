.class Lcom/payu/custombrowser/b$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->fillOTP(Landroid/content/BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;Landroid/widget/TextView;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    iput-object p2, p0, Lcom/payu/custombrowser/b$18;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const-string v1, "approved_otp"

    iput-object v1, v0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const-string v1, "user_input"

    iget-object v2, v0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const-string v1, "Approve_btn_clicked_time"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->m()V

    .line 1046
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/payu/custombrowser/b;->ai:Z

    .line 1047
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/payu/custombrowser/b;->ah:Ljava/lang/Boolean;

    .line 1048
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->onHelpUnavailable()V

    .line 1049
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->f()V

    .line 1050
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    iput v1, v0, Lcom/payu/custombrowser/b;->y:I

    .line 1051
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_process_otp:I

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/b$18;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v0, p0, Lcom/payu/custombrowser/b$18;->b:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1055
    :catch_1
    move-exception v0

    .line 1056
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1059
    :goto_0
    nop

    .line 1060
    :goto_1
    return-void
.end method
