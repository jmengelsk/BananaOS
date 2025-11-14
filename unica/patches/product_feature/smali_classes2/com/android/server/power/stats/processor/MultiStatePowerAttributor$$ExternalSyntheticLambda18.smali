.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_0
    return-void
.end method
