.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-void
.end method

.method public static connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .registers 7

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x1e

    const-string/jumbo v3, "RecoverySystemService"

    if-ge v1, v2, :cond_51

    :try_start_14
    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string/jumbo v5, "uncrypt"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_42

    :try_start_23
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3d} :catch_3e

    return-object v0

    :catch_3e
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    goto :goto_5a

    :catch_42
    const-wide/16 v4, 0x3e8

    :try_start_44
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception v2

    const-string v4, "Interrupted:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_51
    const-string/jumbo v1, "Timed out connecting to uncrypt socket"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    :goto_5a
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBootControl()Landroid/hardware/boot/IBootControl;
    .registers 10

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/boot/IBootControl;->DESCRIPTOR:Ljava/lang/String;

    const-string v3, "/default"

    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "RecoverySystemService"

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AIDL version of BootControl HAL present, using instance "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v1, Landroid/hardware/boot/IBootControl$Stub;->$r8$clinit:I

    if-nez v0, :cond_32

    return-object v5

    :cond_32
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3f

    instance-of v2, v1, Landroid/hardware/boot/IBootControl;

    if-eqz v2, :cond_3f

    check-cast v1, Landroid/hardware/boot/IBootControl;

    return-object v1

    :cond_3f
    new-instance v1, Landroid/hardware/boot/IBootControl$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/hardware/boot/IBootControl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v1

    :cond_47
    invoke-static {}, Landroid/hardware/boot/V1_0/IBootControl;->getService()Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object v1

    if-nez v1, :cond_4f

    :catch_4d
    :cond_4d
    :goto_4d
    move-object v6, v5

    goto :goto_85

    :cond_4f
    invoke-interface {v1}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_4d

    :cond_56
    const-string/jumbo v3, "android.hardware.boot@1.1::IBootControl"

    invoke-interface {v2, v3}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v6

    if-eqz v6, :cond_66

    instance-of v7, v6, Landroid/hardware/boot/V1_1/IBootControl;

    if-eqz v7, :cond_66

    check-cast v6, Landroid/hardware/boot/V1_1/IBootControl;

    goto :goto_85

    :cond_66
    new-instance v6, Landroid/hardware/boot/V1_1/IBootControl$Proxy;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v2, v6, Landroid/hardware/boot/V1_1/IBootControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_6d
    invoke-virtual {v6}, Landroid/hardware/boot/V1_1/IBootControl$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_76
    if-ge v8, v7, :cond_4d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/2addr v8, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_83} :catch_4d

    if-eqz v9, :cond_76

    :goto_85
    if-nez v1, :cond_89

    move-object v2, v5

    goto :goto_91

    :cond_89
    invoke-interface {v1}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    move-result-object v2

    :goto_91
    new-instance v3, Lcom/android/server/recoverysystem/hal/BootControlHIDL;

    invoke-direct {v3, v1, v6, v2}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;-><init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl$Proxy;)V

    :try_start_96
    invoke-static {}, Landroid/hardware/boot/V1_0/IBootControl;->getService()Landroid/hardware/boot/V1_0/IBootControl;
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_ad
    .catch Ljava/util/NoSuchElementException; {:try_start_96 .. :try_end_99} :catch_ad

    :try_start_99
    const-string/jumbo v1, "android.hardware.boot@1.2::IBootControl"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_2/IBootControl$Proxy;
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a6} :catch_a7
    .catch Ljava/util/NoSuchElementException; {:try_start_99 .. :try_end_a6} :catch_a7

    return-object v3

    :catch_a7
    const-string v0, "Device doesn\'t implement boot control HAL V1_2."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_ad
    const-string/jumbo v0, "Neither AIDL nor HIDL version of the BootControl HAL is present."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method


# virtual methods
.method public final getUidFromPackageName(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    :catch_c
    const-string p0, "Failed to find uid for "

    const-string/jumbo v0, "RecoverySystemService"

    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
