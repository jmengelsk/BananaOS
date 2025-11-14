.class public final synthetic Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    invoke-static {p1}, Landroid/service/timezone/ITimeZoneProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProvider;

    move-result-object v1

    iget-boolean p0, v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    iget-object p0, v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/service/timezone/ITimeZoneProvider;->startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void

    :cond_0
    invoke-interface {v1}, Landroid/service/timezone/ITimeZoneProvider;->stopUpdates()V

    return-void
.end method
