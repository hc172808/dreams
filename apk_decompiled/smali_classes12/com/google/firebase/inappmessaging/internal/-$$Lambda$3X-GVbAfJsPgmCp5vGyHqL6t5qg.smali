.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method
