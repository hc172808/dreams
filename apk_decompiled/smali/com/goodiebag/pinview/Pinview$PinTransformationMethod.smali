.class Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodiebag/pinview/Pinview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinTransformationMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;
    }
.end annotation


# instance fields
.field private BULLET:C

.field final synthetic this$0:Lcom/goodiebag/pinview/Pinview;


# direct methods
.method private constructor <init>(Lcom/goodiebag/pinview/Pinview;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/16 p1, 0x2022

    iput-char p1, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;->BULLET:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodiebag/pinview/Pinview;Lcom/goodiebag/pinview/Pinview$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/goodiebag/pinview/Pinview;
    .param p2, "x1"    # Lcom/goodiebag/pinview/Pinview$1;

    .line 516
    invoke-direct {p0, p1}, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;-><init>(Lcom/goodiebag/pinview/Pinview;)V

    return-void
.end method

.method static synthetic access$400(Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;)C
    .locals 1
    .param p0, "x0"    # Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;

    .line 516
    iget-char v0, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;->BULLET:C

    return v0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 522
    new-instance v0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p0, p1}, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;-><init>(Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 528
    return-void
.end method
