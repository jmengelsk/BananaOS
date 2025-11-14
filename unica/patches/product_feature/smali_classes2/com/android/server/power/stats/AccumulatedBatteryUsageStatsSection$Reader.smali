.class public final Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# virtual methods
.method public final read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .registers 2

    new-instance p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-object p0
.end method
