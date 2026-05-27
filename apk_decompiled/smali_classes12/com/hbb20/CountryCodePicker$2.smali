.class Lcom/hbb20/CountryCodePicker$2;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastCheckedNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hbb20/CountryCodePicker;

    .line 1007
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 1047
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1014
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1018
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$100(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1019
    .local v0, "selectedCountry":Lcom/hbb20/CCPCountry;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean v1, v1, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    if-eqz v1, :cond_3

    .line 1021
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v1}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "enteredValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v3}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v3

    iget v3, v3, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    if-lt v2, v3, :cond_2

    .line 1024
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "digitsValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v4}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v4

    iget v4, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    if-lt v3, v4, :cond_2

    .line 1026
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v4}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v4

    iget v4, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "currentAreaCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-object v4, v4, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1028
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v4}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-object v5, v5, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/hbb20/CCPCountryGroup;->getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v4

    .line 1029
    .local v4, "detectedCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1030
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 1031
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    iput v6, v5, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 1032
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v5, v4}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1034
    :cond_1
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iput-object v3, v5, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 1039
    .end local v1    # "enteredValue":Ljava/lang/String;
    .end local v2    # "digitsValue":Ljava/lang/String;
    .end local v3    # "currentAreaCode":Ljava/lang/String;
    .end local v4    # "detectedCountry":Lcom/hbb20/CCPCountry;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    .line 1041
    :cond_3
    return-void
.end method
