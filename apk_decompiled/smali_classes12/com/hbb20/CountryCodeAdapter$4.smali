.class Lcom/hbb20/CountryCodeAdapter$4;
.super Ljava/lang/Object;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodeAdapter;->onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodeAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodeAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hbb20/CountryCodeAdapter;

    .line 176
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iput p2, p0, Lcom/hbb20/CountryCodeAdapter$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hbb20/CountryCodeAdapter$4;->val$i:I

    if-le v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v1, v1, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodeAdapter$4;->val$i:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    invoke-virtual {v0, v1}, Lcom/hbb20/CountryCodePicker;->onUserTappedCountry(Lcom/hbb20/CCPCountry;)V

    .line 182
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hbb20/CountryCodeAdapter$4;->val$i:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    iget v1, p0, Lcom/hbb20/CountryCodeAdapter$4;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter$4;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v1, v1, Lcom/hbb20/CountryCodeAdapter;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 187
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method
