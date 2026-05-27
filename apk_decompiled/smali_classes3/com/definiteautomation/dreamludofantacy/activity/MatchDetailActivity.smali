.class public Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MatchDetailActivity.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field private static final PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0xda

.field public static final REQUEST_CODE_PICK_GALLERY:I = 0x1


# instance fields
.field private final UPDATE_INTERVAL:I

.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field public boardTv:Landroid/widget/TextView;

.field private cancelCb:Landroid/widget/CheckBox;

.field public currentTime:Ljava/lang/String;

.field public fParticipantIdSt:Ljava/lang/String;

.field public fParticipantNameSt:Ljava/lang/String;

.field public feesSt:D

.field private lossCb:Landroid/widget/CheckBox;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field public mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

.field private mMilliSeconds:J

.field private mMinutes:J

.field private mRepeatHandler:Landroid/os/Handler;

.field private mRepeatRunnable:Ljava/lang/Runnable;

.field private mSeconds:J

.field public matchIdSt:Ljava/lang/String;

.field public nameTv:Landroid/widget/TextView;

.field private playBt:Landroid/widget/Button;

.field public prizeSt:D

.field public prizeTv:Landroid/widget/TextView;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field private proofIv:Landroid/widget/ImageView;

.field public remarkTv:Landroid/widget/TextView;

.field private resultCv:Landroidx/cardview/widget/CardView;

.field private rulesWv:Landroid/webkit/WebView;

.field public sParticipantIdSt:Ljava/lang/String;

.field public sParticipantNameSt:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field private status:I

.field public timerTv:Landroid/widget/TextView;

.field private typeSt:I

.field private uploadBt:Landroid/widget/Button;

.field private uploadCv:Landroidx/cardview/widget/CardView;

.field private uriFile:Ljava/lang/String;

.field public whatsAppTv:Landroid/widget/TextView;

.field private winCb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMinutes:J

    .line 75
    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mSeconds:J

    .line 76
    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMilliSeconds:J

    .line 84
    const/16 v0, 0x2710

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->UPDATE_INTERVAL:I

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->typeSt:I

    return v0
.end method

.method static synthetic access$400(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadCv:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->rulesWv:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;
    .param p1, "x1"    # J

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->calculateTime(J)V

    return-void
.end method

.method private calculateTime(J)V
    .locals 6
    .param p1, "milliSeconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliSeconds"
        }
    .end annotation

    .line 668
    const/16 v0, 0x8

    const-string v1, "0"

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    .line 669
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    iput-wide v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mSeconds:J

    .line 670
    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    rem-long/2addr v2, v4

    iput-wide v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMinutes:J

    .line 672
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->displayText(Landroid/widget/TextView;)V

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->deleteParticipant()V

    .line 686
    :cond_2
    :goto_0
    return-void
.end method

.method private deleteParticipant()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 350
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_USER_ID"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1234567890"

    invoke-interface {v0, v3, v1, v2}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->deleteParticipant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 351
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 373
    return-void
.end method

