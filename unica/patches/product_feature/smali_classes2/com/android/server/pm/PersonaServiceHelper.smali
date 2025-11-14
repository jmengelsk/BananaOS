.class public Lcom/android/server/pm/PersonaServiceHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

.field public static final DTI_PACKAGES:Ljava/util/ArrayList;

.field public static mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public static mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field public static mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public static mUserManager:Lcom/android/server/pm/UserManagerService;

.field public static final packagesForDual:Ljava/util/Map;

.field public static final packagesForPOP:Ljava/util/Map;

.field public static final packagesForSF:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpSinkService"

    const-string/jumbo v2, "com.android.bluetooth/com.android.bluetooth.hfpclient.HeadsetClientService"

    const-string/jumbo v3, "com.android.bluetooth/com.android.bluetooth.hfp.HeadsetService"

    const-string/jumbo v4, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpService"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$1;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$2;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$3;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v27, "com.dti.aon"

    const-string/jumbo v28, "com.tims.rt"

    const-string/jumbo v1, "com.dti.samsung"

    const-string/jumbo v2, "com.smg.rt"

    const-string/jumbo v3, "com.aura.oobe.samsung.gl"

    const-string/jumbo v4, "com.aura.oobe.samsung"

    const-string/jumbo v5, "com.dti.telefonica"

    const-string/jumbo v6, "com.dti.tracfone"

    const-string/jumbo v7, "com.dti.att"

    const-string/jumbo v8, "com.aura.oobe.att"

    const-string/jumbo v9, "com.aura.jet.att"

    const-string/jumbo v10, "com.LogiaGroup.LogiaDeck"

    const-string/jumbo v11, "com.dti.attmx"

    const-string/jumbo v12, "com.dti.millicom"

    const-string/jumbo v13, "com.dti.cricket"

    const-string/jumbo v14, "com.dti.globe"

    const-string/jumbo v15, "com.dti.bouygues"

    const-string/jumbo v16, "com.dti.uscc"

    const-string/jumbo v17, "com.dti.amx"

    const-string/jumbo v18, "com.dti.wiko"

    const-string/jumbo v19, "com.dti.sliide"

    const-string/jumbo v20, "com.dti.karbonn"

    const-string/jumbo v21, "com.dti.intex"

    const-string/jumbo v22, "com.dti.itel"

    const-string/jumbo v23, "com.dti.gionee"

    const-string/jumbo v24, "com.at.tg.rt"

    const-string/jumbo v25, "com.applovin.array.apphub.samsung"

    const-string/jumbo v26, "com.dish.wireless.installer"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    return-void
.end method

