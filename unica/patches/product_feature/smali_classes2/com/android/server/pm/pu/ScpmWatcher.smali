.class public final Lcom/android/server/pm/pu/ScpmWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SCPM_POLICIES:Ljava/util/Set;

.field public static final SCPM_POLLING_INTERVAL_MS:J


# instance fields
.field public final mDebugPolicyReceiver:Lcom/android/server/pm/pu/ScpmWatcher$1;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

.field public final mScpmHandler:Landroid/os/Handler;

.field public final mService:Lcom/android/server/pm/pu/ProfileUtilizationService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "disable-2bb4"

    const-string/jumbo v1, "packages-9a07"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLICIES:Ljava/util/Set;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLLING_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/pu/ScpmWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/ScpmWatcher$1;-><init>(Lcom/android/server/pm/pu/ScpmWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mDebugPolicyReceiver:Lcom/android/server/pm/pu/ScpmWatcher$1;

    iput-object p1, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    new-instance v1, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    const-string v2, "851xyutpvc"

    const-string v3, "2.1.1"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getScpmController(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)Lcom/samsung/android/server/corescpm/ScpmController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-static {}, Lcom/samsung/android/server/util/CoreLogger;->getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v2

    const-string/jumbo v3, "PU_ScpmWatcher"

    iput-object v3, v2, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    const/16 v4, 0x14

    iput v4, v2, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    iput-boolean v4, v2, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    invoke-virtual {v2}, Lcom/samsung/android/server/util/CoreLogger$Builder;->build()Lcom/samsung/android/server/util/CoreLogger;

    move-result-object v10

    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v5, 0xa

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    new-instance v7, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mScpmHandler:Landroid/os/Handler;

    iget-object v6, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLICIES:Ljava/util/Set;

    new-instance v9, Lcom/android/server/pm/pu/ScpmWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/pm/pu/ScpmWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/ScpmWatcher;)V

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V

    new-instance v1, Lcom/android/server/pm/pu/ScpmWatcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pu/ScpmWatcher$2;-><init>(Lcom/android/server/pm/pu/ScpmWatcher;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v7, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_84

    const-string/jumbo p0, "Registering debug intent: android.intent.action.ACTION_PU_DEBUG_SCPM_POLICY"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_PU_DEBUG_SCPM_POLICY"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_84
    return-void
.end method


# virtual methods
.method public final onPolicy(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_4b

    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    check-cast v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_4b

    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_42

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, "\n"

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onScpmPolicy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_38

    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42

    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    :try_start_3e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception p0

    const-string/jumbo p1, "PU_ScpmWatcher"

    const-string v0, "Exception occurred: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void
.end method
