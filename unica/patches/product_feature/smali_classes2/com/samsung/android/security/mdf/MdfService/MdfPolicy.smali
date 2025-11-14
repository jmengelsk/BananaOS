.class public final Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsSDEnabled:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

.field public final mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field public final mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "MdfService"

    const-string/jumbo v1, "v3.21.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-direct {p1}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    .registers 3

    const-class v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final checkDevicePolicy()I
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, -0x2

    const-string v2, "DevicePolicyManager is null"

    const/4 v3, 0x0

    const-string/jumbo v4, "MdfService"

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_14
    const/4 v5, 0x0

    if-lez v0, :cond_25

    const/16 v6, 0x1e

    if-le v0, v6, :cond_1c

    goto :goto_25

    :cond_1c
    const/16 v0, 0x10a

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    move v0, v5

    goto :goto_33

    :cond_25
    :goto_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x109

    invoke-static {v6, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    const/4 v0, 0x2

    :goto_33
    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_3c

    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    goto :goto_3f

    :cond_3c
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    const/high16 v6, 0x50000

    const/high16 v7, 0x60000

    if-lt v1, v6, :cond_50

    if-le v1, v7, :cond_48

    goto :goto_50

    :cond_48
    const/16 v1, 0x10c

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_59

    :cond_50
    :goto_50
    const/16 v1, 0x10b

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    or-int/lit16 v0, v0, 0x2000

    :goto_59
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_73

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v6, 0x40000

    if-lt v1, v6, :cond_79

    if-gt v1, v7, :cond_79

    const/16 v1, 0x10e

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_82

    :cond_73
    const-string/jumbo v1, "LockPatternUtils is null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const/16 v1, 0x10d

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    or-int/lit8 v0, v0, 0x4

    :goto_82
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_cd

    const-string/jumbo v1, "SDCARD SLOT Support"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v7, "no_physical_media"

    invoke-virtual {v1, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4

    move v1, v6

    goto :goto_a5

    :cond_a4
    move v1, v5

    :goto_a5
    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    iget-boolean v7, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    if-nez v7, :cond_b9

    const/16 v1, 0x10f

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_da

    :cond_b9
    if-eqz v1, :cond_c3

    const/16 v1, 0x110

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_da

    :cond_c3
    const/16 v1, 0x111

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    or-int/lit16 v0, v0, 0x80

    goto :goto_da

    :cond_cd
    const-string/jumbo v1, "SDCARD SLOT None"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x112

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    :goto_da
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_104

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e7

    goto :goto_e8

    :cond_e7
    move v6, v5

    :goto_e8
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v1, :cond_fd

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v1

    if-nez v6, :cond_f5

    if-nez v1, :cond_107

    :cond_f5
    const/16 v1, 0x113

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_110

    :cond_fd
    const-string/jumbo v1, "PasswordPolicy is null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    :cond_104
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    const/16 v1, 0x114

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    or-int/lit16 v0, v0, 0x4000

    :goto_110
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_124

    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_127

    const/16 p0, 0x115

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    return v0

    :cond_124
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_127
    const/16 p0, 0x116

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    const p0, 0x8000

    or-int/2addr p0, v0

    return p0
.end method

.method public final enableCCMode(Z)I
    .registers 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "security.mdf.result"

    const-string/jumbo v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ro.security.mdf.ux"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "MdfService"

    if-nez v2, :cond_2d

    const-string/jumbo v0, "This model does not support CC mode."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x10

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2d
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v2

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3d

    move v2, v7

    goto :goto_46

    :cond_3d
    if-ne v2, v6, :cond_41

    move v2, v6

    goto :goto_46

    :cond_41
    if-ne v2, v5, :cond_45

    move v2, v5

    goto :goto_46

    :cond_45
    move v2, v4

    :goto_46
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "the current mode : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/16 v9, -0xd

    const/16 v10, -0xb

    const/16 v11, -0xc

    const v12, 0x1040821

    const v13, 0x1040820

    const v14, 0x1040822

    const-string v15, "Failed. setCCMode. res = "

    if-eqz p1, :cond_160

    if-ne v2, v7, :cond_78

    const-string v0, "CCMode is already enabled."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_78
    if-ne v2, v6, :cond_11a

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_92

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Prerequisite policies have yet to set. res = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_92
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v2

    if-eqz v2, :cond_a4

    const/16 v2, 0x117

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v4}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    const/16 v8, -0x14

    goto :goto_ab

    :cond_a4
    const/16 v2, 0x118

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v4}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    :goto_ab
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_f0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. check fips self test. res = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_d8
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f0
    invoke-virtual {v0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_ff

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_ff
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040810

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11a
    if-ne v2, v4, :cond_132

    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_12a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_12a
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_132
    if-ne v2, v5, :cond_14a

    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_142

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_142
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_14a
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_158

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_158
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_160
    if-ne v2, v7, :cond_193

    invoke-virtual {v0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_171

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return v2

    :cond_171
    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040812

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_193
    if-ne v2, v6, :cond_19b

    const-string v0, "CCMode is already ready."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_19b
    if-ne v2, v5, :cond_1cb

    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v2

    if-eqz v2, :cond_1ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return v2

    :cond_1ac
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_1cb
    if-ne v2, v4, :cond_1e3

    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_1db

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1db
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_1e3
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_1f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1f1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method public final initCCMode()I
    .registers 9

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_118

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10f

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_18

    move v0, v4

    goto :goto_21

    :cond_18
    if-ne v0, v3, :cond_1c

    move v0, v3

    goto :goto_21

    :cond_1c
    if-ne v0, v2, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "current mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MdfService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const-string v7, "Failed. setCCMode. res = "

    if-ne v0, v4, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v0, 0x117

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    const/16 v0, -0x14

    goto :goto_59

    :cond_51
    const/16 v0, 0x118

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    move v0, v5

    :goto_59
    if-eqz v0, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed. check fips self test. res = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040822

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040820

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_ea

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    if-eqz v0, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Prerequisite policies have yet to set. res = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_ea

    :cond_a3
    if-ne v0, v3, :cond_b4

    invoke-virtual {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_ea

    :cond_b4
    if-ne v0, v2, :cond_c7

    invoke-virtual {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c4
    const/16 v0, -0xb

    goto :goto_ea

    :cond_c7
    if-ne v0, v1, :cond_da

    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_d7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_d7
    const/16 v0, -0xc

    goto :goto_ea

    :cond_da
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_e8
    const/16 v0, -0xd

    :cond_ea
    :goto_ea
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AE CommonCriteriaMode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_fb

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    goto :goto_100

    :cond_fb
    const-string p0, "Failed isCommonCriteriaMode(). mDevicePolicyManager is null"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_100
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10f
    :try_start_10f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_118
    .catch Ljava/lang/SecurityException; {:try_start_10f .. :try_end_118} :catch_118

    :catch_118
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw p0
.end method

.method public final setCCMode(I)I
    .registers 11

    const-string/jumbo v0, "security.mdf"

    const-string/jumbo v1, "MdfService"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2d

    const/16 v3, 0x8

    if-eq p1, v3, :cond_29

    const-string/jumbo v3, "None"

    const/16 v5, 0x10

    if-eq p1, v5, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCCMode default... status = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_23
    move-object p1, v3

    move v3, v4

    goto :goto_35

    :cond_26
    move-object p1, v3

    move v3, v5

    goto :goto_35

    :cond_29
    const-string p1, "Disabled"

    move v4, v2

    goto :goto_35

    :cond_2d
    const-string/jumbo p1, "Ready"

    goto :goto_35

    :cond_31
    const-string v3, "Enabled"

    move v4, v2

    goto :goto_23

    :goto_35
    const-string v5, "Failed. SBFlag has yet to set. current flag = "

    const/16 v6, -0x18

    if-eqz v4, :cond_61

    iget-object v7, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v7}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    move-result v7

    if-eqz v7, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed. setSBFlagOn() res = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_86

    :cond_4e
    iget-object v8, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v8}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v8

    if-eq v8, v2, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_86

    :cond_5f
    move v6, v7

    goto :goto_86

    :cond_61
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    move-result v2

    if-eqz v2, :cond_74

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed. setSBFlagOff() res = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_86

    :cond_74
    iget-object v7, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v7}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v7

    if-eqz v7, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_86

    :cond_85
    move v6, v2

    :goto_86
    const-string v2, ", result = "

    if-eqz v6, :cond_9f

    const-string p0, "Failed. enforceSB : "

    invoke-static {p0, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :cond_9f
    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v4, v3}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    move-result v4

    const/16 v5, -0x1b

    if-eqz v4, :cond_b5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "Failed. setCCModeFlag() res = "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b3
    move v6, v5

    goto :goto_c9

    :cond_b5
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result p0

    if-eq p0, v3, :cond_c8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b3

    :cond_c8
    move v6, v4

    :goto_c9
    if-eqz v6, :cond_ea

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCModeFlag : "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    :goto_ea
    if-eqz v6, :cond_ed

    return v6

    :cond_ed
    const/4 p0, -0x3

    :try_start_ee
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fb
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x119

    invoke-static {v2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V
    :try_end_104
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_104} :catch_122
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_104} :catch_11b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "security.mdf : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_11b
    const-string/jumbo p1, "SystemProperties Exception Occurs"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_122
    const-string/jumbo p1, "SystemProperties RuntimeException Occurs"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final setNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x2

    const-string/jumbo v1, "Notice for applying security policy"

    const-string/jumbo v2, "MdfService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_1e

    const-string/jumbo p0, "NotificationManager is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    new-instance v2, Landroid/app/NotificationChannel;

    const-string/jumbo v3, "mdf_channel_id"

    const-string/jumbo v4, "Mdf Channel"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v3, v0, [J

    fill-array-data v3, :array_6a

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const p1, 0x1080027

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_6a
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method
