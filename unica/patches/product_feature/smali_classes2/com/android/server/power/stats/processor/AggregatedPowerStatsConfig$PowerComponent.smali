.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerComponentId:I

.field public mProcessorSupplier:Ljava/util/function/Supplier;

.field public mTrackedDeviceStates:[I

.field public mTrackedUidStates:[I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    return-void
.end method

.method public static isTracked(I[I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_11

    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p1, v2

    if-ne v3, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    :goto_11
    return v0
.end method


# virtual methods
.method public final getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .registers 5

    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    move-result p0

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v3, "scr"

    invoke-direct {v1, v3, p0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .registers 6

    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    move-result v2

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v4, "scr"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v3, 0x2

    invoke-static {v3, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    move-result p0

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    const-string/jumbo v4, "ps"

    invoke-direct {v2, v4, p0, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p0

    return-object p0
.end method

.method public final varargs trackDeviceStates([I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component is already configured"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs trackUidStates([I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component is already configured"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
