.class Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    .line 118
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/GetCvvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 121
    const/4 v0, 0x1

    return v0
.end method
