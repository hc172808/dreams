.class Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    .line 156
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 159
    const/4 v0, 0x1

    return v0
.end method
