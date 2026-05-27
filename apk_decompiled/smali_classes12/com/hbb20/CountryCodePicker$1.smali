.class Lcom/hbb20/CountryCodePicker$1;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hbb20/CountryCodePicker;

    .line 135
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$000(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->isCcpClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, v0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hbb20/CountryCodePicker;->launchCountrySelectionDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->launchCountrySelectionDialog()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$000(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 149
    :cond_2
    :goto_0
    return-void
.end method
