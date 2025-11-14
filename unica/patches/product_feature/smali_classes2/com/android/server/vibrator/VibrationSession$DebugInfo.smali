.class public interface abstract Lcom/android/server/vibrator/VibrationSession$DebugInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static formatTime(JZ)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract dump(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract dumpCompact(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
.end method

.method public abstract getCreateUptimeMillis()J
.end method

.method public abstract getDumpAggregationKey()Ljava/lang/Object;
.end method

.method public abstract getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
.end method

.method public abstract logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
.end method
