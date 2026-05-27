.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;

    invoke-direct {v0}, Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;->INSTANCE:Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final raise(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/storage/OnPausedListener;

    check-cast p2, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-interface {p1, p2}, Lcom/google/firebase/storage/OnPausedListener;->onPaused(Ljava/lang/Object;)V

    return-void
.end method
