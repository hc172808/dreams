.class Leasypay/widget/OtpEditText$2;
.super Ljava/lang/Object;
.source "OtpEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/widget/OtpEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/widget/OtpEditText;


# direct methods
.method constructor <init>(Leasypay/widget/OtpEditText;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/widget/OtpEditText;

    .line 196
    iput-object p1, p0, Leasypay/widget/OtpEditText$2;->this$0:Leasypay/widget/OtpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 199
    iget-object v0, p0, Leasypay/widget/OtpEditText$2;->this$0:Leasypay/widget/OtpEditText;

    invoke-virtual {v0}, Leasypay/widget/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Leasypay/widget/OtpEditText;->setSelection(I)V

    .line 200
    iget-object v0, p0, Leasypay/widget/OtpEditText$2;->this$0:Leasypay/widget/OtpEditText;

    iget-object v0, v0, Leasypay/widget/OtpEditText;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Leasypay/widget/OtpEditText$2;->this$0:Leasypay/widget/OtpEditText;

    iget-object v0, v0, Leasypay/widget/OtpEditText;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 203
    :cond_0
    return-void
.end method
