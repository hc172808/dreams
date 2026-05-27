.class Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;-><init>(Landroid/content/Context;Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    .line 15
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$1;->a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 18
    const/4 v0, 0x1

    return v0
.end method
