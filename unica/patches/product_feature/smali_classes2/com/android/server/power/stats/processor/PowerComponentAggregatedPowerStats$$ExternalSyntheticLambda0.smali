.class public final synthetic Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public final synthetic f$1:[J

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$1:[J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$2:[Z

    iput-object p4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$3:Landroid/util/IndentingPrintWriter;

    iput-object p5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$5:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iput-object p7, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$1:[J

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$2:[Z

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$3:Landroid/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$5:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    check-cast p1, [I

    iget-object v7, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    const/4 v0, 0x0

    aget-boolean v7, v2, v0

    if-eqz v7, :cond_2c

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2c
    aput-boolean v0, v2, v0

    const-string v2, "("

    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    move v7, v0

    :goto_36
    array-length v8, p1

    const-string v9, " "

    if-ge v7, v8, :cond_55

    aget-object v8, v5, v7

    iget-boolean v8, v8, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v8, :cond_52

    if-nez v4, :cond_46

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    aget-object v4, v5, v7

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v8, p1, v7

    aget-object v4, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_55
    if-eqz v6, :cond_5d

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    const-string p1, ") "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
