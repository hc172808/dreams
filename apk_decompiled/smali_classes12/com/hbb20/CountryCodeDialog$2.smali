.class Lcom/hbb20/CountryCodeDialog$2;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodeDialog;->openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$codePicker:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/hbb20/CountryCodeDialog$2;->val$codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 213
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hbb20/CountryCodeDialog;->access$000(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/hbb20/CountryCodeDialog$2;->val$codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hbb20/CountryCodeDialog$2;->val$codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hbb20/CountryCodePicker$DialogEventsListener;->onCcpDialogDismiss(Landroid/content/DialogInterface;)V

    .line 217
    :cond_0
    return-void
.end method
