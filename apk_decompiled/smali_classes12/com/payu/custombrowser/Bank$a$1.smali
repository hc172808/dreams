.class Lcom/payu/custombrowser/Bank$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/payu/custombrowser/Bank$a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$a;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    .line 3458
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$a$1;->c:Lcom/payu/custombrowser/Bank$a;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$a$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .line 3488
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 3463
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 3467
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a$1;->a:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a$1;->c:Lcom/payu/custombrowser/Bank$a;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank$a;->a(Landroid/view/View;)V

    .line 3470
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a$1;->c:Lcom/payu/custombrowser/Bank$a;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$a;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v1}, Lcom/payu/custombrowser/Bank;->f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3471
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 3473
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    goto :goto_0

    .line 3477
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    .line 3478
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3480
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 3481
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$a$1;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3483
    :goto_0
    return-void
.end method
