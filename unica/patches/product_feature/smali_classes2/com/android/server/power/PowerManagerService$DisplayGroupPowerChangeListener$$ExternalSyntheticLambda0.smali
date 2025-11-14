.class public final synthetic Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_32

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;-><init>(IZ)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    return-void

    :pswitch_1b  #0x0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;-><init>(IZ)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b  #00000000
    .end packed-switch
.end method
