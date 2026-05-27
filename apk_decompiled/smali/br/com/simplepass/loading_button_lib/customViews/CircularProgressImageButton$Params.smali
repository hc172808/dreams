.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
.super Ljava/lang/Object;
.source "CircularProgressImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Params"
.end annotation


# instance fields
.field private mDoneColor:I

.field private mFinalCornerRadius:F

.field private mInitialCornerRadius:F

.field private mInitialHeight:Ljava/lang/Integer;

.field private mInitialWidth:I

.field private mPaddingProgress:Ljava/lang/Float;

.field private mSpinningBarColor:I

.field private mSpinningBarWidth:F

.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;


# direct methods
.method private constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$1;)V
    .locals 0
    .param p1, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;
    .param p2, "x1"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$1;

    .line 534
    invoke-direct {p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton;)V

    return-void
.end method

.method static synthetic access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # Ljava/lang/Float;

    .line 534
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialCornerRadius:F

    return v0
.end method

.method static synthetic access$202(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # F

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialCornerRadius:F

    return p1
.end method

.method static synthetic access$300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mFinalCornerRadius:F

    return v0
.end method

.method static synthetic access$302(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # F

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mFinalCornerRadius:F

    return p1
.end method

.method static synthetic access$400(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mSpinningBarWidth:F

    return v0
.end method

.method static synthetic access$402(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # F

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mSpinningBarWidth:F

    return p1
.end method

.method static synthetic access$500(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mSpinningBarColor:I

    return v0
.end method

.method static synthetic access$502(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # I

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mSpinningBarColor:I

    return p1
.end method

.method static synthetic access$602(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # I

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mDoneColor:I

    return p1
.end method

.method static synthetic access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$702(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 534
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;

    .line 534
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialWidth:I

    return v0
.end method

.method static synthetic access$802(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;
    .param p1, "x1"    # I

    .line 534
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressImageButton$Params;->mInitialWidth:I

    return p1
.end method
