.class Lcom/payumoney/core/analytics/AnalyticsDataManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/analytics/AnalyticsDataManager;->pushAllPendingEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/analytics/AnalyticsDataManager;


# direct methods
.method constructor <init>(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/analytics/AnalyticsDataManager;

    .line 322
    iput-object p1, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$5;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/payumoney/core/analytics/AnalyticsDataManager$5;->a:Lcom/payumoney/core/analytics/AnalyticsDataManager;

    invoke-static {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->i(Lcom/payumoney/core/analytics/AnalyticsDataManager;)V

    .line 326
    return-void
.end method
