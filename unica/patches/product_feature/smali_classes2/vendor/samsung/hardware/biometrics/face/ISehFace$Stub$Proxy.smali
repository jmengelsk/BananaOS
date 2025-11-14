.class public final Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehFace;


# instance fields
.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public final createSession(IILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)Lvendor/samsung/hardware/biometrics/face/ISehSession;
    .registers 7

    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_50

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    sget p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub;->$r8$clinit:I

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    goto :goto_47

    :cond_2f
    sget-object p1, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_3f

    instance-of p2, p1, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-eqz p2, :cond_3f

    move-object p0, p1

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    goto :goto_47

    :cond_3f
    new-instance p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_4e

    move-object p0, p1

    :goto_47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_4e
    move-exception p0

    goto :goto_59

    :cond_50
    :try_start_50
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Method createSession is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_4e

    :goto_59
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final getInterfaceVersion()I
    .registers 6

    iget v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_f
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mCachedVersion:I
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    :catchall_2d
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_35
    :goto_35
    iget p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mCachedVersion:I

    return p0
.end method
