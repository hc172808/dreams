.class final enum Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;
.super Ljava/lang/Enum;
.source "CircularProgressEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

.field public static final enum IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

.field public static final enum PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    new-instance v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    .line 23
    const/4 v3, 0x2

    new-array v3, v3, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->$VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    return-object v0
.end method

.method public static values()[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;
    .locals 1

    .line 23
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->$VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    invoke-virtual {v0}, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressEditText$State;

    return-object v0
.end method
