.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/timedetector/TelephonyTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    const-string/jumbo v1, "New telephony time suggested. suggestion="

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v0

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/time/ExternalTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    const-string v1, "External time suggestion received: suggestion="

    const-string v2, "External suggestion received. currentUserConfig="

    monitor-enter v0

    :try_start_5
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    const-string/jumbo v4, "time_detector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " suggestion="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_3

    monitor-exit v0

    goto :goto_1

    :cond_3
    :try_start_6
    iget-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
