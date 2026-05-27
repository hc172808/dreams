.class Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    .line 62
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex$1;->a:Lcom/payumoney/sdkui/ui/widgets/StickyHeaderIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
