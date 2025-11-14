.class public final Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mAdapter:Ljava/util/HashMap;

.field public static sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method public static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 3

    const-string/jumbo v0, "SamsungNfcAdapter"

    const-string/jumbo v1, "Nfc Samsung service dead - attempting to recover"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Could not retrieve Nfc Samsung service during service recovery"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    sput-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    return-void
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .registers 4

    const-class v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    monitor-enter v0

    if-eqz p0, :cond_50

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_47

    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    if-nez v1, :cond_32

    new-instance v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_30

    :try_start_1a
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_21} :catch_24
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_2a

    :catchall_22
    move-exception p0

    goto :goto_26

    :catch_24
    move-exception v2

    goto :goto_27

    :goto_26
    :try_start_26
    throw p0

    :goto_27
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2a
    sget-object v2, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_59

    :cond_32
    :goto_32
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-nez p0, :cond_45

    const-string/jumbo p0, "SamsungNfcAdapter"

    const-string v1, "Could not retrieve Samsung service"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_30

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_45
    monitor-exit v0

    return-object v1

    :cond_47
    :try_start_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context not associated with any application(using a mock context?)"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_30

    throw p0
.end method

.method public static getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    .registers 3

    const-string/jumbo v0, "samsungnfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    sget v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->$r8$clinit:I

    const-string/jumbo v1, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1d

    instance-of v2, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-eqz v2, :cond_1d

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    return-object v1

    :cond_1d
    new-instance v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v1
.end method

.method public static setWirelessChargeEnabled(Z)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v0, p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->setWirelessChargeEnabled(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public static startCoverAuth()[B
    .registers 3

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->startCoverAuth(Landroid/os/IBinder;)[B

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string/jumbo v1, "SamsungNfcAdapter"

    const-string v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startLedCover()[B
    .registers 3

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->startLedCover(Landroid/os/IBinder;)[B

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static stopCoverAuth()Z
    .registers 5

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    iget-object v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_31

    :try_start_e
    const-string/jumbo v3, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_29

    :try_start_22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    const-string/jumbo v1, "SamsungNfcAdapter"

    const-string v2, "Failed to stop authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stopLedCover()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    iget-object v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_30

    :try_start_e
    const-string/jumbo v3, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_28

    :try_start_21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return-void
.end method

.method public static transceiveDataWithLedCover([B)[B
    .registers 3

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v0, p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->transceiveLedCover([B)[B

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    return-object p0
.end method
