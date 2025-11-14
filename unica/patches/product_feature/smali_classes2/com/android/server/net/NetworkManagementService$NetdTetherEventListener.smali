.class public final Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/net/INetdTetherEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo p1, "com.android.internal.net.INetdTetherEventListener"

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

    const-string/jumbo v0, "com.android.internal.net.INetdTetherEventListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_17
    if-eq p1, v1, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_52

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_21
    const-string/jumbo p1, "NetworkManagement"

    const-string/jumbo p2, "send intent to KVES to inform tether has started"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_33
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p4, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v0, "tethering_info"

    invoke-virtual {p3, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_53

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_52
    return v1

    :catchall_53
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
