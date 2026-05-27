.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;->f$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, p1, p2}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->lambda$onCreate$2$MainActivity(Landroid/content/SharedPreferences;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
