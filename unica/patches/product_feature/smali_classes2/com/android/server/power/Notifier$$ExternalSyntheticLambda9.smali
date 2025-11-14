.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IScreenTimeoutPolicyListener;

    invoke-virtual {p0, v2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/power/Notifier;

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleGlobalInteractiveIfNeeded(II)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/server/power/Notifier;

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v2, v0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleGlobalInteractiveIfNeeded(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleEarlyGlobalInteractiveChange reason = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    const-string/jumbo v1, "PowerManagerNotifier"

    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
