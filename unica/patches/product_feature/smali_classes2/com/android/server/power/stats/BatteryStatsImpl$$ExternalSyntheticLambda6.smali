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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryCCInfo()I

    move-result v3

    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_40

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    goto :goto_40

    :cond_1f
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_30

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_40

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    goto :goto_40

    :cond_30
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    sub-int/2addr v4, v2

    if-lez v4, :cond_40

    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    :cond_40
    :goto_40
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4e

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    goto :goto_67

    :cond_4e
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    goto :goto_67

    :cond_5b
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_67

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    :cond_67
    :goto_67
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_78

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_99

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    goto :goto_99

    :cond_78
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_89

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_99

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    goto :goto_99

    :cond_89
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_99

    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_99

    iget v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    :cond_99
    :goto_99
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_a4

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    goto :goto_b9

    :cond_a4
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_af

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    goto :goto_b9

    :cond_af
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-eqz v4, :cond_b9

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    :cond_b9
    :goto_b9
    iget-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    if-eqz v3, :cond_cf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateOldDischargeSilentLogOnLevelPermilLocked(II)V

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    if-eqz p0, :cond_cb

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    return-void

    :cond_cb
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    :cond_cf
    return-void
.end method
