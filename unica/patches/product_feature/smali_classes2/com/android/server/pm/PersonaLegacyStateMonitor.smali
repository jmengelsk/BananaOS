.class public final Lcom/android/server/pm/PersonaLegacyStateMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mObserverList:Landroid/os/RemoteCallbackList;

.field public final mStateMap:Ljava/util/HashMap;

.field public final mUserManager:Landroid/os/UserManager;

.field public final receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;


# direct methods
.method public static -$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p2

    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_16
    move-object v8, v0

    if-ne v7, v8, :cond_1b

    goto/16 :goto_170

    :cond_1b
    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyStateChange(id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") from old state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "PersonaManagerService::LegacyStateMonitor"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    if-lez v0, :cond_64

    add-int/lit8 v3, v0, -0x1

    :try_start_52
    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v0, v2, v8, v7}, Landroid/content/pm/ISystemPersonaObserver;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_62
    move v0, v3

    goto :goto_4e

    :cond_64
    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.knox.container.action.observer"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "com.sec.knox.container.category.observer.containerid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.knox.container.category.observer.onstatechange"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.knox.container.extra.observer.newstate"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.knox.container.extra.observer.previousstate"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.samsung.container.OBSERVER"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v0, "propagateNewStateChange() sendBroadcast()"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    sget-object v4, Lcom/android/server/pm/PersonaLegacyStateMonitor$2;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v5

    aget v5, v4, v5

    const/16 v6, 0x5f

    const/16 v10, 0x5b

    const/16 v11, 0x5d

    const/16 v12, 0x5e

    const/4 v13, -0x1

    packed-switch v5, :pswitch_data_172

    move-object v5, v4

    move v4, v13

    goto :goto_d9

    :pswitch_ce  #0x9
    move-object v5, v4

    move v4, v12

    goto :goto_d9

    :pswitch_d1  #0x8
    move-object v5, v4

    move v4, v11

    goto :goto_d9

    :pswitch_d4  #0x6, 0x7
    move-object v5, v4

    move v4, v10

    goto :goto_d9

    :pswitch_d7  #0x2, 0x3, 0x4, 0x5
    move-object v5, v4

    move v4, v6

    :goto_d9
    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v14

    aget v5, v5, v14

    packed-switch v5, :pswitch_data_186

    move v5, v13

    goto :goto_eb

    :pswitch_e4  #0x9
    move v5, v12

    goto :goto_eb

    :pswitch_e6  #0x8
    move v5, v11

    goto :goto_eb

    :pswitch_e8  #0x6, 0x7
    move v5, v10

    goto :goto_eb

    :pswitch_ea  #0x2, 0x3, 0x4, 0x5
    move v5, v6

    :goto_eb
    const-string v10, " Package is "

    const/4 v11, 0x0

    if-eq v4, v5, :cond_12e

    iget-object v6, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Sending admin lock intent to MDM for user "

    if-eqz v12, :cond_125

    array-length v14, v12

    move v15, v11

    :goto_101
    if-ge v15, v14, :cond_122

    aget-object v6, v12, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(IIIILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    goto :goto_101

    :cond_122
    move-object/from16 v1, p0

    goto :goto_12e

    :cond_125
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(IIIILjava/lang/String;)V

    invoke-static {v2, v13, v9}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12e
    :goto_12e
    sget-object v4, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v7, v4, :cond_167

    if-eq v8, v4, :cond_167

    iget-object v4, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_163

    array-length v4, v0

    :goto_141
    if-ge v11, v4, :cond_167

    aget-object v5, v0, v11

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(IILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Sending admin lock change intent to MDM for user "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_141

    :cond_163
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(IILjava/lang/String;)V

    :cond_167
    iget-object v0, v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_170
    return-void

    nop

    :pswitch_data_172
    .packed-switch 0x2
        :pswitch_d7  #00000002
        :pswitch_d7  #00000003
        :pswitch_d7  #00000004
        :pswitch_d7  #00000005
        :pswitch_d4  #00000006
        :pswitch_d4  #00000007
        :pswitch_d1  #00000008
        :pswitch_ce  #00000009
    .end packed-switch

    :pswitch_data_186
    .packed-switch 0x2
        :pswitch_ea  #00000002
        :pswitch_ea  #00000003
        :pswitch_ea  #00000004
        :pswitch_ea  #00000005
        :pswitch_e8  #00000006
        :pswitch_e8  #00000007
        :pswitch_e6  #00000008
        :pswitch_e4  #00000009
    .end packed-switch
.end method

.method public static -$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "intent"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_42

    :cond_3b
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_42
    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;-><init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string/jumbo v1, "PersonaManagerService::LegacyStateMonitor"

    const-string/jumbo v2, "initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_59
    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_6a

    goto :goto_59

    :cond_6a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_86

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_86
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_9c

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_9c
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_b2

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_b2
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_ca
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_59

    :cond_e3
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    invoke-static {p1, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method


# virtual methods
.method public final sendContainerStateChangeIntent(IIIILjava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_13

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "containerid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "container_old_state"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "container_new_state"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "intent"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {p1, v0, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-eqz p5, :cond_5d

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5d

    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p3, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method public final sendIntentForAdminLock(IILjava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "containerid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "intent"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p3, :cond_38

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3f

    :cond_38
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_3f
    if-eqz p3, :cond_5d

    iget-object p3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method
