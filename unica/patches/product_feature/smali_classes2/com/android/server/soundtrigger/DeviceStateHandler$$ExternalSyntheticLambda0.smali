.class public final synthetic Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

.field public final synthetic f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
