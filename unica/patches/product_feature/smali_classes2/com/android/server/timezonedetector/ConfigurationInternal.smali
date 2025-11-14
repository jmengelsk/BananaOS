.class public final Lcom/android/server/timezonedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAutoDetectionEnabledSetting:Z

.field public final mEnhancedMetricsCollectionEnabled:Z

.field public final mGeoDetectionEnabledSetting:Z

.field public final mGeoDetectionRunInBackgroundEnabled:Z

.field public final mGeoDetectionSupported:Z

.field public final mLocationEnabledSetting:Z

.field public final mManualChangeTrackingSupported:Z

.field public final mNotificationTrackingSupported:Z

.field public final mNotificationsEnabledSetting:Z

.field public final mNotificationsSupported:Z

.field public final mTelephonyDetectionSupported:Z

.field public final mTelephonyFallbackSupported:Z

.field public final mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    iget-object v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    const-string/jumbo v1, "userId must be set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsEnabledSetting:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsTrackingSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    iget-boolean p1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mManualChangeTrackingSupported:Z

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mManualChangeTrackingSupported:Z

    return-void
.end method


# virtual methods
.method public final asCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .locals 9

    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    const/16 v3, 0x14

    const/16 v4, 0xa

    const/16 v5, 0x28

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setUseLocationEnabled(Z)Landroid/app/time/TimeZoneCapabilities$Builder;

    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    iget-boolean v7, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    const/16 v8, 0x1e

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_1
    move v0, v8

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    move v3, v8

    goto :goto_4

    :cond_7
    move v3, v5

    :goto_4
    invoke-virtual {v1, v3}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSetManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-eqz p0, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {v1, v4}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureNotificationsEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/timezonedetector/ConfigurationInternal;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mManualChangeTrackingSupported:Z

    iget-boolean p1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mManualChangeTrackingSupported:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getDetectionMode()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    if-eqz v3, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 15

    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mManualChangeTrackingSupported:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isAutoDetectionSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isGeoDetectionExecutionEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationInternal{mUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserConfigAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTelephonyDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGeoDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTelephonyFallbackSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGeoDetectionRunInBackgroundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnhancedMetricsCollectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoDetectionEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLocationEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGeoDetectionEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationsSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationsEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationTrackingSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mManualChangeTrackingSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mManualChangeTrackingSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
