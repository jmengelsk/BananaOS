.class public final synthetic Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_4f

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    if-ne v3, p1, :cond_22

    goto :goto_4c

    :cond_22
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v0, :cond_4c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    if-lez v0, :cond_40

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_40
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_4f
    :goto_4f
    const-string/jumbo p0, "android.sensor."

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    const/16 p0, 0xf

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_5e
    const/16 p0, 0x20

    const/16 p1, 0x5f

    invoke-virtual {v1, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
