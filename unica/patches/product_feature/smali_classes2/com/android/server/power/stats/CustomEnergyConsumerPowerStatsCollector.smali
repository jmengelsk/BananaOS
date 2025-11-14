.class public final Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mCollectors:Ljava/util/List;

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    iput-object p1, v1, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    return-void
.end method


# virtual methods
.method public final collectAndDump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ensureInitialized()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(I)[I

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    const/16 v3, 0x3e8

    move v6, v3

    move v3, v1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_b

    aget v4, v2, v3

    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v5, :cond_2

    new-array v5, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    goto :goto_1

    :cond_2
    check-cast v5, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v5, v5, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v5}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v5, :cond_3

    new-array v5, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v7, v5

    move v8, v1

    :goto_2
    if-ge v8, v7, :cond_a

    aget-object v9, v5, v8

    iget v10, v9, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    if-ne v10, v4, :cond_9

    iget-object v4, v9, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isBlank()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CUSTOM_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v9, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v8, v1

    :goto_3
    if-ge v8, v5, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-static {v9}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v9, 0x5f

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object v7, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    const-string/jumbo v5, "Unsupported energy consumer ID "

    const-string/jumbo v7, "PowerStatsCollector"

    invoke-static {v4, v5, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "unsupported"

    goto :goto_5

    :goto_6
    new-instance v4, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    add-int/lit8 v11, v6, 0x1

    aget v9, v2, v3

    sget-object v10, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    new-instance v5, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v6, v11

    goto/16 :goto_0

    :cond_b
    :goto_7
    return-void
.end method

.method public final forceSchedule()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final schedule()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
