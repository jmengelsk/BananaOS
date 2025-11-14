.class public final synthetic Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "handleConfigurationInternalMaybeChanged:"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method
