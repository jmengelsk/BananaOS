.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    new-instance v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;-><init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;)V

    return-object v0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;-><init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
