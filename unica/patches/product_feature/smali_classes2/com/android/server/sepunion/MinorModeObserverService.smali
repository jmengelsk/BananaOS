.class public Lcom/android/server/sepunion/MinorModeObserverService;
.super Lcom/samsung/android/sepunion/IMinorModeObserverService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final MM_URI:Landroid/net/Uri;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioPlaybackCallback:Lcom/android/server/sepunion/MinorModeObserverService$3;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

.field public mLastMediaChangedTimeStamp:Ljava/lang/Long;

.field public final mLimitPackageSet:Ljava/util/Set;

.field public mMinorModeEnabled:Z

.field public mObserverRegisterState:I

.field public final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field public final mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;


# direct methods
.method public static -$$Nest$mhandleMinorModeEnabled(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minors_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/MinorModeObserverService;->updateUsageStatsWatcherRegistration(Z)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/MinorModeObserverService;->updateAudioPlaybackCallbackRegistration(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "MinorModeObserverService"

    const-string/jumbo v1, "handleMinorModeEnabled call failed: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/MinorModeObserverService;IILandroid/content/ComponentName;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "event_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "user_id"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pkg_name"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "class_name"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.minormode.db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IMinorModeObserverService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    iput v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/MinorModeObserverService$2;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLastMediaChangedTimeStamp:Ljava/lang/Long;

    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/MinorModeObserverService$3;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioPlaybackCallback:Lcom/android/server/sepunion/MinorModeObserverService$3;

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "MinorModeObserverService"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioManager:Landroid/media/AudioManager;

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "\n##### MinorModeObserverService #####\n##### (dumpsys sepunion MinorModeObserverService) #####\n"

    const-string/jumbo p3, "Observer register state: "

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ignorePackageList: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleLimitPackages()V
    .locals 5

    const-string/jumbo v0, "MinorModeObserverService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    const-string/jumbo v3, "get_limit_packages"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "limit_packages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "handleLimitPackages call failed: Bundle from MinorMode is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string/jumbo v1, "handleLimitPackages call failed: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "MinorModeObserverService"

    const-string/jumbo p1, "onCreate"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const-string/jumbo p0, "MinorModeObserverService"

    const-string/jumbo v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStart()V
    .locals 1

    const-string/jumbo p0, "MinorModeObserverService"

    const-string/jumbo v0, "onStart"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 0

    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    return-void
.end method

.method public final updateAudioPlaybackCallbackRegistration(Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAudioPlaybackCallbackRegistration ignore: register="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasRegistered="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MinorModeObserverService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioPlaybackCallback:Lcom/android/server/sepunion/MinorModeObserverService$3;

    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    iget p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mAudioPlaybackCallback:Lcom/android/server/sepunion/MinorModeObserverService$3;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    iget p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    return-void
.end method

.method public final updateUsageStatsWatcherRegistration(Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateUsageStatsWatcherRegistration ignore: register="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasRegistered="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MinorModeObserverService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->handleLimitPackages()V

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    return-void
.end method
