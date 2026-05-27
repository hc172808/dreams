.class public Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChatActivity.java"


# static fields
.field private static final GALLERY_PICK:I = 0x1

.field private static final TOTAL_ITEMS_TO_LOAD:I = 0xa


# instance fields
.field private itemPos:I

.field private mAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

.field public mChatAddBtn:Landroid/widget/ImageButton;

.field private mChatMessageView:Landroid/widget/EditText;

.field public mChatSendBtn:Landroid/widget/ImageButton;

.field public mChatToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mChatUser:Ljava/lang/String;

.field private mCurrentPage:I

.field private mCurrentUserId:Ljava/lang/String;

.field private mImageStorage:Lcom/google/firebase/storage/StorageReference;

.field private mLastKey:Ljava/lang/String;

.field private mLastSeenView:Landroid/widget/TextView;

.field private mLinearLayout:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMatchId:Ljava/lang/String;

.field private mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPrevKey:Ljava/lang/String;

.field private mProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mRootRef:Lcom/google/firebase/database/DatabaseReference;

.field public mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

.field private mTitleView:Landroid/widget/TextView;

.field private mUserRef:Lcom/google/firebase/database/DatabaseReference;

.field private final messagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Messages;",
            ">;"
        }
    .end annotation
.end field

.field private online:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->messagesList:Ljava/util/List;

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentPage:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->itemPos:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastKey:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mPrevKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->messagesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLinearLayout:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->online:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->online:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastSeenView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mPrevKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mPrevKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->itemPos:I

    return v0
.end method

