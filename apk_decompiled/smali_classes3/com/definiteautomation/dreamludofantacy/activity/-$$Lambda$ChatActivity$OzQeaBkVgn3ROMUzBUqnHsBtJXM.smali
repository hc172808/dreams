.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;-><init>()V

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ChatActivity$OzQeaBkVgn3ROMUzBUqnHsBtJXM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/ChatActivity;->lambda$onActivityResult$3(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    return-void
.end method
