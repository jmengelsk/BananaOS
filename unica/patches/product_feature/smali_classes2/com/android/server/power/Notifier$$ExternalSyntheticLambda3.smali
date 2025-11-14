.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/Notifier$Interactivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleEarlyInteractiveChange: groupId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    const-string/jumbo v1, "PowerManagerNotifier"

    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
