.class public final Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final id:Ljava/lang/String;

.field public intermediates:Ljava/lang/Object;

.field public final stateValues:[I


# direct methods
.method public constructor <init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    return-void
.end method
