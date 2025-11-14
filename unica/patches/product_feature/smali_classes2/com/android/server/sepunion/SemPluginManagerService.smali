.class public Lcom/android/server/sepunion/SemPluginManagerService;
.super Lcom/samsung/android/sepunion/IPluginManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final mIsCoverSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/SemPluginManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IPluginManager$Stub;-><init>()V

    const-string/jumbo v0, "SemPluginManagerService"

    invoke-static {v0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v0, "com.sec.feature.cover"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginManagerService;->initialize()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v1, "cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "\n##### SEP COVER MANAGER SERVICE #####\n##### (dumpsys sepunion cover) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    return-void

    :cond_2
    aget-object v1, p3, v0

    const-string/jumbo v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    return-void

    :cond_3
    aget-object v1, p3, v0

    const-string/jumbo v3, "secure_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "SemPluginManagerService"

    const-string/jumbo v4, "device_policy"

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string p1, "111111"

    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "dumpCoverInfomation: resetPassword(secure_on) failed."

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    aget-object v0, p3, v0

    const-string/jumbo v1, "secure_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string p1, ""

    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "dumpCoverInfomation: resetPassword(secure_off) failed."

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-object p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    new-instance v1, Lcom/android/server/sepunion/SemPluginLocalService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemPluginLocalService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final notifyCoverSwitchStateChanged(JZ)V
    .locals 0

    const-string/jumbo p1, "SemPluginManagerService"

    const-string/jumbo p2, "notifyCoverSwitchStateChanged"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    return-void
.end method

.method public final notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 2

    const-string/jumbo p1, "SemPluginManagerService"

    const-string/jumbo p2, "notifySmartCoverAttachStateChanged"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    const-string p2, "CoverManager_CoverManagerServiceImpl"

    if-nez p1, :cond_1

    const-string/jumbo p0, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_5

    const-string p1, "CoverManager_"

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "notifySmartCoverAttachStateChanged : not supported cover type = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "cover attach is failed - not supported cover type = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged : attach = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_3

    const-string/jumbo p2, "cover attach : "

    const-string v0, ", cover type : "

    invoke-static {p2, v0, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 8

    const/16 v0, 0x258

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez p1, :cond_9

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    sget-object p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v0

    const-string v3, "CoverManager_CoverManagerServiceImpl"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v5, -0x100

    const/16 v6, 0x1a

    const/4 v7, -0x1

    invoke-interface {v0, v7, v5, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :catch_0
    const-string/jumbo v0, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "getCoverAttachStateFromInputManager : InputManager is null"

    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    if-eq v0, v2, :cond_3

    move v4, v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v4, v2

    :cond_5
    invoke-virtual {p0, v4, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    goto :goto_2

    :cond_6
    const-string/jumbo p0, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-boolean v0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    if-nez v0, :cond_8

    const-string v0, "CoverManager_StateNotifier"

    const-string/jumbo v3, "onBootComplete"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    iget-object v0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->run()V

    iput-object v1, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    :cond_8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    :cond_9
    :goto_2
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    :cond_0
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    :cond_0
    return-void
.end method

.method public final onUserStarting(I)V
    .locals 0

    return-void
.end method

.method public final onUserStopped(I)V
    .locals 0

    return-void
.end method

.method public final onUserStopping(I)V
    .locals 0

    return-void
.end method

.method public final onUserSwitching(II)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    :cond_0
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    :cond_0
    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 0

    return-void
.end method
