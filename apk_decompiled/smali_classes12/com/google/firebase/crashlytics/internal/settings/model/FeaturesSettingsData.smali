.class public Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
.super Ljava/lang/Object;
.source "FeaturesSettingsData.java"


# instance fields
.field public final collectReports:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "collectReports"    # Z

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 23
    return-void
.end method
