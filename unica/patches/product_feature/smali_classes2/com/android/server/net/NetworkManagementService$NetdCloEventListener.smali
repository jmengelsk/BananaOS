.class public final Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/net/INetdCloEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo p1, "com.android.internal.net.INetdCloEventListener"

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

    const-string/jumbo v0, "com.android.internal.net.INetdCloEventListener"

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
    if-eq p1, v1, :cond_1e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    iget-object p2, p2, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2a
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    if-nez p0, :cond_3d

    const-string/jumbo p0, "NetworkManagement"

    const-string/jumbo p1, "onUpdatedGroRlEnvironment: no mICloEventObserver"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_3b

    goto :goto_41

    :catchall_3b
    move-exception p0

    goto :goto_49

    :cond_3d
    :try_start_3d
    invoke-interface {p0, p1}, Landroid/net/ICloEventObserver;->onUpdatedGroRlEnvironment(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_42
    .catch Landroid/os/ServiceSpecificException; {:try_start_3d .. :try_end_40} :catch_42
    .catchall {:try_start_3d .. :try_end_40} :catchall_3b

    :try_start_40
    monitor-exit p2

    :goto_41
    return v1

    :catch_42
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3b

    throw p0
.end method
