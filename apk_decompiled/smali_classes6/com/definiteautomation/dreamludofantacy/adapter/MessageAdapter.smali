.class public Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Messages;",
            ">;"
        }
    .end annotation
.end field

.field public mUserDatabase:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mMessageList",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Messages;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "mMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/Messages;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->mMessageList:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$MessageAdapter(Lcom/definiteautomation/dreamludofantacy/model/Messages;Landroid/view/View;)V
    .locals 6
    .param p1, "c"    # Lcom/definiteautomation/dreamludofantacy/model/Messages;
    .param p2, "v"    # Landroid/view/View;

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 192
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;

    invoke-direct {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;-><init>()V

    .line 193
    .local v2, "newFragment":Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;
    invoke-virtual {v2, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 196
    .local v3, "transaction":Landroidx/fragment/app/FragmentTransaction;
    const/16 v4, 0x1001

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 197
    const v4, 0x1020002

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 198
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$MessageAdapter(Lcom/definiteautomation/dreamludofantacy/model/Messages;Landroid/view/View;)V
    .locals 6
    .param p1, "c"    # Lcom/definiteautomation/dreamludofantacy/model/Messages;
    .param p2, "v"    # Landroid/view/View;

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 205
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;

    invoke-direct {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;-><init>()V

    .line 206
    .local v2, "newFragment":Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;
    invoke-virtual {v2, v0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 209
    .local v3, "transaction":Landroidx/fragment/app/FragmentTransaction;
    const/16 v4, 0x1001

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    const v4, 0x1020002

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 211
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$MessageAdapter(Lcom/definiteautomation/dreamludofantacy/model/Messages;Landroid/view/View;)Z
    .locals 5
    .param p1, "c"    # Lcom/definiteautomation/dreamludofantacy/model/Messages;
    .param p2, "v"    # Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 215
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 216
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 217
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    const-string v3, "Message Copied"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;I)V
    .locals 11
    .param p1, "viewHolder"    # Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/Messages;

    .line 95
    .local v0, "c":Lcom/definiteautomation/dreamludofantacy/model/Messages;
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "from_user":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getType()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "message_type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getTime()J

    move-result-wide v3

    .line 99
    .local v3, "date":J
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v5

    const-string v6, "KEY_USER_ID"

    invoke-virtual {v5, v6}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f07026c

    const-string v7, "text"

    const-string v8, "Users"

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v10}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 102
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayTime:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v9}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 108
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightTime:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v4, v9}, Lcom/definiteautomation/dreamludofantacy/utils/GetTimeAgo;->getTimeAgo(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    iput-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 117
    :try_start_0
    new-instance v8, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$1;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;)V

    invoke-virtual {v5, v8}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 133
    :catch_0
    move-exception v5

    .line 134
    .local v5, "e":Ljava/lang/NullPointerException;
    iget-object v8, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightName:Landroid/widget/TextView;

    const-string v9, "User"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v8

    const-string v9, "https://dreamludo.definiteautomation.com/default_avatar.png"

    invoke-virtual {v8, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    const v9, 0x7f0700c4

    invoke-virtual {v8, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    iget-object v9, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v8, v9}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 138
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 142
    :cond_0
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 147
    :cond_1
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileRightImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v10}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 149
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightName:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayRightTime:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v9}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 155
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayTime:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->displayTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v4, v9}, Lcom/definiteautomation/dreamludofantacy/utils/GetTimeAgo;->getTimeAgo(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    iput-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 162
    new-instance v8, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$2;

    invoke-direct {v8, p0, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$2;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;)V

    invoke-virtual {v5, v8}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 178
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/Messages;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 187
    :goto_1
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6z1k-__hQKfBswtdt_0tecf2kig;

    invoke-direct {v6, p0, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6z1k-__hQKfBswtdt_0tecf2kig;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/model/Messages;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->messageRightImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;

    invoke-direct {v6, p0, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/model/Messages;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;

    invoke-direct {v6, p0, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/model/Messages;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 220
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter$MessageViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
