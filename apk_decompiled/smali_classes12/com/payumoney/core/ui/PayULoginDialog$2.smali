.class Lcom/payumoney/core/ui/PayULoginDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/ui/PayULoginDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/ui/PayULoginDialog;


# direct methods
.method constructor <init>(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/ui/PayULoginDialog;

    .line 166
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$2;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$2;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->dismiss()V

    .line 170
    return-void
.end method
