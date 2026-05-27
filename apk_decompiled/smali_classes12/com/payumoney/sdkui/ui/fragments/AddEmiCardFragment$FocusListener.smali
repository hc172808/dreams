.class public Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    .line 1379
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1384
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->h(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->b(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_card_cardNumber:I

    if-ne v0, v1, :cond_1

    .line 1388
    if-nez p2, :cond_3

    .line 1389
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->q(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    goto :goto_0

    .line 1392
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_card_cardExpiry:I

    if-ne v0, v1, :cond_2

    .line 1394
    if-nez p2, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->r(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    goto :goto_0

    .line 1398
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->add_card_cardCvv:I

    if-ne v0, v1, :cond_3

    .line 1400
    if-nez p2, :cond_3

    .line 1401
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->s(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    .line 1405
    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 1406
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$FocusListener;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->f(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    .line 1408
    :cond_4
    return-void
.end method
