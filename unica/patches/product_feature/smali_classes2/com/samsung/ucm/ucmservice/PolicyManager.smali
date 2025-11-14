.class public final Lcom/samsung/ucm/ucmservice/PolicyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public hiddenPluginPackages:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# direct methods
.method public static containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getWifiCertificateAliasesAsUser(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "PolicyManager"

    const-string/jumbo v1, "PolicyManager.getWifiCertificateAliasesAsUser() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v2, "PolicyManager.getWifiCertificateAliasesAsUser() for userId=0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error in getWifiCertificateAliasesAsUser: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PolicyManager.getallAliasesforCS() for csname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v3, "PolicyManager"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error in getallAliasesforCS: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v1, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v1, "PolicyManager.getallAliasesforUid() for uid="

    const-string/jumbo v2, "PolicyManager"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in getallAliasesforUid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v1, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v1, "PolicyManager.getallAliasesforUserId() for userid="

    const-string/jumbo v2, "PolicyManager"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in getallAliasesforUserId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "PolicyManager"

    if-nez p1, :cond_0

    const-string/jumbo p0, "csAgent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SE visibility being checked for cs Name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Package name = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    const-string/jumbo p0, "cspkgname = NULL. Unknown CS. CS Not Obscure"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public final isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    const-string/jumbo v1, "PolicyManager"

    if-eqz p1, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--isSEStorageAccessAllowed()-- for Source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v4, "; UserId="

    const-string v5, "; uid="

    invoke-static {p2, v3, v4, v5, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SE access being checked for cs Name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo p0, "MDM or KNOX licensed caller. Skipping additional validation"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo p4, "Not a MDM or KNOX licensed caller. Performing additional validation checks"

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p4

    if-nez p4, :cond_6

    iget-object p0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-nez p0, :cond_5

    const/16 p0, 0xa

    if-ge p1, p0, :cond_5

    const-string/jumbo p4, "isValidUser userId-"

    invoke-static {p1, p4, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-lt p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v4

    :goto_1
    const-string/jumbo p1, "isValidUser status-"

    invoke-static {p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "Storage is allowed for userid= "

    const-string p1, " and  uid-"

    invoke-static {p2, p3, p0, p1, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    :goto_2
    const-string/jumbo p0, "WARNING!!!! Storage is not allowed for userid= "

    const-string p1, " and uid-"

    invoke-static {p2, p3, p0, p1, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    const/16 p1, 0x3f2

    if-eq p3, p1, :cond_17

    const/16 p1, 0x3e8

    if-eq p3, p1, :cond_17

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    if-eq p4, p1, :cond_17

    const/16 p1, 0x3f8

    if-ne p3, p1, :cond_7

    goto/16 :goto_e

    :cond_7
    const-string/jumbo p1, "uid : "

    const/4 p4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "Exception in getPackageNameForUid"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 p1, -0x1

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, ":"

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, p1, :cond_8

    invoke-virtual {p4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_8
    const-string/jumbo v3, "android.uid.systemui"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p0, "Calling Id is SystemUI application"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    const-string/jumbo p4, "PolicyManager.isAccessAllowedforUid():  result = "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PolicyManager.isAccessAllowedforUid() for uid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "access_type"

    const/16 v6, 0x67

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "userId"

    invoke-virtual {v3, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface {v7, p3, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p4

    goto :goto_4

    :catch_2
    move-exception p4

    move v3, v0

    goto :goto_4

    :cond_a
    move v3, v0

    goto :goto_5

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in isAccessAllowedforUid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, v7, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    if-nez v3, :cond_b

    const-string/jumbo p0, "WARNING!!!!  isAccessAllowedforUid() returned false: SE access is NOT allowed for calleruid = "

    invoke-static {p3, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    if-eqz p5, :cond_10

    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    const-string/jumbo v3, "PolicyManager.isAliasknown() for uid="

    invoke-static {p4, v3, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v3, v7, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    :goto_6
    move v3, v0

    goto :goto_7

    :cond_d
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in isAliasknown: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    if-nez v3, :cond_e

    const-string/jumbo p0, "WARNING!!!!  isAliasknown() returned false: ALIAS not known to MDM for "

    invoke-static {p4, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_e
    const-string/jumbo p4, "PolicyManager.isAliasAllowedforUid():  result = "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "PolicyManager.isAliasAllowedforUid() for uid="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v7, 0x68

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "alias"

    invoke-virtual {v3, v5, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p5

    if-eqz p5, :cond_f

    invoke-interface {p5, p3, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result p5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception p4

    goto :goto_8

    :catch_5
    move-exception p4

    move p5, v0

    goto :goto_8

    :cond_f
    move p5, v0

    goto :goto_9

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error in isAliasAllowedforUid: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, v3, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_9
    if-nez p5, :cond_10

    const-string/jumbo p0, "WARNING!!!!  isAliasAllowedforUid() returned false: ALIAS access is NOT allowed for calleruid = "

    invoke-static {p3, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_10
    const-string/jumbo p4, "isAuthEnabled() called"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p4, "PolicyManager.getStorageAuthenticationType() "

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p4

    if-eqz p4, :cond_11

    invoke-interface {p4, p2, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "Error in getStorageAuthenticationType: "

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p5, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_11
    :goto_a
    const-string/jumbo p4, "isAuthEnabled authType = "

    invoke-static {p1, p4, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x64

    if-ne p4, p1, :cond_15

    const-string/jumbo p1, "PolicyManager.isPackageFromExemptList() "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    const/16 p5, 0x6a

    invoke-interface {p1, p4, v2, p5}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Error in isPackageFromExemptList: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p4, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_12
    move p1, v0

    :goto_b
    const-string/jumbo p4, "isAuthEnabled calleruid = "

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not auth exempt package"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "isAuthTypeLockforUser() called : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-nez p0, :cond_13

    const-string/jumbo p0, "isAuthTypeLockforUser() KeyguardManager is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_13
    invoke-virtual {p0, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    goto :goto_d

    :cond_14
    const-string p0, " is auth exempt package"

    invoke-static {p3, p4, p0, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_c
    move p0, v0

    :goto_d
    const-string/jumbo p1, "isAuthEnabled() status - "

    invoke-static {p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_16

    const-string/jumbo p0, "Storage access is locked currently for userid = "

    invoke-static {p2, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_16
    const-string/jumbo p0, "isSEStorageAccessAllowed() VALIDATED....."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_17
    :goto_e
    const-string p0, "Calling Id is either WIFI or System; skip additional validation"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_18
    const-string/jumbo p0, "Package name for CS found NULL. Denying CS access."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_19
    const-string/jumbo p0, "csAgent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    const-string/jumbo v0, "PolicyManager.isStorageEnabled() result = "

    const-string/jumbo v1, "PolicyManager.isStorageEnabled() for userId = "

    const-string/jumbo v2, "PolicyManager"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in isStorageEnabled: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method
