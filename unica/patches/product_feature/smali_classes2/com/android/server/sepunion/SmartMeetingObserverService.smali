.class public Lcom/android/server/sepunion/SmartMeetingObserverService;
.super Lcom/samsung/android/sepunion/ISmartMeetingObserverService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final SMMT_OBSERVER_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

.field public final mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

.field public mObserverRegisterState:I

.field public mPackageNameList:Ljava/util/List;

.field public final mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;


# direct methods
.method public static -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V
    .registers 7

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

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "pkg_name"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "class_name"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static -$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "contentResolver query: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SmartMeetingObserverService"

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    const-string/jumbo v0, "get ContentResolver null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    move-object v1, v4

    goto :goto_82

    :cond_1f
    :try_start_1f
    sget-object v5, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v6, "video_call_app_info"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2c} :catch_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_2c} :catch_54

    if-eqz v2, :cond_76

    :try_start_2e
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_76

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "package_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_6c

    if-gez v0, :cond_56

    :try_start_50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_53} :catch_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_1d

    :catch_54
    move-exception v0

    goto :goto_7c

    :cond_56
    :goto_56
    :try_start_56
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_6c

    goto :goto_56

    :catchall_6c
    move-exception v0

    :try_start_6d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v2

    :try_start_72
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw v0

    :cond_76
    if-eqz v2, :cond_82

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_7b} :catch_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_7b} :catch_54

    goto :goto_82

    :goto_7c
    const-string/jumbo v2, "getPackageNameList() failed: "

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_82
    :goto_82
    if-eqz v1, :cond_bf

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    goto :goto_bf

    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerUsageStatsWatcher: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_b8

    iget-object v2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    iput-object v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    goto :goto_c5

    :cond_b8
    const-string/jumbo p0, "get UsageStatsManager null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :cond_bf
    :goto_bf
    const-string/jumbo p0, "registerUsageStatsWatcher: fail"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c5
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.samsung.android.smartmeeting.observer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISmartMeetingObserverService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$1;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$3;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "SmartMeetingObserverService"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "\n##### SmartMeetingObserverService #####\n##### (dumpsys sepunion SmartMeetingObserverService) #####\n"

    const-string/jumbo p3, "Observer register state: "

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "packageNameList: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    if-nez p0, :cond_29

    const-string/jumbo p0, "null"

    goto :goto_2d

    :cond_29
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2d
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    const-string/jumbo p0, "SmartMeetingObserverService"

    const-string/jumbo p1, "onCreate"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    const-string/jumbo p0, "SmartMeetingObserverService"

    const-string/jumbo v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStart()V
    .registers 2

    const-string/jumbo p0, "SmartMeetingObserverService"

    const-string/jumbo v0, "onStart"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStartUser(I)V
    .registers 2

    return-void
.end method

.method public final onStopUser(I)V
    .registers 2

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method
