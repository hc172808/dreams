.class Lcom/payu/custombrowser/Bank$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 2856
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$24;->a:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2860
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$24;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->i()V

    .line 2862
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$24;->a:Lcom/payu/custombrowser/Bank;

    invoke-static {v0, p1}, Lcom/payu/custombrowser/Bank;->a(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V

    .line 2896
    return-void
.end method
