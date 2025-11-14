.class public final Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.security.keystore.IKeyAttestationApplicationIdProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const-string/jumbo v0, "android.security.keystore.IKeyAttestationApplicationIdProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    const-string/jumbo p2, "No package for uid: "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    const/16 v0, 0x3f9

    if-eq p4, v0, :cond_4

    const/16 v0, 0x434

    if-ne p4, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "This service can only be used by Keystore or Credstore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object p4, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    array-length p2, p4

    new-array p2, p2, [Landroid/security/keystore/KeyAttestationPackageInfo;

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    array-length v5, p4

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, p4, v4

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v6, Landroid/security/keystore/KeyAttestationPackageInfo;

    invoke-direct {v6}, Landroid/security/keystore/KeyAttestationPackageInfo;-><init>()V

    new-instance v7, Ljava/lang/String;

    aget-object v8, p4, v4

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->versionCode:J

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    new-array v7, v7, [Landroid/security/keystore/Signature;

    iput-object v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    move v7, v0

    :goto_2
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v7, v8, :cond_5

    new-instance v8, Landroid/security/keystore/Signature;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    iput-object v9, v8, Landroid/security/keystore/Signature;->data:[B

    iget-object v9, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    aput-object v6, p2, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Landroid/security/keystore/KeyAttestationApplicationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/security/keystore/KeyAttestationApplicationId;->packageInfos:[Landroid/security/keystore/KeyAttestationPackageInfo;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v1

    :cond_7
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
