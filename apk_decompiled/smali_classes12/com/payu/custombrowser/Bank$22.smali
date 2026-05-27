.class Lcom/payu/custombrowser/Bank$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;I)V
    .locals 0

    .line 2831
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    iput p2, p0, Lcom/payu/custombrowser/Bank$22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2834
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    goto :goto_0

    .line 2837
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 2841
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_interaction_time"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2846
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_window_action"

    const-string v2, "snooze_cancel_window_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    :goto_1
    iget v0, p0, Lcom/payu/custombrowser/Bank$22;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2850
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 2852
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->b:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 2853
    return-void
.end method
