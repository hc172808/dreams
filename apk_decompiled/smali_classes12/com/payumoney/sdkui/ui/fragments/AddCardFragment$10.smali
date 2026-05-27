.class Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    .line 766
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;->b:Lcom/payumoney/sdkui/ui/fragments/AddCardFragment;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 769
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddCardFragment$10;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 770
    return-void
.end method
