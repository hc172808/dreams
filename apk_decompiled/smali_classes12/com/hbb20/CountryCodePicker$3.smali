.class Lcom/hbb20/CountryCodePicker$3;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->updateValidityTextWatcher()V
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

    .line 1168
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 1181
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v0

    .line 1184
    .local v0, "currentValidity":Z
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v1, v1, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    if-eq v0, v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 1186
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v1}, Lcom/hbb20/CountryCodePicker;->access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker$3;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v2, v2, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    invoke-interface {v1, v2}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    .line 1189
    .end local v0    # "currentValidity":Z
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1177
    return-void
.end method
