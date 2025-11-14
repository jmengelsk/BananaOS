.class public final Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# virtual methods
.method public final preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 4

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p0

    if-eqz p0, :cond_85

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_85

    :cond_15
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has unsupported zone("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->$r8$clinit:I

    const/4 v0, 0x4

    const-string/jumbo v1, "LocationTZDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    if-eqz p0, :cond_6e

    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v0, p0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>(Landroid/service/timezone/TimeZoneProviderStatus;)V

    goto :goto_73

    :cond_6e
    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>()V

    :goto_73
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide p0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->build()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p0

    return-object p0

    :cond_85
    :goto_85
    return-object p1
.end method
