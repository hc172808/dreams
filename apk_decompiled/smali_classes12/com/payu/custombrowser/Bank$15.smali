.class Lcom/payu/custombrowser/Bank$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .line 2309
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$15;->c:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$15;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .line 2335
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 2313
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 2317
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v0

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$15;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank$a;->a(Landroid/view/View;)V

    .line 2321
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$15;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2322
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2323
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    goto :goto_0

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2327
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 2328
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$15;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2330
    :goto_0
    return-void
.end method
