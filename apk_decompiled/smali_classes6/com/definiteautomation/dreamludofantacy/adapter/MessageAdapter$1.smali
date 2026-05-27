.class Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

.field final synthetic val$viewHolder:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewHolder"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;->this$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;->val$viewHolder:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "databaseError"
        }
    .end annotation

    .line 130
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 5
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 120
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "name":Ljava/lang/String;
    const-string v1, "thumb_image"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "image":Ljava/lang/String;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;->val$viewHolder:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    iget-object v2, v2, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0700c4

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;->val$viewHolder:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    iget-object v3, v3, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 125
    return-void
.end method
