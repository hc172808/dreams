.class public Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;
.super Landroid/app/DialogFragment;
.source "PicModeSelectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;
    }
.end annotation


# instance fields
.field private iPicModeSelectListener:Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;

.field private final picMode:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 10
    const-string v0, "Camera"

    const-string v1, "Gallery"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->picMode:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$PicModeSelectDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 18
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->iPicModeSelectListener:Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;

    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->picMode:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;->onPicModeSelected(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->picMode:[Ljava/lang/String;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/helper/-$$Lambda$PicModeSelectDialogFragment$DxoIsDocCZyFSIGxhooz8wkqtsI;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/helper/-$$Lambda$PicModeSelectDialogFragment$DxoIsDocCZyFSIGxhooz8wkqtsI;-><init>(Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 21
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setIPicModeSelectListener(Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;)V
    .locals 0
    .param p1, "iPicModeSelectListener"    # Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iPicModeSelectListener"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->iPicModeSelectListener:Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;

    .line 26
    return-void
.end method
