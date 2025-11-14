.class public final Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public final mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Landroid/power/PowerStatsInternal;Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final getEnergyConsumerIds(I)[I
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_1

    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v0, :cond_2

    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v0, v0

    if-nez v0, :cond_3

    new-array p0, v1, [I

    return-object p0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v5, p1, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    new-array p0, v1, [I

    return-object p0

    :cond_6
    new-instance p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_2
    if-ge v1, p0, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/stats/EnergyConsumer;

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object p1
.end method
