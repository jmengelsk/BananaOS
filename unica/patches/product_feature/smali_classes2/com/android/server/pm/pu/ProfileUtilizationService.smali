.class public Lcom/android/server/pm/pu/ProfileUtilizationService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final PU_VERSION:Ljava/lang/String; = "2.1.1"

.field public static final TAG_PU:Ljava/lang/String; = "PU"

.field public static final mRandom:Ljava/util/Random;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFinishStatus:Ljava/lang/String;

.field public mFinishTimeMs:J

.field public mSessionId:Ljava/lang/String;

.field public mStartReason:I

.field public mStartTimeMs:J

.field public final mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

.field public final mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

.field public final mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

.field public mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    const-string/jumbo v0, "Not finished"

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishStatus:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    new-instance v1, Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-direct {v1, v0}, Lcom/android/server/pm/pu/DexoptTrigger;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    new-instance v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    invoke-direct {v0, p1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    new-instance p1, Lcom/android/server/pm/pu/ScpmWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/pm/pu/ScpmWatcher;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    return-void
.end method


# virtual methods
.method public collectAndSendPuData(Lcom/android/server/pm/pu/AbstractLogger;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    invoke-virtual {p1}, Lcom/android/server/pm/pu/AbstractLogger;->sendEvent()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    const-string/jumbo v0, "Profile utilization state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "Current state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PU_StatusWatcher:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PU_DexoptTrigger:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PU_Storage:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->loadAppsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_98

    const-string/jumbo v1, "Stored apps:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pu/App;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/pm/pu/App;->weight:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    :cond_95
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_98
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "PU"

    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->dumpSharedPrefs(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    const-string/jumbo v0, "SCPM"

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsScpm:Landroid/content/SharedPreferences;

    invoke-static {p1, v0, p0}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->dumpSharedPrefs(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    .registers 9

    iget-boolean v0, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_6

    goto/16 :goto_c3

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_17

    :cond_f
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    move-result p1

    if-eqz p1, :cond_c3

    const/16 p1, 0xd

    :goto_17
    iput p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    invoke-static {p1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Device updated "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "PU"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_46

    const-string/jumbo p0, "Skip profile utilization, low storage"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    iget-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mPolicyDisabled:Lcom/android/server/pm/pu/ScpmPolicyDisabled;

    iget-object p1, p1, Lcom/android/server/pm/pu/ScpmPolicyDisabled;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "disable-2bb4"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_58

    goto :goto_83

    :cond_58
    :try_start_58
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move p1, v2

    :goto_5e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge p1, v5, :cond_83

    const-string v5, "2.1.1"

    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_6e} :catch_7a

    if-eqz v5, :cond_77

    const-string/jumbo p0, "Skip profile utilization, disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_77
    add-int/lit8 p1, p1, 0x1

    goto :goto_5e

    :catch_7a
    move-exception p1

    const-string/jumbo v1, "PU_scpm"

    const-string v4, "Failed to parse SCPM policy disable-2bb4"

    invoke-static {v1, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_83
    :goto_83
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const-string/jumbo v4, "PU_StatusWatcher"

    invoke-direct {p1, v4, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v0, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusFilter:Landroid/content/IntentFilter;

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    invoke-virtual {v1, p1, v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p1

    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$3;

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method public final onScpmPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Got scpm policy: "

    const-string/jumbo v1, "PU"

    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Store scpm policy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PU_Storage"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsScpm:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onStart()V
    .registers 7

    const-string/jumbo v0, "PU"

    const-string/jumbo v1, "Profile utilization service started"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownFilter:Landroid/content/IntentFilter;

    iget-object v3, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v2, v2, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->FOTA_SETTING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mContentObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "badge_for_fota"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    iput-boolean v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    :cond_41
    const-string/jumbo v0, "package_native"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    const-string/jumbo v1, "PU_StatusWatcher"

    if-nez v0, :cond_58

    const-string/jumbo p0, "Package manager native is missing"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    :try_start_58
    iget-object v3, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mApexObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception v0

    const-string v3, "Failed to register an observer"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Version: 2.1.1\nStart reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    const-string/jumbo v1, "boot-no-update"

    goto :goto_15

    :cond_11
    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nStart time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, " ts="

    if-nez v1, :cond_2e

    const-string/jumbo v1, "not started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_2e
    new-instance v1, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_40
    const-string v1, "\nFinish time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_52

    const-string/jumbo p0, "not finished"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_52
    new-instance v1, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nTook time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    iget-wide v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "sec"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
