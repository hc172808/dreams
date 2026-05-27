.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;-><init>()V

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    return-void
.end method
