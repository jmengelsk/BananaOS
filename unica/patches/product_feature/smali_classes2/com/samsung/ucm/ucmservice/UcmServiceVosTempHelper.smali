.class public final Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

.field public mIPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final updateUid(I)I
    .registers 10

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_77

    :cond_d
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "com.samsung.android.knox.kpu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_29
    const-string/jumbo v0, "isKnoxDelegationEnabled - result ["

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    const/4 v3, 0x0

    const-string/jumbo v4, "]"

    const-string/jumbo v5, "UcmServiceVosTempHelper"

    if-eqz v1, :cond_4c

    const-string/jumbo v0, "isKnoxDelegationEnabled. enabled in WPC"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_75

    :cond_4c
    :try_start_4c
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->isKnoxDelegationEnabled()Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_6c

    move v0, v1

    goto :goto_75

    :catchall_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_75
    if-nez v0, :cond_78

    :cond_77
    :goto_77
    return p1

    :cond_78
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d3

    :try_start_87
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9b

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9b

    const-string/jumbo v0, "getDevicePolicyManagerService(): could not get DevicePolicyManager!"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v2, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_af
    .catchall {:try_start_87 .. :try_end_af} :catchall_b0

    goto :goto_ca

    :catchall_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deviceOwnerPackageName - exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    :goto_ca
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v3

    goto :goto_e6

    :cond_d3
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mContext:Landroid/content/Context;

    :try_start_d5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1
    :try_end_e1
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_e2

    goto :goto_e6

    :catchall_e2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e6
    :goto_e6
    :try_start_e6
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_f7

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_f7
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v6, 0x0

    invoke-interface {p0, v1, v6, v7, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_10c

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_103} :catch_104

    goto :goto_10d

    :catch_104
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10c
    const/4 p0, -0x1

    :goto_10d
    const-string/jumbo v0, "updateUid ["

    const-string/jumbo v1, "] -> ["

    invoke-static {p1, p0, v0, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
