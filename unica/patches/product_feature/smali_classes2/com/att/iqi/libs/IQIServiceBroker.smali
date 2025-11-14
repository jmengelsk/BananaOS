.class public Lcom/att/iqi/libs/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/att/iqi/libs/IIQIServiceBrokerPub;


# static fields
.field private static final CAN_CHANGE_UNLOCK_KEYCODE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CAN_CHANGE_UNLOCK_KEYCODE"

.field private static final CHANGE_IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final CHANGE_IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CHANGE_IQI_STATE"

.field private static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field private static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field private static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field private static final IQI_UPLOAD_COMPLETE_ACTION:Ljava/lang/String; = "com.att.iqi.action.UPLOAD_COMPLETE"

.field private static final MAX_RETRY_ATTEMPTS:I = 0xa

.field private static final MSG_CHECK_VALID:I = 0x2

.field private static final MSG_SIM_INVALID:I = 0x3

.field private static final MSG_TIMED_OUT_WAITING_PACKAGE_UPLOAD:I = 0x4

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.att.iqi"

.field private static final PACKAGE_UPLOAD_WAIT_MS:J = 0x3a98L

.field private static final RECEIVE_UPLOAD_NOTIFICATIONS_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_UPLOAD_NOTIFICATIONS"

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field private static final TOGGLE_DEBUG_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

.field private static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

.field private static final sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

.field private static sInstance:Lcom/att/iqi/libs/IQIServiceBroker;


# instance fields
.field private mApplicationEnabled:Z

.field private final mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field private mInitialServiceConnect:Z

.field private mLastServiceEnabled:Z

.field private final mMessageDispatcher:Landroid/os/Handler;

.field private final mMetricQueryCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricQueryCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetricSourcingCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricSourcingCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IProfileChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mServicePublished:Z

.field public mServiceState:I

.field private final mServiceStateChangeList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/att/iqi/IServiceStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceStubForFailure:Lcom/att/iqi/IIQIService;

.field public mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;)Lcom/att/iqi/IIQIService;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->appEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->disablePackage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryConnecting(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->unregisterReceivers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTARGET_IMPLEMENTATION_COMPONENT()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintAARVersion(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printAARVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintArtifactsVersion(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printArtifactsVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintConciergeVersion(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.att.iqi"

    const-string/jumbo v2, "com.att.iqi.service.IQService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$1;

    invoke-direct {v0}, Lcom/att/iqi/libs/IQIServiceBroker$1;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$2;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$2;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$3;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$3;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$4;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$4;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$5;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/att/iqi/libs/IQIServiceBroker$5;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    new-instance v2, Lcom/att/iqi/IIQIService$Default;

    invoke-direct {v2}, Lcom/att/iqi/IIQIService$Default;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$6;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$6;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$8;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$8;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    sput-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v2

    const-string/jumbo v3, "log_enabled"

    invoke-virtual {v2, v3, v0}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    const-string/jumbo v0, "service_state"

    invoke-virtual {v2, v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    new-instance v0, Lcom/att/iqi/libs/CellBroadcastObserver;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/att/iqi/libs/CellBroadcastObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->registerPackageMonitor()V

    invoke-direct {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method private appEnabled()Z
    .locals 5

    const-string/jumbo v0, "cannot find application information for "

    const-string v1, "Application "

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "enabled"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "disabled"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    iput-boolean v3, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    return p0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private checkRetryAttemptsLocked(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const-string v0, ", attempt # "

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const-string/jumbo p0, "Retried several times already, give up"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private disablePackage()V
    .locals 3

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string/jumbo v2, "com.att.iqi"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string/jumbo p0, "package has been disabled"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "IQIServiceBroker dump options:"

    const-string v1, "    -h: print this help"

    const-string v2, "    --concierge: print IQIConcierge version"

    const-string v3, "    --aar: print AAR version"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    -v: print the version of all artifacts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 0

    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicInterface()Lcom/att/iqi/libs/IIQIServiceBrokerPub;
    .locals 1

    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    :cond_0
    return-object v0
.end method

.method private getServiceComponent()Landroid/content/ComponentName;
    .locals 0

    sget-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object p0
.end method

.method private notifyServiceState(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyServiceState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->restoreCallbacks()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    :cond_1
    iput-boolean p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    :cond_2
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/IServiceStateChangeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "notifyServiceState failed"

    invoke-static {v2, v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static printAARVersion(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AAR version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/att/iqi/lib/Build;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static printArtifactsVersion(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printAARVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static printConciergeVersion(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IQIConcierge version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private registerPackageMonitor()V
    .locals 3

    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$7;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$7;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method private registerReceivers(Z)V
    .locals 12

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo p1, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string/jumbo v3, "com.att.iqi.permission.CHANGE_IQI_STATE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo p1, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string/jumbo v9, "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    invoke-virtual {p0}, Lcom/att/iqi/libs/CellBroadcastObserver;->register()V

    return-void
.end method

.method private restoreCallbacks()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v4

    iget-object v5, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v4, v5}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_2
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_3

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_7
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "Remote exception in restoreCallbacks"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tryConnecting(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Forbidden to bind to implementation "

    const-string v1, "Failed to bind to implementation "

    const-string v2, "Connecting to implementation"

    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v2, :cond_0

    const-string p1, "Already connected"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo p1, "No implementation service found"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/att/iqi/libs/IQIConcierge;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {p1, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    const-string/jumbo p1, "Retry reconnecting"

    invoke-direct {p0, v6, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->checkRetryAttemptsLocked(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private unregisterReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    invoke-virtual {p0}, Lcom/att/iqi/libs/CellBroadcastObserver;->unregister()V

    return-void
.end method


# virtual methods
.method public checkPkgValidity()Z
    .locals 7

    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Valid signature"

    invoke-static {v5}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const-string v2, "Bad signature"

    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v5

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot find package information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    const-string/jumbo v0, "Retry check package"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->checkRetryAttemptsLocked(ILjava/lang/String;)V

    :cond_2
    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrokeredService()Lcom/att/iqi/IIQIService;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Connection wait interrupted"

    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v2, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Timed out waiting for service connection, returning stub"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "Third party apps ready"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIConcierge;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    const-string/jumbo v1, "iqi"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    return-void
.end method

.method public postMessage(ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldConnect()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->isServiceBindingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final tryDisconnecting()V
    .locals 2

    const-string v0, "Disconnecting from implementation"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_0

    const-string v0, "Already disconnected"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
