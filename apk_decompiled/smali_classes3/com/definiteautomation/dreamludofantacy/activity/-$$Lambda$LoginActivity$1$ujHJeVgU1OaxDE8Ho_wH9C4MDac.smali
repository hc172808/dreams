.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;

.field public final synthetic f$1:Lcom/facebook/login/LoginResult;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;Lcom/facebook/login/LoginResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;->f$1:Lcom/facebook/login/LoginResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;->f$1:Lcom/facebook/login/LoginResult;

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->lambda$onSuccess$0$LoginActivity$1(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
