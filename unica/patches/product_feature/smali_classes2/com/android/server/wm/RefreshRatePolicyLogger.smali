.class public final Lcom/android/server/wm/RefreshRatePolicyLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRefreshRateHistories:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    if-eqz v1, :cond_2b

    const/4 v4, 0x1

    if-eq v1, v4, :cond_27

    const/4 v4, 0x2

    if-eq v1, v4, :cond_23

    const-string/jumbo v4, "Unknown_"

    invoke-static {v1, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    :cond_23
    const-string/jumbo v4, "Max"

    goto :goto_2e

    :cond_27
    const-string/jumbo v4, "Min"

    goto :goto_2e

    :cond_2b
    const-string/jumbo v4, "ModeId"

    :goto_2e
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v5, -0x1

    iput v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    const/high16 v5, -0x40800000  # -1.0f

    iput v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    iput-object v4, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mTag:Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/core/SystemHistory;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {v5, v0}, Lcom/samsung/android/core/SystemHistory;->enableLog(Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_4c
    return-void
.end method
