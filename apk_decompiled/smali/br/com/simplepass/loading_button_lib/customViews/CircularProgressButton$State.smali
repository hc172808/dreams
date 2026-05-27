.class final enum Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;
.super Ljava/lang/Enum;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

.field public static final enum DONE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

.field public static final enum IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

.field public static final enum PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

.field public static final enum STOPED:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 43
    new-instance v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->PROGRESS:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    new-instance v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->IDLE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    new-instance v3, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->DONE:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    new-instance v5, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    const-string v7, "STOPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->STOPED:Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    .line 42
    const/4 v7, 0x4

    new-array v7, v7, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->$VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    return-object v0
.end method

.method public static values()[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;
    .locals 1

    .line 42
    sget-object v0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->$VALUES:[Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    invoke-virtual {v0}, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$State;

    return-object v0
.end method
