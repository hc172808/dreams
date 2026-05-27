.class Lcom/payumoney/core/widget/ExpiryDate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/widget/ExpiryDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/widget/ExpiryDate;


# direct methods
.method constructor <init>(Lcom/payumoney/core/widget/ExpiryDate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/widget/ExpiryDate;

    .line 32
    iput-object p1, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string v3, "MM/yy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 49
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x2

    const-string v4, ""

    const-string v5, "/"

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-static {v1}, Lcom/payumoney/core/widget/ExpiryDate;->a(Lcom/payumoney/core/widget/ExpiryDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-static {v1}, Lcom/payumoney/core/widget/ExpiryDate;->a(Lcom/payumoney/core/widget/ExpiryDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 54
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setSelection(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0, v4}, Lcom/payumoney/core/widget/ExpiryDate;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setSelection(I)V

    .line 62
    :goto_0
    goto/16 :goto_2

    .line 63
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-static {v1}, Lcom/payumoney/core/widget/ExpiryDate;->a(Lcom/payumoney/core/widget/ExpiryDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    if-gt v0, v2, :cond_2

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setSelection(I)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0, v4}, Lcom/payumoney/core/widget/ExpiryDate;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setSelection(I)V

    goto :goto_1

    .line 73
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 74
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 76
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    if-le v0, v6, :cond_5

    .line 78
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v2}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->setSelection(I)V

    goto :goto_2

    .line 73
    :cond_4
    :goto_1
    nop

    .line 83
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate$1;->a:Lcom/payumoney/core/widget/ExpiryDate;

    invoke-virtual {v0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/widget/ExpiryDate;->a(Lcom/payumoney/core/widget/ExpiryDate;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 40
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 35
    return-void
.end method
