.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method
