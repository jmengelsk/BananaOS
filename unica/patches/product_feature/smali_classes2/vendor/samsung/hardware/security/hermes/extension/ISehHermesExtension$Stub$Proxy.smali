.class public final Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public final cosUnitTest(Ljava/lang/String;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_3a

    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method cosUnitTest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2f

    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final getAppletVersions()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2c
    move-exception p0

    goto :goto_37

    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v2, "Method getAppletVersions is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2c

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final getSeId()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2c
    move-exception p0

    goto :goto_37

    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v2, "Method getSeId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2c

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final selftest([Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_3a

    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method selftest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2f

    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final sendAPDU([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_3a

    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method sendAPDU is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2f

    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final turnOffSecureHardwarePower([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    goto :goto_39

    :cond_30
    :try_start_30
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method turnOffSecureHardwarePower is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2e

    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final turnOnSecureHardwarePower([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    goto :goto_39

    :cond_30
    :try_start_30
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method turnOnSecureHardwarePower is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2e

    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final updateApplet()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_36

    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v2, "Method updateApplet is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2b

    :goto_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final updateCOSpatch()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_36

    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v2, "Method updateCOSpatch is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2b

    :goto_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final updateCOSpatchTest([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_3a

    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method updateCOSpatchTest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2f

    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
