.class public Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UpcomingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;,
        Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;,
        Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public currentTime:Ljava/lang/String;

.field private final dataArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field public mListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$TimerListener;

.field private mMilliSeconds:J

.field private mMinutes:J

.field private mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;

.field private mSeconds:J

.field public startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "dataArrayList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMinutes:J

    .line 41
    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mSeconds:J

    .line 42
    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMilliSeconds:J

    .line 36
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/widget/TextView;
    .param p4, "x3"    # Landroid/widget/Button;
    .param p5, "x4"    # Landroid/widget/TextView;
    .param p6, "x5"    # Landroid/widget/TextView;
    .param p7, "x6"    # Landroid/widget/ProgressBar;
    .param p8, "x7"    # I

    .line 24
    invoke-direct/range {p0 .. p8}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->calculateTime(JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method private calculateTime(JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
    .locals 4
    .param p1, "milliSeconds"    # J
    .param p3, "timerTv"    # Landroid/widget/TextView;
    .param p4, "joinBt"    # Landroid/widget/Button;
    .param p5, "roomSizeTv"    # Landroid/widget/TextView;
    .param p6, "roomStatusTv"    # Landroid/widget/TextView;
    .param p7, "progressBar"    # Landroid/widget/ProgressBar;
    .param p8, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "milliSeconds",
            "timerTv",
            "joinBt",
            "roomSizeTv",
            "roomStatusTv",
            "progressBar",
            "position"
        }
    .end annotation

    .line 250
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 251
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mSeconds:J

    .line 252
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMinutes:J

    .line 254
    invoke-direct {p0, p3}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->displayText(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    const-string v0, "JOIN"

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 260
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p7, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Only %d Team left"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Team: 0/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Only %d Player left"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Player: 0/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_0
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

    .line 276
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Board close in\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMinutes:J

    invoke-direct {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->getTwoDigitNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mSeconds:J

    invoke-direct {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->getTwoDigitNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "stringBuilder":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "stringBuilder":Ljava/lang/String;
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
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

    .line 284
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCounter(Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
    .locals 14
    .param p1, "timeText"    # Landroid/widget/TextView;
    .param p2, "joinBt"    # Landroid/widget/Button;
    .param p3, "roomSizeTv"    # Landroid/widget/TextView;
    .param p4, "roomStatusTv"    # Landroid/widget/TextView;
    .param p5, "progressBar"    # Landroid/widget/ProgressBar;
    .param p6, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeText",
            "joinBt",
            "roomSizeTv",
            "roomStatusTv",
            "progressBar",
            "position"
        }
    .end annotation

    .line 217
    move-object v12, p0

    new-instance v13, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;

    iget-wide v2, v12, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMilliSeconds:J

    const-wide/16 v4, 0x3e8

    move-object v0, v13

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$1;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;JJLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    iput-object v13, v12, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 234
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$UpcomingAdapter(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-interface {v0, p2, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;I)V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 64
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_0

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "%s Vs %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 67
    :cond_0
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v15, :cond_1

    .line 68
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "%s Vs Team 2"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 70
    :cond_1
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "%s Vs Player 2"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v15, :cond_3

    .line 74
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v1, "Team 1 Vs Team 2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 77
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v1, "Player 1 Vs Player 2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_4
    :goto_0
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    new-array v1, v13, [Ljava/lang/Object;

    sget-object v2, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v2, v1, v14

    iget-object v2, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    new-array v1, v13, [Ljava/lang/Object;

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v3, v1, v14

    iget-object v3, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v15

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    const/4 v9, 0x4

    :try_start_0
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getCurrent_time()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->currentTime:Ljava/lang/String;

    .line 88
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->startTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    :try_start_1
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->currentTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->startTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 92
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 95
    :cond_5
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->startTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->currentTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 97
    .local v0, "time":I
    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long v2, v1, v3

    iget-object v4, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    iget-object v5, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    iget-object v6, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    iget-object v7, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    iget-object v8, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v1, p0

    const/4 v15, 0x4

    move/from16 v9, p2

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->setTime(JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->startCountDown()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    .end local v0    # "time":I
    :goto_1
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v15, 0x4

    .line 102
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_2
    :try_start_3
    iget-object v1, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    goto :goto_5

    .line 105
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v15, 0x4

    .line 106
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_4
    iget-object v1, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_5
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    const-string v1, "No Team Left! Match is Full."

    const-string v2, "No Player Left! Match is Full."

    const-string v3, "Only "

    const v4, 0x7f070081

    const-string v5, "#ffffff"

    const-string v6, "MATCH FULL"

    const-string v7, "Player: %d/%d"

    const-string v8, "#ff0000"

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v9, "Team"

    invoke-virtual {v0, v9}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    if-lt v0, v9, :cond_6

    .line 113
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v14

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v3, v13

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 121
    :cond_6
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v0

    iget-object v7, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v7

    sub-int/2addr v0, v7

    .line 122
    .local v0, "leftSize":I
    iget-object v7, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Team left"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v14

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v7, v13

    const-string v9, "Team: %d/%d"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0    # "leftSize":I
    goto/16 :goto_6

    .line 127
    :cond_7
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v9, "Single"

    invoke-virtual {v0, v9}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    if-lt v0, v9, :cond_8

    .line 129
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v14

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v3, v13

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_6

    .line 137
    :cond_8
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v0

    iget-object v9, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v9

    sub-int/2addr v0, v9

    .line 138
    .restart local v0    # "leftSize":I
    iget-object v9, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Player left"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v13, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v13}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v14

    iget-object v13, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v13}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v9, v15

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "leftSize":I
    :goto_6
    :try_start_4
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v3, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 145
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    const-string v1, "JOIN"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 147
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    .line 148
    :cond_9
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    .line 149
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    const-string v1, "NEXT"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_8

    .line 153
    :cond_a
    iget-object v0, v10, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 158
    :cond_b
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_7
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setClickable(Z)V

    .line 165
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 166
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 170
    :goto_8
    goto :goto_9

    .line 168
    :catch_4
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_9
    iget-object v0, v11, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;

    invoke-direct {v1, v10, v12}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
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

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;
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

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "mItemClickListener"    # Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$OnItemClickListener;

    .line 33
    return-void
.end method

.method public setTime(JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V
    .locals 7
    .param p1, "milliSeconds"    # J
    .param p3, "timerTv"    # Landroid/widget/TextView;
    .param p4, "joinBt"    # Landroid/widget/Button;
    .param p5, "roomSizeTv"    # Landroid/widget/TextView;
    .param p6, "roomStatusTv"    # Landroid/widget/TextView;
    .param p7, "progressBar"    # Landroid/widget/ProgressBar;
    .param p8, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "milliSeconds",
            "timerTv",
            "joinBt",
            "roomSizeTv",
            "roomStatusTv",
            "progressBar",
            "position"
        }
    .end annotation

    .line 243
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mMilliSeconds:J

    .line 244
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->initCounter(Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    .line 245
    invoke-direct/range {p0 .. p8}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->calculateTime(JLandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;I)V

    .line 246
    return-void
.end method

.method public startCountDown()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 240
    :cond_0
    return-void
.end method
