.class public final Lcom/android/server/pm/PersonaLegacyStateMonitor$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public final onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public final onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 11

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object v0, v0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Sending container removed intent to MDM for user "

    const-string/jumbo v1, "PersonaManagerService::LegacyStateMonitor"

    if-eqz p1, :cond_54

    array-length v2, p1

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_53

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {v5, v4, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Package is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_53
    return-void

    :cond_54
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-lez p3, :cond_24

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x10

    if-lez p3, :cond_36

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_36
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x4

    if-lez p3, :cond_48

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_48
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public final onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-lez p2, :cond_24

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-lez p2, :cond_36

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void

    :cond_36
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-lez p2, :cond_47

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :cond_47
    return-void
.end method

.method public final onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method
