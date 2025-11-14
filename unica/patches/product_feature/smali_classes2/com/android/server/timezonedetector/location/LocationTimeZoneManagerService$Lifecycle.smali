.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    const v1, 0x111017d

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    iget-object p0, p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-object v2, v1

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    const v3, 0x111017d

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    const-string/jumbo v0, "location_time_zone_manager"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_0
    const-string/jumbo p0, "LocationTZDetector"

    const-string v0, "Geo time zone detection feature is disabled in config"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
