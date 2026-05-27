.class Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focusX",
            "focusY",
            "scaleType"
        }
    .end annotation

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ZoomVariables;->scale:F

    .line 1249
    iput p2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ZoomVariables;->focusX:F

    .line 1250
    iput p3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ZoomVariables;->focusY:F

    .line 1251
    iput-object p4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 1252
    return-void
.end method
