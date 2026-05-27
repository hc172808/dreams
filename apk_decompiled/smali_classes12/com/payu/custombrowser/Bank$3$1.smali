.class Lcom/payu/custombrowser/Bank$3$1;
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

    .line 1226
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$3$1;->b:Lcom/payu/custombrowser/Bank$3;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$3$1;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1229
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$1;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3$1;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->a(Lcom/payu/custombrowser/Bank;Z)Z

    .line 1230
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$1;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->c(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    const-string v1, "user_input"

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$1;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/payu/custombrowser/util/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3$1;->b:Lcom/payu/custombrowser/Bank$3;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/payu/custombrowser/util/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :goto_0
    return-void
.end method
