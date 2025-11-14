.class public final Lcom/android/server/vibrator/InputDeviceDelegate;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceVibrators:Landroid/util/SparseArray;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mLock:Ljava/lang/Object;

.field public mShouldVibrateInputDevices:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final updateInputDevice(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_3a

    :cond_b
    iget-boolean v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-nez v2, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1e

    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :cond_1e
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_33

    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_38

    :cond_33
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_9

    throw p0
.end method

.method public final updateInputDeviceVibrators(Z)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_55

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-ne p1, v1, :cond_12

    monitor-exit v0

    return v2

    :cond_12
    iput-boolean p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v1, p1

    :goto_29
    if-ge v2, v1, :cond_52

    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_4a

    :cond_36
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_4a

    iget-object v5, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4d
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_52
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_a

    throw p0
.end method
