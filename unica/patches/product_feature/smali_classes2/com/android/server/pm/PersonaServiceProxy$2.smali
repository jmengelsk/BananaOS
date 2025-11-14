.class public final Lcom/android/server/pm/PersonaServiceProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    iget p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_1b2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "newPackage is "

    const-string/jumbo v0, "PersonaManagerService::Proxy"

    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    const-string/jumbo p2, "com.samsung.android.knox.containercore"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    :cond_3d
    return-void

    :pswitch_3e  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "PersonaManagerService::Proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "broadcast received. Action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user-"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " started. Finding container service..."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1, v0}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Checking if "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is enabled COM container"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_1b0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    goto/16 :goto_1b0

    :cond_ac
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_15d

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo p2, "PersonaManagerService::Proxy"

    const-string/jumbo v0, "Removed User - "

    invoke-static {p1, v0, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-boolean p2, p1, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    if-nez p2, :cond_154

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    move-result p1

    if-nez p1, :cond_154

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    const-string/jumbo p2, "No Knox profile exist on device so stopping all Container service"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p1, p1, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_e1
    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p2, p2, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    if-eqz p2, :cond_150

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_150

    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p2, p2, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f9
    :goto_f9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ContainerServiceInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ContainerServiceWrapper;

    const-string/jumbo v3, "PersonaManagerService::Proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopping Container service - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-eqz v2, :cond_f9

    iget-object v2, v0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    iput-boolean v1, v0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    const-string v0, "KnoxService::ContainerServiceWrapper"

    const-string/jumbo v2, "Ubinding service is successful..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :catchall_146
    move-exception v0

    move-object p0, v0

    goto :goto_152

    :cond_149
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_150
    monitor-exit p1

    goto :goto_1b0

    :goto_152
    monitor-exit p1
    :try_end_153
    .catchall {:try_start_e1 .. :try_end_153} :catchall_146

    throw p0

    :cond_154
    const-string/jumbo p0, "PersonaManagerService::Proxy"

    const-string p1, "Knox profile exist on device so not stopping Container service..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    :cond_15d
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b0

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Added User - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_18d

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    goto :goto_1b0

    :cond_18d
    const-string/jumbo p0, "PersonaManagerService::Proxy"

    const-string p1, "Added User - "

    const-string p2, " is a non-knox user, so disable Secure Folder"

    invoke-static {v7, p1, p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_197
    const-string/jumbo p0, "package"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1aa} :catch_1ab

    goto :goto_1b0

    :catch_1ab
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b0
    :goto_1b0
    return-void

    nop

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_3e  #00000000
    .end packed-switch
.end method
