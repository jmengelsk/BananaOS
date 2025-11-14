.class public final Lcom/android/server/wm/PersonaActivityHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastPIPModeActivityUserId:I

.field public mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLockSecureFolderExceptionalList:Ljava/util/List;

.field public final mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

.field public mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static -$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_3

    const-string/jumbo p0, "PersonaActivityHelper"

    const-string p1, "Activity not in resumed state, do not run immediate lock"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_7

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v2, "keyguard"

    if-nez v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_6

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_6

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    const-string/jumbo v0, "persist.sys.knox.secure_folder_state_available"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->isLockSecureFolderExceptionalCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v0, 0x25b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const-string/jumbo v3, "isHomeActivity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "componentName"

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;-><init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    new-instance p2, Lcom/android/server/wm/PersonaActivityHelper$1;

    invoke-direct {p2, p0}, Lcom/android/server/wm/PersonaActivityHelper$1;-><init>(Lcom/android/server/wm/PersonaActivityHelper;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance p2, Lcom/android/server/wm/PersonaActivityHelper$2;

    invoke-direct {p2, p0}, Lcom/android/server/wm/PersonaActivityHelper$2;-><init>(Lcom/android/server/wm/PersonaActivityHelper;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    return-void
.end method


# virtual methods
.method public final checkKnoxFeatureEnabled()Z
    .locals 5

    const-string/jumbo v0, "persist.sys.knox.userinfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v3, :cond_3

    if-nez v3, :cond_2

    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersonaManagerService;

    iput-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iput-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCurrentScreenUserId()Landroid/os/UserHandle;
    .locals 4

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v1

    const-string/jumbo v2, "screenshot: check focused user : "

    const-string/jumbo v3, "PersonaActivityHelper"

    invoke-static {v1, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "screenshot: getCurrentScreenUserId:premium = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "screenshot: App Separation user type. ID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "screenshot: getCurrentScreenUserId = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method public final isLockSecureFolderExceptionalCase(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.android.systemui/.keyguard.WorkLockActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "android/com.android.internal.app.ForwardIntentToManagedProfile"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "android/com.android.internal.app.ForwardIntentToManagedProfile4"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.android.intentresolver/.ChooserActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.android.intentresolver/.ChooserActivityLauncher"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.allshare.service.fileshare/.client.DeviceSelectActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.sec.android.app.myfiles/.external.ui.PermissionActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.permission.ui.GrantPermissionsActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.permission.ui.ManagePermissionsActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.role.ui.RequestRoleActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.messaging/.ui.view.main.WithActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.messaging/.ui.view.recipientspicker.PickerActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.messaging/.ui.view.firstlaunch.GoogleFirstLaunchActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.google.android.gms/.constellation.ui.ApiConsentActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.messaging/com.android.mms.ui.ConversationComposer"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.messaging/.ui.view.permission.CheckDefaultSmsAppsActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.biometrics.app.setting/.fingerprint.enroll.FingerprintEnrollActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.wssyncmldm/com.idm.fotaagent.enabler.ui.downloadconfirm.DownloadConfirmActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.sec.android.app.camera/.QrScannerActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.sec.android.app.camera/.QrScanner"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string/jumbo v2, "desktopmode"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "dexonpc_connection_state"

    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "PersonaActivityHelper"

    const-string v2, "DeX on PC is running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    const-string/jumbo v2, "com.samsung.knox.securefolder/.presentation.switcher.view.SecureFolderShortcutActivity"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "com.android.settings/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isQuickSwitchExceptionalCase(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_2

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_1
    const-string/jumbo p1, "PersonaActivityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method public final notifyActivityResumedLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p2, :cond_2

    :cond_1
    move p2, v4

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.android.server.telecom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string/jumbo v6, "com.android.calendar/.alerts.PopUpActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.calendar/com.samsung.android.app.calendarnotification.AlertPopupActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string/jumbo v6, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.PreCallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string/jumbo v6, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.InCallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, p1, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v1, :cond_6

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/knox/KnoxAnalyticsContainer$1;

    invoke-direct {p1, p0, v2, v3, p2}, Lcom/android/server/knox/KnoxAnalyticsContainer$1;-><init>(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V

    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    return-void
.end method
