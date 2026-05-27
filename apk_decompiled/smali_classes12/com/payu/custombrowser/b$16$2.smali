.class Lcom/payu/custombrowser/b$16$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b$16;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b$16;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b$16;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/payu/custombrowser/b$16$2;->a:Lcom/payu/custombrowser/b$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 532
    iget-object v0, p0, Lcom/payu/custombrowser/b$16$2;->a:Lcom/payu/custombrowser/b$16;

    iget-object v0, v0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    const-string v1, "user_input"

    const-string v2, "back_button_cancel"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/payu/custombrowser/b$16$2;->a:Lcom/payu/custombrowser/b$16;

    iget-object v0, v0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->onBackCancelled()V

    .line 534
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 537
    return-void
.end method
