.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/PowerProfile;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/PowerProfile;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;

    const-string/jumbo v1, "camera.avg"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p0, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;

    const-string/jumbo v1, "camera.flashlight"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p0, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/android/server/power/stats/processor/AudioPowerStatsProcessor;

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p0, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p0, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