.method static synthetic access$908(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    .line 58
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->itemPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->itemPos:I

    return v0
.end method

.method static synthetic lambda$onActivityResult$3(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 2
    .param p0, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .param p1, "databaseReference"    # Lcom/google/firebase/database/DatabaseReference;

    .line 287
    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void
.end method

.method private loadMessages()V
    .locals 4

    .line 356
    const-string v0, "_"

    :try_start_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 357
    .local v0, "messageRef":Lcom/google/firebase/database/DatabaseReference;
    iget v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentPage:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->limitToLast(I)Lcom/google/firebase/database/Query;

    move-result-object v1

    .line 359
    .local v1, "messageQuery":Lcom/google/firebase/database/Query;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$5;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    nop

    .end local v0    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v1    # "messageQuery":Lcom/google/firebase/database/Query;
    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 402
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private loadMoreMessages()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 303
    .local v0, "messageRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->orderByKey()Lcom/google/firebase/database/Query;

    move-result-object v1

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->limitToLast(I)Lcom/google/firebase/database/Query;

    move-result-object v1

    .line 305
    .local v1, "messageQuery":Lcom/google/firebase/database/Query;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 352
    return-void
.end method

.method private sendMessage()V
    .locals 13

    .line 406
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatMessageView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "current_user_ref":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "chat_user_ref":Ljava/lang/String;
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v6, "messages"

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    .line 413
    .local v3, "user_message_push":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v3}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "push_id":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v6, "messageMap":Ljava/util/Map;
    const-string v7, "message"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "seen"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v8, "type"

    const-string v10, "text"

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v8, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    const-string v10, "time"

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    const-string v10, "from"

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 423
    .local v8, "messageUserMap":Ljava/util/Map;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatMessageView:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v10, "Chat"

    invoke-virtual {v4, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 429
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v4, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    const-string v11, "timestamp"

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    sget-object v12, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    invoke-virtual {v4, v12}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 431
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v4, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v12, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v12, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 432
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v4, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    sget-object v7, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    invoke-virtual {v4, v7}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 434
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    new-instance v7, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;

    invoke-direct {v7, p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$x9MAQ_aikIu5piIAft3Bwji4Pm8;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v7}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 445
    .end local v1    # "current_user_ref":Ljava/lang/String;
    .end local v2    # "chat_user_ref":Ljava/lang/String;
    .end local v3    # "user_message_push":Lcom/google/firebase/database/DatabaseReference;
    .end local v5    # "push_id":Ljava/lang/String;
    .end local v6    # "messageMap":Ljava/util/Map;
    .end local v8    # "messageUserMap":Ljava/util/Map;
    :cond_0
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "message"
        }
    .end annotation

    .line 448
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->getFCMService()Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "click_action"

    const-string v2, "MainActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/model/Notification;

    invoke-direct {v1, p1, p2, v2}, Lcom/definiteautomation/dreamludofantacy/model/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v1, "notification":Lcom/definiteautomation/dreamludofantacy/model/Notification;
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/model/Sender;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->token:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/definiteautomation/dreamludofantacy/model/Sender;-><init>(Ljava/lang/String;Lcom/definiteautomation/dreamludofantacy/model/Notification;)V

    .line 459
    .local v2, "content":Lcom/definiteautomation/dreamludofantacy/model/Sender;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mService:Lcom/definiteautomation/dreamludofantacy/remote/APIService;

    invoke-interface {v3, v2}, Lcom/definiteautomation/dreamludofantacy/remote/APIService;->sendNotification(Lcom/definiteautomation/dreamludofantacy/model/Sender;)Lretrofit2/Call;

    move-result-object v3

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$6;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$6;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 470
    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityResult$4$ChatActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "current_user_ref"    # Ljava/lang/String;
    .param p2, "push_id"    # Ljava/lang/String;
    .param p3, "chat_user_ref"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .line 271
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "download_url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v1, "messageMap":Ljava/util/Map;
    const-string v2, "message"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "seen"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "type"

    const-string v3, "image"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v2, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    const-string v3, "time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    const-string v3, "from"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v2, "messageUserMap":Ljava/util/Map;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatMessageView:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;

    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 292
    return-void
.end method

.method public synthetic lambda$onActivityResult$5$ChatActivity(Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1, "filepath"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "current_user_ref"    # Ljava/lang/String;
    .param p3, "push_id"    # Ljava/lang/String;
    .param p4, "chat_user_ref"    # Ljava/lang/String;
    .param p5, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 268
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$X-eozDX-rLsxMA3A4C7ZTjqoJYA;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 295
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$ChatActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 233
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->sendMessage()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ChatActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "galleryIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "SELECT IMAGE"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method

.method public synthetic lambda$onCreate$2$ChatActivity()V
    .locals 1

    .line 244
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentPage:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->itemPos:I

    .line 246
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->loadMoreMessages()V

    .line 247
    return-void
.end method

.method public synthetic lambda$sendMessage$6$ChatActivity(Ljava/lang/String;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .param p3, "databaseReference"    # Lcom/google/firebase/database/DatabaseReference;

    .line 435
    if-eqz p2, :cond_0

    .line 436
    invoke-virtual {p2}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_FULL_NAME"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 254
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    const/4 v0, 0x1

    move/from16 v7, p1

    if-ne v7, v0, :cond_0

    const/4 v0, -0x1

    move/from16 v8, p2

    if-ne v8, v0, :cond_1

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 259
    .local v9, "imageUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "current_user_ref":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 262
    .local v11, "chat_user_ref":Ljava/lang/String;
    iget-object v0, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v12

    .line 263
    .local v12, "user_message_push":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v12}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "push_id":Ljava/lang/String;
    iget-object v0, v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mImageStorage:Lcom/google/firebase/storage/StorageReference;

    const-string v1, "message_images"

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v14

    .line 266
    .local v14, "filepath":Lcom/google/firebase/storage/StorageReference;
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v14, v0}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v15

    new-instance v5, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v10

    move-object v4, v13

    move-object v6, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$diSBejhNQKMS-YPIVz7rRQnAiAw;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Lcom/google/firebase/storage/UploadTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    goto :goto_0

    .line 256
    .end local v9    # "imageUri":Landroid/net/Uri;
    .end local v10    # "current_user_ref":Ljava/lang/String;
    .end local v11    # "chat_user_ref":Ljava/lang/String;
    .end local v12    # "user_message_push":Lcom/google/firebase/database/DatabaseReference;
    .end local v13    # "push_id":Ljava/lang/String;
    .end local v14    # "filepath":Lcom/google/firebase/storage/StorageReference;
    :cond_0
    move/from16 v8, p2

    .line 299
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->setContentView(I)V

    .line 101
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 102
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 104
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 105
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 108
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v3, "KEY_USER_ID"

    invoke-virtual {v1, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    .line 110
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v3, "Users"

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    .line 112
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "user_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "user_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "userName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "match_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMatchId:Ljava/lang/String;

    .line 116
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 117
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0b0049

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 118
    .local v5, "actionBarView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 121
    const v6, 0x7f080137

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mTitleView:Landroid/widget/TextView;

    .line 122
    const v6, 0x7f080136

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastSeenView:Landroid/widget/TextView;

    .line 123
    const v6, 0x7f080135

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 125
    const v6, 0x7f0800fc

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatAddBtn:Landroid/widget/ImageButton;

    .line 126
    const v6, 0x7f0800ff

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatSendBtn:Landroid/widget/ImageButton;

    .line 127
    const v6, 0x7f0800fe

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatMessageView:Landroid/widget/EditText;

    .line 129
    new-instance v6, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->messagesList:Ljava/util/List;

    invoke-direct {v6, v7, p0}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    .line 131
    const v6, 0x7f080257

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    const v6, 0x7f080253

    invoke-virtual {p0, v6}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 133
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLinearLayout:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 135
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 136
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLinearLayout:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 138
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mMessagesList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mAdapter:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 141
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v6

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mImageStorage:Lcom/google/firebase/storage/StorageReference;

    .line 142
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v7, "Chat"

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    const-string v8, "seen"

    invoke-virtual {v6, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 144
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->loadMessages()V

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    new-instance v6, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mTitleView:Landroid/widget/TextView;

    const-string v8, "User"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v6

    const-string v8, "https://dreamludo.definiteautomation.com/default_avatar.png"

    invoke-virtual {v6, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    const v8, 0x7f0700c4

    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 173
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 204
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRootRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, v7}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 233
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatSendBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$7dlfpdQENh6T6Lb6VxWqrunmIC4;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$7dlfpdQENh6T6Lb6VxWqrunmIC4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mChatAddBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$2kMj9KkukIhkLT_PJqADMcoc7KQ;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$2kMj9KkukIhkLT_PJqADMcoc7KQ;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OOAHiCPMNcSNv9zgOI7KNYYxs_c;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OOAHiCPMNcSNv9zgOI7KNYYxs_c;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 249
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 481
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 482
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mLastSeenView:Landroid/widget/TextView;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 474
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 475
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 476
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 487
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 488
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->mUserRef:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 489
    return-void
.end method
