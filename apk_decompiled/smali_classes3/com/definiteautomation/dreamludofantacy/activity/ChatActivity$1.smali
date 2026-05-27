.class Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$userName"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 4
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "databaseError"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_PROFILE_PHOTO"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 166
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSnapshot"
        }
    .end annotation

    .line 151
    const v0, 0x7f0700c4

    :try_start_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "name":Ljava/lang/String;
    const-string v2, "thumb_image"

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "image":Ljava/lang/String;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "image":Ljava/lang/String;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Guest User"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    const-string v3, "https://dreamludo.definiteautomation.com/default_avatar.jpg"

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 160
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method
