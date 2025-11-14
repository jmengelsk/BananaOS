.class public final Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BIND_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mCallerUid:I

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    return-void
.end method


# virtual methods
.method public final certify()V
    .locals 9

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v8, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    invoke-direct {v8}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>()V

    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    move-object v3, v2

    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    move-object v4, v3

    iget v3, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    const-string v7, "/"

    invoke-static {v4, v5, v7, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    invoke-direct {v7}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>()V

    sget-object v5, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    invoke-static/range {v2 .. v7}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v0, v7, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/rkp/service/RegistrationProxy;

    const v2, 0x6e754

    invoke-virtual {v0, v2, v1, v6, v8}, Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v0, v8, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/rkp/service/RemotelyProvisionedKey;

    invoke-virtual {v0}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getEncodedCertChain()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "(.{64})"

    const-string v3, "$1\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->stripTrailing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "-----END CERTIFICATE-----"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final csr()I
    .locals 12

    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--challenge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "error: unknown option "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object v4

    new-array v5, v0, [Landroid/hardware/security/keymint/MacedPublicKey;

    iget v6, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "error: unsupported hwVersion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v3

    :cond_2
    iget-object v3, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    :try_start_0
    sget-object v6, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v0, "Method generateCertificateRequestV2 is unimplemented."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_4
    new-instance v3, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget v4, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    if-eq v4, v9, :cond_6

    if-ne v4, v8, :cond_5

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    const-string/jumbo v8, "goRDoQEnoFgqpAEBAycgBiFYIJm57t1e5FL2hcZMYtw+YatXSH11NymtdoAy0rPLY1jZWEAeIghLpLekyNdOAw7+uK8UTKc7b6XN3Np5xitk/pk5r3bngPpmAIUNB5gqrJFcpyUUSQY0dcqKJ3rZ41pJ6wIDhEOhASegWE6lAQECWCDQrsEVyirPc65rzMvRlh1l6LHd10oaN7lDOpfVmd+YCAM4GCAEIVggvoXnRsSjQlpA2TY6phXQLFh+PdwzAjLS/F4ehyVfcmBYQJvPkOIuS6vRGLEOjl0gJ0uEWP78MpB+cgWDvNeCvvpkeC1UEEvAMb9r6B414vAtzmwvT/L1T6XUg62WovGHWAQ="

    invoke-virtual {v4, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unsupported EEK curve: "

    invoke-static {v4, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    const-string/jumbo v8, "goRDoQEmoFhNpQECAyYgASFYIPcUituX9MxT79JkEcTjdR9mH6RxDGzP+glGgHSHVPKtIlggXn9b9uzk9hnM/xM3/Q+hyJPbGAZ2xF3m12p3hsMtr49YQC+XjkL7vgctlUeFR5NAsB/Um0ekxESp8qEHhxDHn8sR9L+f6Dvg5zRMFfx7w34zBfTRNDztAgRgehXgedOK/ySEQ6EBJqBYcaYBAgJYIDVztz+gioCJsSZn6ct8daGvAmH8bmUDkTvTS30UlD5GAzgYIAEhWCDgQc8vDzQPHDMsQbDP1wwwVTXSHmpHE0su0UiWfiScaCJYIB/ORcX7YbqBIfnlBZubOQ52hoZHuB4vRfHOr9o/gGjbWECMs7p+ID4ysGjfYNEdffCsOI5RvP9s4Wc7Snm8Vnizmdh8igfY2rW1f3H02GvfMyc0e2XRKuuGmZirOrSAqr1Q"

    invoke-virtual {v4, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    iget-object v8, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v8}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_2
    sget-object v10, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v8, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v2, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v7, v8, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v9}, Landroid/hardware/security/keymint/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v6, v9}, Landroid/hardware/security/keymint/ProtectedData;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    new-instance v4, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v4}, Lco/nstant/in/cbor/model/Array;-><init>()V

    iget-object v3, v3, Landroid/hardware/security/keymint/DeviceInfo;->deviceInfo:[B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {v3, v5}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    iget-object v5, v4, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v3}, Lco/nstant/in/cbor/model/Map;-><init>()V

    iget-object v5, v4, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    new-instance v5, Lco/nstant/in/cbor/model/ByteString;

    new-instance v7, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v7}, Lco/nstant/in/cbor/model/Map;-><init>()V

    new-instance v8, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v9, 0x1

    invoke-direct {v8, v9, v10}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    new-instance v9, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v10, 0x5

    invoke-direct {v9, v10, v11}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    iget-object v10, v7, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    iget-object v9, v7, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    check-cast v9, Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v9, v8}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v7}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v5}, Lco/nstant/in/cbor/model/Map;-><init>()V

    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v5, v2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    iget-object v2, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    iget-object v5, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v4, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    iget-object v1, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Landroid/hardware/security/keymint/ProtectedData;->protectedData:[B

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {v1, v4}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    iget-object v4, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v3, v1}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_a
    :try_start_3
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v0, "Method generateCertificateRequest is unimplemented."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object p0

    check-cast p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hwVersion="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    const-string/jumbo v1, "rpcAuthorName="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->rpcAuthorName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportedEekCurve="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    invoke-static {p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uniqueId="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    if-lt p2, v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "supportedNumKeysInCsr="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x18202

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_3

    const v3, 0x32b09e

    if-eq v1, v3, :cond_2

    const v3, 0x27df2a58

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "certify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "csr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v1, v4, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->certify()V

    return v5

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->csr()I

    move-result p0

    return p0

    :cond_7
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_8

    aget-object v3, p1, v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v5

    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0
.end method

.method public final onHelp()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd remote_provisioning SUBCOMMAND [ARGS]\nhelp\n  Show this message.\ndump\n  Dump service diagnostics.\nlist\n  List the names of the IRemotelyProvisionedComponent instances.\ncsr [--challenge CHALLENGE] NAME\n  Generate and print a base64-encoded CSR from the named\n  IRemotelyProvisionedComponent. A base64-encoded challenge can be provided,\n  or else it defaults to an empty challenge.\ncertify NAME\n  Output the PEM-encoded certificate chain provisioned for the named\n  IRemotelyProvisionedComponent.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
