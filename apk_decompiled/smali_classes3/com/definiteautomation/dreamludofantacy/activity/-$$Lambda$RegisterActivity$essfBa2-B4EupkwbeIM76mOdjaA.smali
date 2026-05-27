.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$essfBa2-B4EupkwbeIM76mOdjaA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$essfBa2-B4EupkwbeIM76mOdjaA;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$essfBa2-B4EupkwbeIM76mOdjaA;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-virtual {v0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->lambda$setFacebookData$7$RegisterActivity(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V

    return-void
.end method
