.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBootCompleted:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasListeners:Z

.field public mLastLocation:Landroid/location/Location;

.field public mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field public final mListeners:Landroid/util/ArrayMap;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "TwilightService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    return v2

    :cond_a
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_4b

    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_4b

    const-string/jumbo p1, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    :cond_2d
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_36
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    return v0

    :cond_3e
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez p1, :cond_4b

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_4b
    return v0
.end method

.method public final onAlarm()V
    .registers 3

    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_28
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 5

    if-eqz p1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    :cond_38
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onStart()V
    .registers 3

    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public final startListening()V
    .registers 6

    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v3, Landroid/os/HandlerExecutor;

    invoke-direct {v3, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v1, "fused"

    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_75

    :cond_58
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    if-nez v0, :cond_97

    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_97
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final updateTwilightState()V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_9

    goto :goto_f

    :cond_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    :goto_f
    const/4 v3, 0x1

    if-nez v2, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_bd

    :cond_15
    new-instance v4, Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-wide/16 v11, 0x0

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    const-wide/16 v11, 0x0

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    const-wide/16 v11, 0x1

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    iput-wide v9, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    const-wide v9, 0x3f91df46a2529d39L  # 0.017453292519943295

    mul-double/2addr v5, v9

    const-wide v11, 0x400921fb54442d18L  # Math.PI

    add-double/2addr v5, v11

    const-wide v13, 0x401921fb54442d18L  # 6.283185307179586

    invoke-static {v5, v6, v13, v14}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v5

    sub-double/2addr v5, v11

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8, v13, v14}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v7

    sub-double/2addr v7, v11

    iput-wide v7, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    const-wide/high16 v7, 0x4038000000000000L  # 24.0

    mul-double/2addr v5, v7

    const-wide v7, 0x414b774000000000L  # 3600000.0

    mul-double/2addr v5, v7

    div-double/2addr v5, v13

    double-to-long v5, v5

    iput-wide v5, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    const/16 v6, 0xc

    invoke-virtual {v2, v5, v6}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v8

    cmp-long v10, v8, v0

    const/4 v11, 0x5

    if-gez v10, :cond_a5

    invoke-virtual {v2, v11, v3}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    goto :goto_b8

    :cond_a5
    cmp-long v0, v6, v0

    if-lez v0, :cond_b8

    const/4 v0, -0x1

    invoke-virtual {v2, v11, v0}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v8

    :cond_b8
    :goto_b8
    new-instance v0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    :goto_bd
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_c0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_d1
    if-ltz v2, :cond_f1

    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_d1

    :catchall_ee
    move-exception v0

    move-object p0, v0

    goto :goto_10e

    :cond_f1
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_c0 .. :try_end_f2} :catchall_ee

    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eqz v1, :cond_fe

    iget-wide v0, v0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    :goto_fc
    move-wide v4, v0

    goto :goto_101

    :cond_fe
    iget-wide v0, v0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    goto :goto_fc

    :goto_101
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v6, "TwilightService"

    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_10d
    return-void

    :goto_10e
    :try_start_10e
    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_ee

    throw p0
.end method