.method private displayText(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "timeText"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeText"
        }
    .end annotation

    .line 690
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Board close in\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMinutes:J

    invoke-direct {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getTwoDigitNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mSeconds:J

    invoke-direct {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getTwoDigitNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "stringBuilder":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v0    # "stringBuilder":Ljava/lang/String;
    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/NullPointerException;
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private getRules()V
    .locals 2

    .line 526
    const v0, 0x7f08031b

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->rulesWv:Landroid/webkit/WebView;

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 529
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    const-string v1, "1234567890"

    invoke-interface {v0, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getRules(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 530
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$7;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 553
    return-void
.end method

.method private getTwoDigitNumber(J)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 698
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 701
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCounter()V
    .locals 7

    .line 636
    new-instance v6, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;

    iget-wide v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMilliSeconds:J

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$8;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;JJ)V

    iput-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 653
    return-void
.end method

.method private onGalleryImageResultInstrument(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 620
    .local v0, "saveUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 623
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    .line 624
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->proofIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->proofIv:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->proofIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 632
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private pickImage()V
    .locals 2

    .line 569
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 575
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private searchParticipant()V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->searchParticipant(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 279
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 345
    return-void
.end method

.method private uploadResult()V
    .locals 8

    .line 376
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_USER_ID"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "1234567890"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    if-ne v0, v3, :cond_0

    .line 377
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 379
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    iget v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateResultParti1WithoutProof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 380
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 411
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    goto/16 :goto_0

    .line 412
    :cond_0
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Please upload proof before submit result"

    const-string v5, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {p0, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_1
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 418
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    const-string v3, "1234567890"

    invoke-interface/range {v2 .. v7}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateResultParti1WithProof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 419
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 449
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    goto/16 :goto_0

    .line 450
    :cond_2
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    if-ne v0, v3, :cond_3

    .line 451
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 453
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    iget v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateResultParti2WithoutProof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 454
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$5;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 484
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    goto :goto_0

    .line 485
    :cond_3
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    invoke-static {p0, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_4
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 491
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uriFile:Ljava/lang/String;

    const-string v3, "1234567890"

    invoke-interface/range {v2 .. v7}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateResultParti2WithProof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 492
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$6;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 523
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public errorValidation()V
    .locals 3

    .line 609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    const-string v2, "Error while opening the image file. Please try again."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->finish()V

    .line 613
    return-void
.end method

.method public getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmp"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    .line 580
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 582
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 583
    .local v1, "imageBytes":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public synthetic lambda$onCreate$0$MatchDetailActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$MatchDetailActivity(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_USER_ID"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "match_id"

    const-string v2, "user_name"

    const-string v3, "user_id"

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "chatIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    .end local v0    # "chatIntent":Landroid/content/Intent;
    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .restart local v0    # "chatIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    .end local v0    # "chatIntent":Landroid/content/Intent;
    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    const-string v1, "Please, Wait some time till opponent join match."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$2$MatchDetailActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    .line 221
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->winCb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->lossCb:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->cancelCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public synthetic lambda$onCreate$3$MatchDetailActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    .line 229
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->winCb:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->lossCb:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->cancelCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadCv:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public synthetic lambda$onCreate$4$MatchDetailActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->status:I

    .line 237
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->winCb:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->lossCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->cancelCb:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public synthetic lambda$onCreate$5$MatchDetailActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 245
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xda

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->pickImage()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->pickImage()V

    .line 253
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$6$MatchDetailActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 255
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadResult()V

    return-void
.end method

.method public synthetic lambda$onCreate$7$MatchDetailActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 258
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.ludo.king"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :cond_0
    const/4 v1, 0x0

    const-string v2, "Ludo King is Not Installed"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 264
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$8$MatchDetailActivity()V
    .locals 4

    .line 269
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->searchParticipant()V

    .line 270
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mRepeatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mRepeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "result"
        }
    .end annotation

    .line 588
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 589
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 590
    if-nez p2, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->userCancelled()V

    goto :goto_1

    .line 592
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    :try_start_0
    invoke-direct {p0, p3}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->onGalleryImageResultInstrument(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    goto :goto_1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->errorValidation()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->errorValidation()V

    .line 602
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->setContentView(I)V

    .line 91
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 92
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 94
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 95
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 96
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$KrSWdOfe15Lb9WcTAf8sIe-zDOE;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$KrSWdOfe15Lb9WcTAf8sIe-zDOE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v2, 0x7f0803ce

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f08027c

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0802e0

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->prizeTv:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0800c1

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->boardTv:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f08043d

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->whatsAppTv:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0802fe

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f08041f

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    .line 108
    const v2, 0x7f0802d7

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    .line 109
    const v2, 0x7f080440

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->winCb:Landroid/widget/CheckBox;

    .line 110
    const v2, 0x7f080230

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->lossCb:Landroid/widget/CheckBox;

    .line 111
    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->cancelCb:Landroid/widget/CheckBox;

    .line 112
    const v2, 0x7f0802eb

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->proofIv:Landroid/widget/ImageView;

    .line 113
    const v2, 0x7f080420

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadCv:Landroidx/cardview/widget/CardView;

    .line 114
    const v2, 0x7f080300

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    .line 116
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "0"

    if-eqz v2, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "ID_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "FEE_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->feesSt:D

    .line 119
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PRIZE_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->prizeSt:D

    .line 120
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "TYPE_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->typeSt:I

    .line 121
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "CURR_TIME_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->currentTime:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PLAY_TIME_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startTime:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PARTI1_ID_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PARTI2_ID_KEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PARTI1_NAME_KEY"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "PARTI2_NAME_KEY"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "%s Vs %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    const-string v7, "Please, Share room code to opponent join match."

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "Please, Don\'t press back until waiting time over or opponent join match."

    if-nez v2, :cond_1

    iget v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->typeSt:I

    if-ne v2, v3, :cond_1

    .line 137
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v9, v8, v1

    const-string v9, "%s Vs Team 2"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 140
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->typeSt:I

    if-nez v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v9, v8, v1

    const-string v9, "%s Vs Player 2"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->typeSt:I

    if-ne v2, v3, :cond_3

    .line 153
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    const-string v8, "Team 1 Vs Team 2"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_3
    if-nez v2, :cond_4

    .line 161
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    const-string v8, "Player 1 Vs Player 2"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->resultCv:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->boardTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->matchIdSt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->prizeTv:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v7, v5, v1

    iget-wide v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->prizeSt:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v3, "%s%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->currentTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 174
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 178
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_6
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->currentTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 182
    .local v2, "time":I
    int-to-long v7, v2

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-virtual {p0, v7, v8}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->setTime(J)V

    .line 183
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->startCountDown()V

    .line 184
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->searchParticipant()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "time":I
    :goto_1
    goto :goto_2

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getRules()V

    .line 197
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->whatsAppTv:Landroid/widget/TextView;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$1wnNhsJEuiALV_-Axi9iRMqO4IY;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$1wnNhsJEuiALV_-Axi9iRMqO4IY;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->winCb:Landroid/widget/CheckBox;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$DeP9sZ5yp2evv175EYvK0kauvCE;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$DeP9sZ5yp2evv175EYvK0kauvCE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->lossCb:Landroid/widget/CheckBox;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$x1uGraYuxnfTHdZBmdACPLgQYPM;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$x1uGraYuxnfTHdZBmdACPLgQYPM;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->cancelCb:Landroid/widget/CheckBox;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$3G0Le5jeyGBFmL-dNoaET52vXbk;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$3G0Le5jeyGBFmL-dNoaET52vXbk;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->proofIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$uWqpL6BUfEcGdECS2Jg4WoM8HTY;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$uWqpL6BUfEcGdECS2Jg4WoM8HTY;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->uploadBt:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$2w6gJMLDk21Ncfhs1CMEgGG9fHU;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$2w6gJMLDk21Ncfhs1CMEgGG9fHU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->playBt:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$o2ZFu48Ccg2SDn6kolQDVfkfF3c;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$o2ZFu48Ccg2SDn6kolQDVfkfF3c;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 267
    :cond_8
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mRepeatHandler:Landroid/os/Handler;

    .line 268
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$nxjbhMeA0NCWjuo_rSs38Cbhrf4;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MatchDetailActivity$nxjbhMeA0NCWjuo_rSs38Cbhrf4;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mRepeatRunnable:Ljava/lang/Runnable;

    .line 272
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mRepeatHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_9
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 558
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 559
    const/16 v0, 0xda

    if-ne p1, v0, :cond_0

    .line 561
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->pickImage()V

    .line 565
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "milliSeconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliSeconds"
        }
    .end annotation

    .line 662
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mMilliSeconds:J

    .line 663
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->initCounter()V

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->calculateTime(J)V

    .line 665
    return-void
.end method

.method public startCountDown()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 659
    :cond_0
    return-void
.end method

.method public userCancelled()V
    .locals 2

    .line 605
    const-string v0, "User Cancelled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 606
    return-void
.end method
