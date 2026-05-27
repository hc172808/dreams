.class Lcom/goodiebag/pinview/Pinview$3;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodiebag/pinview/Pinview;->generateOneEditText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodiebag/pinview/Pinview;


# direct methods
.method constructor <init>(Lcom/goodiebag/pinview/Pinview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/goodiebag/pinview/Pinview;

    .line 239
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$3;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 243
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview$3;->this$0:Lcom/goodiebag/pinview/Pinview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/goodiebag/pinview/Pinview;->access$202(Lcom/goodiebag/pinview/Pinview;Z)Z

    .line 244
    return v1
.end method