.method public static canAddMoreManagedProfiles(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 9

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_7
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    :cond_21
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2a
    const/high16 p3, 0x20000

    and-int/2addr p0, p3

    const/4 p3, 0x1

    const-string/jumbo v3, "PersonaServiceHelper"

    if-nez p0, :cond_4b

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_4b

    :cond_3a
    const-string/jumbo p0, "creating enterprise owned container"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v2, p3, :cond_5a

    if-nez p2, :cond_5a

    const-string/jumbo p0, "creation failed when not allowed to remove PO"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4b
    :goto_4b
    const-string/jumbo p0, "creating user owned container"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, p3, :cond_5a

    const-string/jumbo p0, "creation failed when already exists user-owned container"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5a
    return p3
.end method

.method public static containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2a

    :cond_11
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2a

    :cond_1f
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_2a

    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2a
    :goto_2a
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto :goto_3f

    :cond_31
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, p1, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_18

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v1, :cond_9

    goto :goto_18

    :cond_9
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    const-wide/16 v2, 0x80

    const/4 v5, -0x1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_19

    :goto_18
    return-object v0

    :cond_19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    return-object v0
.end method

.method public static getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_11
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method public static getDualDARPolicyService()Ljava/util/Optional;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_10

    const-string v0, "DualDARPolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    :cond_10
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getDualDARType(I)I
    .registers 3

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez p0, :cond_13

    const/4 v0, 0x2

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    :goto_14
    const-string p0, "DualDAR Container Type : "

    const-string/jumbo v1, "PersonaServiceHelper"

    invoke-static {v0, p0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getDualDARUser()I
    .registers 5

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_10
    if-ge v2, v1, :cond_27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_10

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    return v0

    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method public static getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public static getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public static isCallerApprovedToInstall(II)Z
    .registers 6

    const-string/jumbo v0, "isCallerApprovedToInstall(uid:"

    const-string v1, " userHandle:"

    const-string v2, ")"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2d

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_2d

    const-string/jumbo p0, "caller is system_service process...."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2d
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string/jumbo p0, "Secure folder or BBD has no Knox app install enforcement"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_40
    if-nez p1, :cond_6a

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string p0, "DO is not enabled. no Knox app install enforcement"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4e
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_5c

    const-string/jumbo p0, "failed to find application policy service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5c
    :try_start_5c
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isFromApprovedInstaller(II)Z

    move-result p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65

    return p0

    :catch_65
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_6a
    const-string/jumbo p0, "Sub user. No Knox app install enforcement"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 9

    const-string/jumbo v0, "isDisallowedAppForKnox - DTI package : "

    const-string/jumbo v1, "isDisallowedAppForKnox - METADATA_DISALLOWED_MANAGED_PROFILE is defined. "

    const/4 v2, 0x0

    if-nez p2, :cond_a

    return v2

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_35

    const/4 v4, 0x1

    const-string/jumbo v5, "PersonaServiceHelper"

    if-eqz v3, :cond_37

    :try_start_14
    const-string/jumbo v3, "com.samsung.android.multiuser.disallowed_managed_profile"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_37

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_35
    move-exception p0

    goto :goto_78

    :cond_37
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_35

    if-eqz p0, :cond_77

    :try_start_3d
    const-string/jumbo p0, "persist.sys.knox.leave_all_system_apps_enabled"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_47

    return v2

    :cond_47
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_77

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_77

    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / installer : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_72} :catch_73

    return v4

    :catch_73
    move-exception p0

    :try_start_74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_35

    :cond_77
    return v2

    :goto_78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static isDualDAREnabled()Z
    .registers 6

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :cond_11
    if-ge v4, v3, :cond_26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_11

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    const-string/jumbo v0, "isDualDAREnabled result : "

    const-string/jumbo v2, "PersonaServiceHelper"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static isPackageAllowlistedForDEAccessForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8

    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo p0, "system app allowed - "

    const-string/jumbo p2, "PersonaServiceHelper"

    invoke-static {p0, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v3, v0

    :goto_3b
    if-ge v1, v3, :cond_47

    aget-object v4, v0, v1

    check-cast v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_47
    invoke-static {p0, p2, p1, v2}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_4c
    return v1
.end method

.method public static isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 6

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string/jumbo v2, "isRequiredAppForKnox - METADATA_REQUIRED_MANAGED_PROFILE is defined. "

    :try_start_d
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "com.samsung.android.multiuser.required_managed_profile"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_38

    const/4 p0, 0x1

    return p0

    :catch_38
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    return v1
.end method

.method public static isSystemApp(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x80

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_17

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0

    :catch_17
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to check is System App for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static shouldBlockBluetooth(Landroid/content/Context;I)Z
    .registers 6

    const-string/jumbo v0, "PersonaServiceHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3e

    :cond_d
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_12
    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result p0
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_35

    :catch_21
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move p0, v3

    :goto_35
    const-string p1, "BMS::isKnoxBluetoothEnabled = "

    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_3d

    return v1

    :cond_3d
    return v3

    :cond_3e
    :goto_3e
    return v1
.end method

.method public static shouldBlockBluetoothHeadset(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 5

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    if-nez p3, :cond_3c

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p1

    :try_start_17
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_25} :catch_26

    goto :goto_3d

    :catch_26
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "retrieveServiceLocked(): SecurityException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move p0, v0

    :goto_3d
    if-eqz p0, :cond_40

    return v0

    :cond_40
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldBlockUsbHostMode(Landroid/content/Context;)Z
    .registers 11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    const-string/jumbo v0, "PersonaServiceHelper"

    const-string v2, "Exception in isUsbHostModeEnabledForContainer:"

    const-string/jumbo v3, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    const-string/jumbo v4, "isUsbHostModeEnabledForContainer: userId-"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_1e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v4

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v8, p0, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4f} :catch_6a
    .catchall {:try_start_1e .. :try_end_4f} :catchall_66

    if-nez p0, :cond_6e

    :try_start_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Ignoring USB device access request..."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_68
    .catchall {:try_start_51 .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p0

    goto :goto_89

    :catch_68
    move-exception v3

    goto :goto_72

    :catch_6a
    move-exception v3

    move p0, v1

    goto :goto_72

    :cond_6d
    move p0, v1

    :cond_6e
    :goto_6e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_85

    :goto_72
    :try_start_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_72 .. :try_end_84} :catchall_66

    goto :goto_6e

    :goto_85
    if-nez p0, :cond_8d

    const/4 p0, 0x1

    return p0

    :goto_89
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_8d
    return v1
.end method

.method public static verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z
    .registers 15

    const-string/jumbo v0, "verifyPackageForDualDAR package: "

    const-string/jumbo v1, "PersonaServiceHelper"

    invoke-static {v0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_11
    const/4 v4, 0x0

    if-ge v3, v0, :cond_27

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_11

    goto :goto_28

    :cond_27
    move-object v5, v4

    :goto_28
    if-nez v5, :cond_31

    const-string/jumbo p0, "Package not whitelisted: "

    invoke-static {p0, p2, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_31
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_e4

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_e4

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_de

    if-eqz p2, :cond_de

    if-nez p1, :cond_58

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_de

    :cond_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_5c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-virtual {p0, p2, v3, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_66} :catch_6d
    .catchall {:try_start_5c .. :try_end_66} :catchall_6a

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_75

    :catchall_6a
    move-exception p0

    goto/16 :goto_da

    :catch_6d
    move-exception p0

    :try_start_6e
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6a

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p0, v4

    :goto_75
    if-eqz p0, :cond_d4

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_d4

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length p1, p0

    move p2, v2

    :goto_81
    if-ge p2, p1, :cond_d4

    aget-object v3, p0, p2

    if-eqz v3, :cond_d1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    :try_start_8b
    const-string/jumbo v6, "SHA256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8b .. :try_end_92} :catch_9a

    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    goto :goto_9b

    :catch_9a
    move-object v5, v4

    :goto_9b
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    array-length v7, v5

    move v8, v2

    :goto_a2
    if-ge v8, v7, :cond_ba

    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit16 v9, v9, 0x100

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    :cond_ba
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    :goto_c4
    move v2, p3

    goto :goto_d9

    :cond_c6
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    goto :goto_c4

    :cond_d1
    add-int/lit8 p2, p2, 0x1

    goto :goto_81

    :cond_d4
    const-string p0, "FAIL to verify Pkg Signature"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    return v2

    :goto_da
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_de
    :goto_de
    const-string p0, "Invalid arguments"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_e4
    return p3
.end method
