.class public final Lcom/android/server/pm/pu/HotAppGenerator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DAY_INTERVAL:J

.field public static final HOUR_INTERVAL:J

.field public static final MONTH_INTERVAL:J

.field public static final WEEK_INTERVAL:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/pu/HotAppGenerator;->HOUR_INTERVAL:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->DAY_INTERVAL:J

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->WEEK_INTERVAL:J

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/pu/HotAppGenerator;->MONTH_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pu/App;

    iget-object v2, v2, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/UsageStats;

    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p4

    move-object v0, p5

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/pm/pu/App;

    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p4}, Lcom/android/server/pm/pu/App;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/pm/pu/App;

    iget p3, p3, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-long v1, p3

    invoke-direct {v0, v1, v2, p4}, Lcom/android/server/pm/pu/App;-><init>(JLjava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/pu/HotAppGenerator;->getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/pm/pu/HotAppGenerator;->getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p6, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
