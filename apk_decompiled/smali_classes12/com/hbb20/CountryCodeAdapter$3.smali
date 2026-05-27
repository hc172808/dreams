.class Lcom/hbb20/CountryCodeAdapter$3;
.super Ljava/lang/Object;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodeAdapter;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hbb20/CountryCodeAdapter;

    .line 99
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter$3;->this$0:Lcom/hbb20/CountryCodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter$3;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v1, v1, Lcom/hbb20/CountryCodeAdapter;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v1, "in":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/hbb20/CountryCodeAdapter$3;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v2, v2, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 105
    const/4 v0, 0x1

    return v0

    .line 108
    .end local v1    # "in":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v0
.end method
