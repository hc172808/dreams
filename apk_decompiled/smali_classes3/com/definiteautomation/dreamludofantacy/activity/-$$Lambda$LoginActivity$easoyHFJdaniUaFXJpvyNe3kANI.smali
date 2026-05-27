.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;-><init>()V

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$easoyHFJdaniUaFXJpvyNe3kANI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 0

    invoke-static {p1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->lambda$disconnectFromFacebook$3(Lcom/facebook/GraphResponse;)V

    return-void
.end method
