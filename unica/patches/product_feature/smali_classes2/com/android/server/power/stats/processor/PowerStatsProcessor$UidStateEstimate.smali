.class public final Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

.field public final proportionalEstimates:Ljava/util/List;

.field public final states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    return-void
.end method
