.class public final Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x0

    const-string/jumbo v0, "USER_ID"

    const-string v1, "CS_NAME"

    const-string/jumbo v2, "The exception occurs "

    const/4 v3, 0x1

    const/4 v4, -0x1

    const-string/jumbo v5, "UcmService"

    iget v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->$r8$classId:I

    packed-switch v6, :pswitch_data_0

    const-string/jumbo p1, "mOnNotiRemoveBroadcastReceiver "

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    sget v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->$r8$clinit:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showEnforcedLockTypeNotificationIntenal(ILjava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "inside mRefreshReceiver onReceive : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletHelper:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->checkToRunLccmScript()V

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p1, "onReceive : ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletHelper:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->checkToRunLccmScript()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    if-eqz p1, :cond_2

    const-string p0, "Already UPSM is enabled nothing to do"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    const-string p0, "Already UPSM disabled -> enabled"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-boolean p2, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    if-eqz p2, :cond_4

    const-string p2, "Already UPSM enabled -> disabled"

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.intent.extra.UID"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string/jumbo v0, "Package update in userId-"

    const-string v1, " and uid-"

    invoke-static {p2, p1, v0, v1, v5}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v0, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "No active agent exist"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    if-ne v0, p1, :cond_6

    const-string/jumbo p2, "it is active plugin uid : "

    invoke-static {p1, p2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_2
    return-void

    :pswitch_2
    sget p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->$r8$clinit:I

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-nez p1, :cond_8

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object p0

    :try_start_1
    iget p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    if-le p1, v3, :cond_9

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    const-string/jumbo p1, "checkUcmOdeDefaultLanguage. remove default language"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string/jumbo p0, "checkUcmOdeDefaultLanguage. failed to save ode prop"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    :cond_9
    :goto_3
    return-void

    :pswitch_3
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive : ACTION_ENFORCE_LOCKTYPE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    sget v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->$r8$clinit:I

    const-string v1, " csName : "

    const-string/jumbo v3, "enforceLockType called for userID : "

    :try_start_2
    const-string/jumbo v4, "password_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v4, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_a
    :goto_4
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.knox.ConfirmUCMLockPassword"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x400000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
