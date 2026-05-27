.class Lcom/paytm/pgsdk/PaytmPGActivity$1;
.super Ljava/lang/Object;
.source "PaytmPGActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;->initUI()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 173
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$1;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 176
    const-string v0, "User pressed back button which is present in Header Bar."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity$1;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->access$000(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    .line 178
    return-void
.end method
