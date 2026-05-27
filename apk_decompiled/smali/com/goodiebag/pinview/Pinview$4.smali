.class Lcom/goodiebag/pinview/Pinview$4;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodiebag/pinview/Pinview;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodiebag/pinview/Pinview;

.field final synthetic val$currentTag:I


# direct methods
.method constructor <init>(Lcom/goodiebag/pinview/Pinview;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/goodiebag/pinview/Pinview;

    .line 421
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$4;->this$0:Lcom/goodiebag/pinview/Pinview;

    iput p2, p0, Lcom/goodiebag/pinview/Pinview$4;->val$currentTag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview$4;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v0}, Lcom/goodiebag/pinview/Pinview;->access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/goodiebag/pinview/Pinview$4;->val$currentTag:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 425
    .local v0, "nextEditText":Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 426
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 427
    return-void
.end method
