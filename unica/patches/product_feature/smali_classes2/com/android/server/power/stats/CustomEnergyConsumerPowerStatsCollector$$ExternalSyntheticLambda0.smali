.class public final synthetic Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    check-cast p1, Lcom/android/internal/os/PowerStats;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
