.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Params"
.end annotation


# instance fields
.field private mDoneColor:I

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFinalCornerRadius:F

.field private mInitialCornerRadius:F

.field private mInitialHeight:Ljava/lang/Integer;

.field private mInitialWidth:I

.field private mPaddingProgress:Ljava/lang/Float;

.field private mSpinningBarColor:I

.field private mSpinningBarWidth:F

.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;


# direct methods
.method private constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->this$0:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$1;)V
    .locals 0
    .param p1, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;
    .param p2, "x1"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$1;

    .line 594
    invoke-direct {p0, p1}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;-><init>(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;)V

    return-void
.end method

.method static synthetic access$100(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$1000(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialWidth:I

    return v0
.end method

.method static synthetic access$1002(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # I

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialWidth:I

    return p1
.end method

.method static synthetic access$102(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # Ljava/lang/Float;

    .line 594
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$200(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialCornerRadius:F

    return v0
.end method

.method static synthetic access$202(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # F

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialCornerRadius:F

    return p1
.end method

.method static synthetic access$300(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mFinalCornerRadius:F

    return v0
.end method

.method static synthetic access$302(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # F

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mFinalCornerRadius:F

    return p1
.end method

.method static synthetic access$400(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)F
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mSpinningBarWidth:F

    return v0
.end method

.method static synthetic access$402(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;F)F
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # F

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mSpinningBarWidth:F

    return p1
.end method

.method static synthetic access$500(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mSpinningBarColor:I

    return v0
.end method

.method static synthetic access$502(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # I

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mSpinningBarColor:I

    return p1
.end method

.method static synthetic access$600(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # Ljava/lang/String;

    .line 594
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # [Landroid/graphics/drawable/Drawable;

    .line 594
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$802(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # I

    .line 594
    iput p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mDoneColor:I

    return p1
.end method

.method static synthetic access$900(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;

    .line 594
    iget-object v0, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$902(Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 594
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object p1
.end method
