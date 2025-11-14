.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# static fields
.field public static final CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field public static final LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;


# instance fields
.field public final mConfigurationInternalListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mRecordStateChangesForTests:Z

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string/jumbo v11, "time_zone_notifications_tracking_supported"

    const-string/jumbo v12, "time_zone_manual_change_tracking_supported"

    const-string/jumbo v0, "location_time_zone_detection_feature_supported"

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v2, "secondary_location_time_zone_provider_mode_override"

    const-string/jumbo v3, "location_time_zone_detection_run_in_background_enabled"

    const-string/jumbo v4, "enhanced_metrics_collection_enabled"

    const-string/jumbo v5, "location_time_zone_detection_setting_enabled_default"

    const-string/jumbo v6, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v7, "time_zone_detector_auto_detection_enabled_default"

    const-string/jumbo v8, "time_zone_detector_telephony_fallback_supported"

    const-string/jumbo v9, "time_zone_notifications_supported"

    const-string/jumbo v10, "time_zone_notifications_enabled_default"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    const-string/jumbo v9, "ltzp_event_filtering_age_threshold_millis"

    const-string/jumbo v10, "location_time_zone_detection_uncertainty_delay_millis"

    const-string/jumbo v1, "location_time_zone_detection_feature_supported"

    const-string/jumbo v2, "location_time_zone_detection_run_in_background_enabled"

    const-string/jumbo v3, "location_time_zone_detection_setting_enabled_default"

    const-string/jumbo v4, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v5, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v6, "secondary_location_time_zone_provider_mode_override"

    const-string/jumbo v7, "ltzp_init_timeout_millis"

    const-string/jumbo v8, "ltzp_init_timeout_fuzz_millis"

    invoke-static/range {v1 .. v10}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    const-string/jumbo v3, "android.location.MODE_CHANGED"

    invoke-static {v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    const-string/jumbo v4, "auto_time_zone"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "auto_time_zone_explicit"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "time_zone_notifications"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "location_time_zone_detection_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "preferred_time_zone_detection_method"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    sget-object v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;

    invoke-direct {p1, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .registers 3

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-exit v0

    return-object p0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final declared-synchronized addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final getAutoDetectionEnabledSetting()Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_e

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "system_time"

    const-string/jumbo v4, "time_zone_detector_auto_detection_enabled_default"

    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_30

    :cond_25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_30

    :cond_2e
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_30
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "auto_time_zone_explicit"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_53

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v2, :cond_52

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_52
    return v0

    :cond_53
    return v2
.end method

.method public final getConfigBoolean(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    const v1, 0x1110273

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "system_time"

    const-string/jumbo v3, "time_zone_detector_telephony_fallback_supported"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "system_time"

    const-string/jumbo v2, "location_time_zone_detection_run_in_background_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "system_time"

    const-string/jumbo v2, "enhanced_metrics_collection_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_config_date_time"

    invoke-virtual {v2, v4, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    const p1, 0x1110198

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "system_time"

    const-string/jumbo v4, "time_zone_notifications_supported"

    invoke-static {v1, v4, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsSupported:Z

    iget-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "system_time"

    const-string/jumbo v1, "time_zone_notifications_enabled_default"

    invoke-static {p1, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "time_zone_notifications"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_af

    move v3, v2

    :cond_af
    iput-boolean v3, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsEnabledSetting:Z

    const p1, 0x1110199

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "system_time"

    const-string/jumbo v2, "time_zone_notifications_tracking_supported"

    invoke-static {v1, v2, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mNotificationsTrackingSupported:Z

    const p1, 0x1110197

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "system_time"

    const-string/jumbo v2, "time_zone_manual_change_tracking_supported"

    invoke-static {v1, v2, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mManualChangeTrackingSupported:Z

    new-instance p1, Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-direct {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    :try_end_e6
    .catchall {:try_start_1 .. :try_end_e6} :catchall_e8

    monitor-exit p0

    return-object p1

    :catchall_e8
    move-exception p1

    :try_start_e9
    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw p1
.end method

.method public final declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final getGeoDetectionEnabledSetting(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v2, "system_time"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_21

    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_21

    :cond_1f
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_21
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "location_time_zone_detection_setting_enabled_default"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_time_zone_detection_enabled"

    invoke-static {p0, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    return p0

    :cond_4a
    return v1
.end method

.method public final declared-synchronized getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v0, :cond_7

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "system_time"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_36

    const v1, 0x111018e

    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "enabled"

    goto :goto_2d

    :catchall_28
    move-exception v0

    goto :goto_38

    :cond_2a
    const-string/jumbo v1, "disabled"
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_28

    :goto_2d
    :try_start_2d
    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v0

    :catchall_36
    move-exception v0

    goto :goto_3a

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_28

    :try_start_39
    throw v0

    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_36

    throw v0
.end method

.method public final declared-synchronized getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v0, :cond_7

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "secondary_location_time_zone_provider_mode_override"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "system_time"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_36

    const v1, 0x1110193

    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "enabled"

    goto :goto_2d

    :catchall_28
    move-exception v0

    goto :goto_38

    :cond_2a
    const-string/jumbo v1, "disabled"
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_28

    :goto_2d
    :try_start_2d
    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v0

    :catchall_36
    move-exception v0

    goto :goto_3a

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_28

    :try_start_39
    throw v0

    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_36

    throw v0
.end method

.method public final handleConfigurationInternalChangeOnMainThread()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/StateChangeListener;->onChange()V

    goto :goto_e

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final isGeoTimeZoneDetectionFeatureSupported()Z
    .registers 4

    const v0, 0x111017d

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "system_time"

    const-string/jumbo v1, "location_time_zone_detection_feature_supported"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    :cond_32
    return v2

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public final isGeolocationFallbackEnabled()Z
    .registers 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportGeolocationFallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "preferred_time_zone_detection_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1e
    return v2
.end method

.method public final isTelephonyTimeZoneDetectionFeatureSupported()Z
    .registers 2

    const v0, 0x1110196

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string/jumbo p0, "ro.carrier"

    const-string/jumbo v0, "Unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wifi-only"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    :cond_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "system_time"

    iget-object v3, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_12
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "auto_time_zone_explicit"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v4

    if-eq v4, v0, :cond_32

    iget-object v4, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "auto_time_zone"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "location_time_zone_detection_setting_enabled_override"

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_4e

    :cond_43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_4e

    :cond_4c
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_4e
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result v4

    if-eq v4, v0, :cond_72

    iget-object v4, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "location_time_zone_detection_enabled"

    invoke-static {v4, v5, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_72
    const p1, 0x1110198

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "time_zone_notifications_supported"

    invoke-static {v2, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsNotificationsEnabled()Z

    move-result p1

    const-string/jumbo v0, "time_zone_notifications"

    if-eqz p1, :cond_97

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_97
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "time_zone_notifications_enabled_default"

    invoke-static {v2, p2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iget-object p3, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v1, 0x0

    :goto_af
    if-eq v1, p1, :cond_b6

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b6
    return-void
.end method
