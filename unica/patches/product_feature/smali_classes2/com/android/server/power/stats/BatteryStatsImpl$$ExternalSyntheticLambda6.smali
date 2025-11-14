.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryCCInfo()I

    move-result v3

    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_2

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_2

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_2

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    goto :goto_1

    :cond_3
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    goto :goto_1

    :cond_4
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_8

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    goto :goto_2

    :cond_6
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_8

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    goto :goto_2

    :cond_7
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_8

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    :cond_8
    :goto_2
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    goto :goto_3

    :cond_9
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    goto :goto_3

    :cond_a
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    :cond_b
    :goto_3
    iget-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    if-eqz v3, :cond_d

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateOldDischargeSilentLogOnLevelPermilLocked(II)V

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    if-eqz p0, :cond_c

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    return-void

    :cond_c
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    :cond_d
    return-void
.end method
