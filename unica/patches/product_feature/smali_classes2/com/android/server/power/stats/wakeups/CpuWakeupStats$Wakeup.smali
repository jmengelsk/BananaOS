.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sIrqPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

.field public mElapsedMillis:J

.field public mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

.field public mType:I

.field public mUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^(\\-?\\d+)\\s+(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .locals 17

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v0, ":"

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    aget-object v0, v8, v6

    const-string v9, "Abort"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    array-length v0, v8

    new-array v9, v0, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    array-length v11, v8

    move v12, v6

    move v13, v12

    move v14, v7

    :goto_0
    if-ge v12, v11, :cond_d

    aget-object v15, v8, v12

    sget-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_0
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_1

    move v14, v4

    :cond_1
    add-int/lit8 v15, v13, 0x1

    new-instance v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v1, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;->mLine:I

    iput-object v0, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;->mDevice:Ljava/lang/String;

    aput-object v2, v9, v13

    move-object/from16 v1, p5

    iget-object v2, v1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->mSubsystemsForDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    move v2, v6

    move v13, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v16, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_2
    move v3, v5

    goto :goto_3

    :sswitch_0
    const-string v4, "Alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    goto :goto_3

    :sswitch_1
    const-string/jumbo v4, "Wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    const-string v4, "Bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    goto :goto_3

    :sswitch_3
    const-string/jumbo v4, "Sound_trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_4
    const-string v4, "Cellular_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v7

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "Sensor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v6

    :goto_3
    packed-switch v3, :pswitch_data_0

    move v3, v5

    goto :goto_4

    :pswitch_0
    move v3, v7

    goto :goto_4

    :pswitch_1
    const/4 v3, 0x2

    goto :goto_4

    :pswitch_2
    const/4 v3, 0x6

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x3

    goto :goto_4

    :pswitch_4
    const/4 v3, 0x5

    goto :goto_4

    :pswitch_5
    const/4 v3, 0x4

    :goto_4
    if-eq v3, v5, :cond_8

    invoke-virtual {v10, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v13, v7

    :cond_8
    add-int/2addr v2, v7

    const/4 v4, 0x2

    goto :goto_1

    :cond_9
    move v13, v6

    :cond_a
    if-nez v13, :cond_b

    invoke-virtual {v10, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    move v13, v15

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v1, p5

    const-string v2, "Exception while parsing device names from part: "

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpuWakeupStats.Wakeup"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_c
    move-object/from16 v1, p5

    :goto_5
    add-int/2addr v12, v7

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_d
    if-nez v13, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {v10, v5, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v14, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    iput-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    iput-object v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_10
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6c9ac026 -> :sswitch_5
        -0x41b3aec1 -> :sswitch_4
        -0x194b8998 -> :sswitch_3
        -0x13331d72 -> :sswitch_2
        0x292335 -> :sswitch_1
        0x3c68a31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Wakeup{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResponsibleSubsystems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
