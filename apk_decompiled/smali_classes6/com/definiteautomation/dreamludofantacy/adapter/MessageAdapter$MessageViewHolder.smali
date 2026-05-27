.class public Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageViewHolder"
.end annotation


# instance fields
.field public displayName:Landroid/widget/TextView;

.field public displayRightName:Landroid/widget/TextView;

.field public displayRightTime:Landroid/widget/TextView;

.field public displayTime:Landroid/widget/TextView;

.field public messageImage:Landroid/widget/ImageView;

.field public messageRightImage:Landroid/widget/ImageView;

.field public messageRightText:Landroid/widget/TextView;

.field public messageText:Landroid/widget/TextView;

.field public profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field public profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageText:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 76
    const v0, 0x7f08027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0803cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayTime:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f08024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightText:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f080251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 82
    const v0, 0x7f08027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightName:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0803cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightTime:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f08024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    .line 86
    return-void
.end method
