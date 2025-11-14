.class public final Lcom/android/server/powerstats/PowerStatsService$1;
.super Landroid/os/IPowerStatsService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/os/IPowerStatsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PowerStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    if-nez v0, :cond_1

    const-string/jumbo p0, "PowerStats HAL is not initialized.  No data available."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_5

    const-string v0, "--proto"

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p2, "model"

    const/4 v0, 0x1

    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v1, "PowerStatsLogger"

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to write energy model info to incident report."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto :goto_3

    :cond_2
    const-string/jumbo p2, "meter"

    aget-object v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_1
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Failed to write energy meter info to incident report."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto :goto_3

    :cond_3
    const-string/jumbo p2, "residency"

    aget-object p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_2
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string p1, "Failed to write residency data to incident report."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo p2, "PowerStatsService dumpsys: available PowerEntities"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    move p3, v1

    :goto_4
    array-length v0, p2

    if-ge p3, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PowerEntityId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, p3

    iget v2, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", PowerEntityName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p3

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    aget-object v0, p2, p3

    iget-object v0, v0, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    aget-object v2, p2, p3

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  StateId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p2, p3

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", StateName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, p3

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "PowerStatsService dumpsys: available Channels"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez p2, :cond_9

    goto :goto_8

    :cond_9
    move p3, v1

    :goto_7
    array-length v0, p2

    if-ge p3, v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ChannelId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, p3

    iget v2, v2, Landroid/hardware/power/stats/Channel;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ChannelName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p3

    iget-object v2, v2, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ChannelSubsystem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p3

    iget-object v2, v2, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "PowerStatsService dumpsys: available EnergyConsumers"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez p2, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    array-length p3, p2

    if-ge v1, p3, :cond_c

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "EnergyConsumerId: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p2, v1

    iget v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Ordinal: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v1

    iget v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v1

    iget-byte v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v1

    iget-object v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "PowerStatsService dumpsys: PowerStatsLogger stats"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "PowerStats Meter Data:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "PowerStats Model Data:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "PowerStats State Residency Data:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;[ILandroid/os/ResultReceiver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
