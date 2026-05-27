.class Lcom/goodiebag/pinview/Pinview$1;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodiebag/pinview/Pinview;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodiebag/pinview/Pinview;


# direct methods
.method constructor <init>(Lcom/goodiebag/pinview/Pinview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/goodiebag/pinview/Pinview;

    .line 144
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "focused":Z
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v1}, Lcom/goodiebag/pinview/Pinview;->access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 149
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 151
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v1}, Lcom/goodiebag/pinview/Pinview;->access$100(Lcom/goodiebag/pinview/Pinview;)V

    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_1

    .line 155
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v1}, Lcom/goodiebag/pinview/Pinview;->access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v1}, Lcom/goodiebag/pinview/Pinview;->access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v2}, Lcom/goodiebag/pinview/Pinview;->access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    iget-object v1, v1, Lcom/goodiebag/pinview/Pinview;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    iget-object v1, v1, Lcom/goodiebag/pinview/Pinview;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview$1;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 162
    :cond_3
    return-void
.end method
