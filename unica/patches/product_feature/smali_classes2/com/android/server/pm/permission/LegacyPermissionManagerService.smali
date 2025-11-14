.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field public final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .registers 3

    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    new-instance p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p2, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method


# virtual methods
.method public final checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 15

    invoke-virtual {p0, p4, p5, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v6, 0x0

    if-eq v0, v1, :cond_76

    if-nez v0, :cond_f

    goto :goto_76

    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_1d
    if-eqz p1, :cond_74

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    :try_start_35
    const-string/jumbo v1, "android:read_device_identifiers"

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_69

    if-nez p2, :cond_4b

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_4b
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "device_policy"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_74

    invoke-virtual {p0, p1, p4, p5}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_74

    return v6

    :catchall_69
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_74
    const/4 p0, -0x1

    return p0

    :cond_76
    :goto_76
    return v6
.end method

.method public final checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I
    .registers 9

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p4, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "appops"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    move-object p4, p1

    move-object p2, p3

    move p3, p6

    move-object p6, p7

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 16

    invoke-virtual {p0, p4, p5, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, p4, p5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_12

    return v8

    :cond_12
    const/4 v2, -0x1

    if-nez p1, :cond_16

    return v2

    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, p1, v8, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_28} :catch_3f

    const/16 v5, 0x1d

    if-gt v3, v5, :cond_3f

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "android:read_phone_state"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v5, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3f

    return v2

    :catch_3f
    :cond_3f
    move v9, v2

    const/4 v2, 0x0

    const-string/jumbo v3, "android:write_sms"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v5, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_51

    return v8

    :cond_51
    const-string/jumbo v2, "android.permission.READ_PHONE_NUMBERS"

    const-string/jumbo v3, "android:read_phone_numbers"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v5, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_64

    return v8

    :cond_64
    const-string/jumbo v2, "android.permission.READ_SMS"

    const-string/jumbo v3, "android:read_sms"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v5, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_77

    return v8

    :cond_77
    return v9
.end method

.method public final grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "grantDefaultPermissionsForCarrierServiceApp"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2710

    if-lt v2, v4, :cond_21

    if-ne v0, p2, :cond_1f

    if-eq v1, p1, :cond_21

    :cond_1f
    move v2, v3

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-eqz p3, :cond_57

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-lt v5, v4, :cond_57

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v6, 0x0

    invoke-virtual {p0, p3, v6, v7, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-eq p2, p0, :cond_57

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-lt p0, v4, :cond_42

    move p0, v0

    goto :goto_43

    :cond_42
    move p0, p2

    :goto_43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v2, "Package uid mismatch"

    const-string v4, "193441322"

    filled-new-array {v4, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x534e4554

    invoke-static {v2, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_58

    :cond_57
    move v3, v2

    :goto_58
    if-nez v3, :cond_5b

    return-void

    :cond_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v6, p3

    move-object v9, p4

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
