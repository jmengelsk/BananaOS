.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

.field public static final STATE_LABELS_POWER:[Ljava/lang/String;

.field public static final STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

.field public static final STATE_LABELS_SCREEN:[Ljava/lang/String;


# instance fields
.field public mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public mCustomPowerStatsProcessorFactory:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

.field public final mPowerComponents:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "pwr-battery"

    const-string/jumbo v1, "pwr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v0, "scr-on"

    const-string/jumbo v1, "scr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_27

    invoke-static {v2}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_27
    sput-object v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    iget-object p1, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget-object p1, p1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    if-eqz p0, :cond_1d

    iput-object p0, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    :cond_1d
    return-object v1
.end method

.method public final trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .registers 3

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget v2, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    if-ne v2, p2, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_2d

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    iget-object p1, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-object p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Required component "

    const-string v0, " is not configured"

    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
