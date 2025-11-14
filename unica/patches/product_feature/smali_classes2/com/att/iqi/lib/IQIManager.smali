.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final ACTION_SERVICE_FORCE_STOPPED:Ljava/lang/String; = "com.att.iqi.action.SERVICE_FORCE_STOPPED"

.field private static final FORCE_STOP_WAIT_MS:J = 0xdacL

.field private static final PERMISSION_SERVICE_FORCE_STOP:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_FORCE_STOP_NOTIFICATION"

.field private static sInstance:Lcom/att/iqi/lib/IQIManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIQIService:Lcom/att/iqi/IIQIBroker;

.field private final mMessageDispatcher:Landroid/os/Handler;

.field private final mMetricQueryCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

.field private final mMetricSourcingListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

.field private final mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

.field private final mServiceStateChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricQueryCallbackMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricSourcingListenerMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$4;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$5;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$5;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "msg-handler-iqi"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_5b

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_5b
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;

    invoke-direct {v2, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .registers 2

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v1}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v1

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private getService()V
    .registers 7

    const-string v0, "IQIManager"

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    if-eqz v1, :cond_7

    goto :goto_52

    :cond_7
    const-string/jumbo v1, "android.os.ServiceManager"

    :try_start_a
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_e} :catch_5a

    :try_start_e
    const-string/jumbo v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1d} :catch_53

    :try_start_1d
    const-string/jumbo v2, "iqi"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_52

    invoke-static {v1}, Lcom/att/iqi/IIQIBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    if-eqz v1, :cond_40

    const-string/jumbo p0, "Service reached!"

    invoke-static {v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3c
    move-exception p0

    goto :goto_47

    :catch_3e
    move-exception p0

    goto :goto_4d

    :cond_40
    const-string/jumbo p0, "getService returned null :("

    invoke-static {v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_46} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_46} :catch_3c

    return-void

    :goto_47
    const-string v1, "Invocation exception!"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :goto_4d
    const-string v1, "Access exception!"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception p0

    const-string v1, "Can\'t find getService method!"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_5a
    move-exception p0

    const-string/jumbo v1, "ServiceManager not found!"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public disableService()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->disableService()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    const-string v0, "IQIManager"

    const-string/jumbo v1, "Remote exception in disableService"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 10

    if-eqz p2, :cond_27

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo p2, "com.att.iqi.action.SERVICE_FORCE_STOPPED"

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string/jumbo v4, "com.att.iqi.permission.RECEIVE_FORCE_STOP_NOTIFICATION"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    :try_start_27
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->forceStopService()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    move-object p0, v0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in forceStopService"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 5

    if-eqz p1, :cond_42

    if-nez p2, :cond_5

    goto :goto_42

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in registerMetricSourcingListener"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Callback already registered for metric ID "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    return-void
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_28

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_29

    if-eqz v1, :cond_28

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v0, "Remote exception in registerProfileChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 5

    if-eqz p1, :cond_42

    if-nez p2, :cond_5

    goto :goto_42

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in registerQueryCallback"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Callback already registered for metric ID "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    return-void
.end method

.method public registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_28

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_29

    if-eqz v1, :cond_28

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v0, "Remote exception in registerServiceStateChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setUnlockCode(J)Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->setUnlockCode(J)Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in setUnlockCode"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v1, "Remote exception in shouldSubmitMetric"

    invoke-static {p1, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_15

    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v0, "Remote exception in submitMetric"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 4

    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in unregisterMetricSourcingListener"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_28

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_29

    if-eqz p1, :cond_28

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v0, "Remote exception in unregisterProfileChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 4

    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo p2, "Remote exception in registerQueryCallback"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_28

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_29

    if-eqz p1, :cond_28

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string/jumbo v0, "Remote exception in unregisterServiceStateChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method
