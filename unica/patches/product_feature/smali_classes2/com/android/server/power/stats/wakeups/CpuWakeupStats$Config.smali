.class public final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

.field public static final DEFAULT_WAKEUP_STATS_RETENTION_MS:J

.field public static final DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

.field public static final PROPERTY_NAMES:[Ljava/lang/String;


# instance fields
.field public volatile WAKEUP_MATCHING_WINDOW_MS:J

.field public volatile WAKEUP_STATS_RETENTION_MS:J

.field public volatile WAKING_ACTIVITY_RETENTION_MS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "wakeup_matching_window_ms"

    const-string/jumbo v1, "waking_activity_retention_ms"

    const-string/jumbo v2, "wakeup_stats_retention_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "Config:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "wakeup_stats_retention_ms"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "wakeup_matching_window_ms"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "waking_activity_retention_ms"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9

    const-string/jumbo v0, "waking_activity_retention_ms"

    const-string/jumbo v1, "wakeup_stats_retention_ms"

    const-string/jumbo v2, "wakeup_matching_window_ms"

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_20

    goto :goto_11

    :cond_20
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_64

    goto :goto_43

    :sswitch_29
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_43

    :cond_30
    const/4 v5, 0x2

    goto :goto_43

    :sswitch_32
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_43

    :cond_39
    const/4 v5, 0x1

    goto :goto_43

    :sswitch_3b
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    :goto_43
    packed-switch v5, :pswitch_data_72

    goto :goto_11

    :pswitch_47  #0x2
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    invoke-virtual {p1, v0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    goto :goto_11

    :pswitch_50  #0x1
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    invoke-virtual {p1, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    goto :goto_11

    :pswitch_59  #0x0
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    invoke-virtual {p1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    goto :goto_11

    :cond_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0xe683f93 -> :sswitch_3b
        0x231a1707 -> :sswitch_32
        0x3e8a6539 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_50  #00000001
        :pswitch_47  #00000002
    .end packed-switch
.end method
