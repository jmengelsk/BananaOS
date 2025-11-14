.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_38

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    :try_start_16
    invoke-interface {v3}, Landroid/app/time/ITimeZoneDetectorListener;->onChange()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_35

    :catchall_1a
    move-exception p0

    goto :goto_3a

    :catch_1c
    move-exception v4

    :try_start_1d
    const-string/jumbo v5, "time_zone_detector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to notify listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_1a

    throw p0
.end method
