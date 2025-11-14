.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo p1, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string/jumbo v0, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_e
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5d

    if-eq p1, v1, :cond_1a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1a
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_27

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    check-cast p1, Landroid/os/Message;

    iget p2, p1, Landroid/os/Message;->what:I

    const/16 p3, 0x2710

    if-ne p2, p3, :cond_5c

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "mServiceStateListener - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo p4, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {p2, p3, p4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 p2, 0x5

    if-ne p1, v1, :cond_4d

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    iput p2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    invoke-static {p0, p2}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    return v1

    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    iget p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    const/4 p3, 0x4

    if-eq p1, p2, :cond_57

    iput p3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    return v1

    :cond_57
    iput p3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    invoke-static {p0, p3}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    :cond_5c
    return v1

    :cond_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
