.class Lcom/goodiebag/pinview/Pinview$2;
.super Ljava/lang/Object;
.source "Pinview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodiebag/pinview/Pinview;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodiebag/pinview/Pinview;


# direct methods
.method constructor <init>(Lcom/goodiebag/pinview/Pinview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/goodiebag/pinview/Pinview;

    .line 167
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview$2;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview$2;->this$0:Lcom/goodiebag/pinview/Pinview;

    invoke-static {v0}, Lcom/goodiebag/pinview/Pinview;->access$100(Lcom/goodiebag/pinview/Pinview;)V

    .line 171
    return-void
.end method
