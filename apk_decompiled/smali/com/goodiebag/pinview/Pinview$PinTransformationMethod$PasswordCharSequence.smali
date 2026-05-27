.class Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private final source:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;


# direct methods
.method public constructor <init>(Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "source"    # Ljava/lang/CharSequence;

    .line 533
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->this$1:Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->source:Ljava/lang/CharSequence;

    .line 535
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 544
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->this$1:Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;

    invoke-static {v0}, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;->access$400(Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->source:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 549
    new-instance v0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;

    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->this$1:Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;

    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;->source:Ljava/lang/CharSequence;

    invoke-interface {v2, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod$PasswordCharSequence;-><init>(Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;Ljava/lang/CharSequence;)V

    return-object v0
.end method
