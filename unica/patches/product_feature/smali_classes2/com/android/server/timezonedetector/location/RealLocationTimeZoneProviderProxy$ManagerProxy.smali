.class public final Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
.super Landroid/service/timezone/ITimeZoneProviderManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v2, v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    if-eq v2, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
