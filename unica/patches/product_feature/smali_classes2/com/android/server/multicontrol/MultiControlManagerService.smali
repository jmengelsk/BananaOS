.class public final Lcom/android/server/multicontrol/MultiControlManagerService;
.super Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mInputFilter:Landroid/view/IInputFilter;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public mIsBootComplete:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public mUserSetupCompleteObserver:Lcom/android/server/multicontrol/MultiControlManagerService$1;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field public final mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/multicontrol/MultiControlManagerService;

    const-string/jumbo v0, "RAMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v1, "multicontrol"

    const/4 v2, -0x2

    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-class v1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    new-instance v1, Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/multicontrol/MCTriggerManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    new-instance v2, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;

    invoke-direct {v2, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    const-class p0, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "MultiControl@MultiControlManagerService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    const-string v0, "-a"

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo p2, "MultiControlManagerService (dumpsys multicontrol):"

    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 p2, 0x56

    const-string/jumbo v0, "MultiControl@StateStart"

    const-string v1, "=========================================================================="

    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "MultiControl@StateEnd"

    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "MultiControl@SavedLogsStart"

    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "MultiControl@SavedLogsEnd"

    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "mCurrentUserId"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "Configuration"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "display_size_forced"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DISPLAY_SIZE_FORCED"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "display_density_forced"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DISPLAY_DENSITY_FORCED"

    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "screen_off_timeout"

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "SCREEN_OFF_TIMEOUT"

    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SHOW_IME_WITH_HARD_KEYBOARD"

    invoke-virtual {p3, p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final enableTriggerDetection(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[enableTriggerDetection] in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->enable(Z)V

    :cond_0
    return-void
.end method

.method public final forceHideCursor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "in forceHideCursor"

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceHideCursor(Z)V

    :cond_0
    return-void
.end method

.method public final getProtocolVersion()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v1, "getProtocolVersion"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final initializeStates()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Lcom/android/server/multicontrol/MultiControlManagerService$1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$1;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Lcom/android/server/multicontrol/MultiControlManagerService$1;

    :cond_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Lcom/android/server/multicontrol/MultiControlManagerService$1;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method

.method public final isAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "isAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isSystemReady(), mIsBootComplete="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFactoryBinary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAllowed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "isUserSetupComplete()=false"

    invoke-static {p0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public final observeDesktopMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[observeDesktopMode] in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->observeDesktopMode(Z)V

    :cond_0
    return-void
.end method

.method public final onUserChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCurrentUserId(), userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    :cond_2
    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    return-void
.end method

.method public final resetInputFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    return-void
.end method

.method public final setCursorPosition(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "in setCursorPosition [displayId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setCursorPosition(III)V

    :cond_0
    return-void
.end method

.method public final setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener;->onInstalled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x45

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    const-string/jumbo p1, "MultiControl@MultiControlManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setInteractive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "in setInteractive"

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInteractiveForInternalDisplay(Z)V

    :cond_0
    return-void
.end method

.method public final setMultiControlOutOfFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "in setMultiControlOutOfFocus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setMultiControlOutOfFocus(Z)V

    :cond_0
    return-void
.end method

.method public final setProtocolVersion(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v0, "setProtocolVersion"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setTriggerThreshold(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setTriggerThreshold] in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->setTriggerThreshold(I)V

    :cond_0
    return-void
.end method

.method public final startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "MultiControlAppDeathChecker - unlinkToDeath"

    invoke-static {v2}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :cond_0
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    invoke-direct {v0, p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final stopDeathChecker()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MultiControlAppDeathChecker - unlinkToDeath"

    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :cond_0
    return-void
.end method
