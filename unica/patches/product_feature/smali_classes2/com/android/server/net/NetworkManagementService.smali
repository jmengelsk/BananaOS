.class public final Lcom/android/server/net/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DBG:Z


# instance fields
.field public mActiveAlerts:Ljava/util/HashMap;

.field public mActiveQuotas:Ljava/util/HashMap;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCloLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mDaemonHandler:Landroid/os/Handler;

.field public volatile mDataSaverMode:Z

.field public final mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field public volatile mFirewallEnabled:Z

.field public mICloEventObserver:Landroid/net/ICloEventObserver;

.field public mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

.field public mNetdService:Landroid/net/INetd;

.field public mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

.field public final mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final mObservers:Landroid/os/RemoteCallbackList;

.field public mOemNetd:Lcom/android/internal/net/IOemNetd;

.field public final mQuotaLock:Ljava/lang/Object;

.field public final mRulesLock:Ljava/lang/Object;

.field public volatile mStrictEnabled:Z

.field public mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

.field public mUidCleartextPolicy:Landroid/util/SparseIntArray;

.field public final mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

.field public mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

.field public final mUseMeteredFirewallChains:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V
    .locals 2

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/INetworkManagementService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    const/16 p2, 0xb

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 p2, 0xc

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    new-instance p1, Lcom/android/server/net/NetworkManagementService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$LocalService;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    const-class p0, Lcom/android/server/net/NetworkManagementService$LocalService;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .locals 3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "throw"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "unreachable"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    new-instance v0, Landroid/net/RouteInfoParcel;

    invoke-direct {v0}, Landroid/net/RouteInfoParcel;-><init>()V

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getMtu()I

    move-result p0

    iput p0, v0, Landroid/net/RouteInfoParcel;->mtu:I

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;
    .locals 4

    new-instance v0, Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/net/NetworkManagementService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/net/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V

    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    const-string/jumbo v0, "NetworkManagement"

    if-eqz p0, :cond_0

    const-string v2, "Creating NetworkManagementService"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, "Connecting native netd service"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v1, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    :try_start_0
    iget-object v3, v1, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v2, v3}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    if-eqz p0, :cond_2

    const-string/jumbo p0, "Register unsolicited event listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Failed to set Netd unsolicited event listener "

    invoke-static {p0, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :try_start_1
    iget-object p0, v1, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_3

    const-string p0, "Get OemNet listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v2, "Failed to get OemNetd listener "

    invoke-static {p0, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "Connected"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public static dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2

    const-string/jumbo v0, "UID firewall "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " rule: ["

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 2

    const-string/jumbo v0, "UID bandwith control "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": ["

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final activateClo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "activate Clo native is called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->activateClo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final activateCloGro()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->activateCloGro()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final activateCloHo(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->activateCloHo(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addApeRule(ZLjava/lang/String;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addRule is called  add "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, " true"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "false"

    :goto_0
    const-string v2, ", interface name "

    const-string v3, ", bandwidthMbps "

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addchain chain : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "iptype : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addIpAcceptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addLegacyRoute"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addMnxbRule(ZLjava/lang/String;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addRule is called  add "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, " true"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "false"

    :goto_0
    const-string v2, ", interface name "

    const-string v3, ", bandwidthMbps "

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMnxbRule(ZLjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addMptcpLink(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addmptcplink"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "addOrRemoveSystemAppFromDataSaverWhitelist Error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addSocksRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addSocksSkipRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "addSocksSkipRuleProto"

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " iptype : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addSourcePortAcceptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addSourceRoute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addTosPolicy(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->addTosPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error addTosPolicy > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addSocksRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "addUidToChain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final allowProtect(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final applyUidCleartextNetworkPolicy(II)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown policy "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final buildFirewall()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final cleanAllBlock()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "cleanAllBlock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final cleanBlockPorts()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "cleanBlockPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final cleanOnlyAllowIPs()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "cleanOnlyAllowIPs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanOnlyAllowIPs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final clearEbpfMap(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "clearEbpfMap failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final clearTosMap()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearTosMap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error clearTosMap > "

    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final closeSocketsForFreecess(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    return-void
.end method

.method public final closeSocketsForUid(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-direct {v0, p1, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    filled-new-array {v0}, [Landroid/net/UidRangeParcel;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, v0, v1}, Lcom/android/internal/net/IOemNetd;->setSocketsDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error closing sockets for uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NetworkManagement"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final closeSocketsForUids([I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->closeSocketsForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final deactivateClo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "deactivate Clo native is called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->deactivateClo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final deactivateCloGro()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloGro()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final deactivateCloHo()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloHo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "delIpAcceptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "delSourcePortAcceptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "delSourceRoute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final denyProtect(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final disableDAD(Ljava/lang/String;)V
    .locals 13

    const-string/jumbo v0, "disableDAD ifName "

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v5, "accept_dad"

    const-string v6, "0"

    const/4 v2, 0x6

    const/4 v3, 0x1

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v11, "dad_transmits"

    const-string v12, "0"

    const/4 v8, 0x6

    const/4 v9, 0x1

    move-object v10, v4

    invoke-interface/range {v7 .. v12}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/net/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final disableIpv6(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final disableMptcp()V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "disableMptcp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "NetworkManagement"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "Flags:"

    const-string/jumbo p3, "com.android.server.net.use_metered_firewall_chains: "

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p3, "Active quota ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Active alert ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Data saver mode: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v0, "denied UIDs"

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-static {p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    const-string/jumbo v0, "allowed UIDs"

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-static {p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    const-string p1, ""

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall standby chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "standby"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "dozable"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall powersave chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "powersave"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall restricted mode chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "restricted"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall low power standby chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "low_power_standby"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall background chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "background"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall metered allow chain enabled (Data saver mode): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "metered_allow"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall metered deny_user chain enabled (always-on): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "metered_deny_user"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall metered deny_admin chain enabled (always-on): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "metered_deny_admin"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string/jumbo p1, "UID firewall oem deny chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "fw_oem_deny_1"

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "Firewall enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "Netd service status: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez p0, :cond_1

    const-string/jumbo p0, "disconnected"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_4
    invoke-interface {p0}, Landroid/net/INetd;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "alive"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "dead"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "unreachable"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :goto_2
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public final enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final enableIpv6(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final enableKnoxVpnFlagForTether(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "enableKnoxVpnFlagForTether failed for chained vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enableMptcp(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "enableMptcp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final enforceSystemUid()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only available to AID_SYSTEM"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemUidexceptUserId()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only available to AID_SYSTEM"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDeviceInfo()[I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getDeviceInfo()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getDeviceInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const-string v3, ""

    invoke-static {v2, v1, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getFirewallChainState(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Landroid/net/InterfaceConfiguration;

    invoke-direct {p1}, Landroid/net/InterfaceConfiguration;-><init>()V

    iget-object v0, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Landroid/net/LinkAddress;

    iget v2, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v1, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid InterfaceConfigurationParcel"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getL4sConnCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getL4sConnCount()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Error getL4sConnCount > "

    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getNetworkStatsVideoCall(Ljava/lang/String;II)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    array-length p2, p0

    const-wide/16 v0, 0x0

    const/4 p3, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v4, p0, p3

    :try_start_1
    iget-object v5, v4, Landroid/net/TetherStatsParcel;->iface:Ljava/lang/String;

    iget-wide v5, v4, Landroid/net/TetherStatsParcel;->rxBytes:J

    add-long/2addr v0, v5

    iget-wide v4, v4, Landroid/net/TetherStatsParcel;->txBytes:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr v2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "problem parsing video call stats for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "problem parsing videocall stats: "

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getTcpLocalPorts([I)[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->getTcpLocalPorts([I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Error getTcpLocalPorts > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown chain:"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final isBandwidthControlEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isFirewallEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    return p0
.end method

.method public final isNetworkRestricted(I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted_enforcePermission()V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method public final isNetworkRestrictedInternal(I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "Uid "

    const-string/jumbo v3, "Uid "

    const-string/jumbo v4, "Uid "

    const-string/jumbo v5, "Uid "

    const-string/jumbo v6, "Uid "

    const-string/jumbo v7, "Uid "

    const-string/jumbo v8, "Uid "

    const-string/jumbo v9, "Uid "

    const-string/jumbo v10, "Uid "

    const-string/jumbo v11, "Uid "

    const-string/jumbo v12, "Uid "

    const-string/jumbo v13, "Uid "

    iget-object v14, v0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x2

    :try_start_0
    invoke-virtual {v0, v15}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    iget-object v15, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    move-object/from16 v17, v2

    const/4 v2, 0x2

    if-ne v15, v2, :cond_1

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of app standby mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v14

    return v16

    :cond_1
    move/from16 v2, v16

    goto :goto_1

    :cond_2
    move-object/from16 v17, v2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-eq v13, v2, :cond_4

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of device idle mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_6

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of power saver mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_8

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of restricted mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_a

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of low power standby"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_a
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_c

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because it is in background"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_c
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_e

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of freecess"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_e
    iget-boolean v2, v0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v2, :cond_14

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_10

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of user-restricted metered data in the background"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_10
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_12

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of admin-restricted metered data in the background"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_12
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_18

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of data saver mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_14
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of no metered data in the background"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_16
    iget-boolean v2, v0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v2, :cond_18

    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted because of data saver mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    monitor-exit v14

    const/16 v16, 0x1

    return v16

    :cond_18
    const/4 v0, 0x0

    monitor-exit v14

    return v0

    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l4StatsGet()[J
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->l4StatsGet()[J

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final listInterfaces()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "modifyEpdg epdg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v0, p3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final prepareNativeDaemon()V
    .locals 15

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x7

    const/4 v6, 0x1

    const-string/jumbo v7, "Pushing "

    iget-object v8, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    iget-boolean v9, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    iget-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    sget-boolean v10, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active quota rules"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_3

    sget-boolean v9, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "NetworkManagement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active alert rules"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    const/4 v9, 0x0

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_5

    sget-boolean v12, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v12, :cond_4

    const-string/jumbo v12, "NetworkManagement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Pushing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " UIDs to metered denylist rules"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_4

    :cond_5
    move-object v10, v11

    :goto_4
    iget-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-lez v12, :cond_7

    sget-boolean v11, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v11, :cond_6

    const-string/jumbo v11, "NetworkManagement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Pushing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " UIDs to metered allowlist rules"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_8

    move v7, v9

    :goto_5
    :try_start_2
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_8

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    invoke-virtual {p0, v12, v9, v13}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    add-int/2addr v7, v6

    goto :goto_5

    :cond_8
    if-eqz v11, :cond_9

    move v7, v9

    :goto_6
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_9

    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    invoke-virtual {p0, v10, v6, v12}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v7, v6

    goto :goto_6

    :goto_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_9
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_b

    sget-boolean v10, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active UID cleartext policies"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    move v10, v9

    :goto_8
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_b

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    add-int/2addr v10, v6

    goto :goto_8

    :cond_b
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkManagementService;->setFirewallEnabled(Z)V

    const-string v7, ""

    invoke-virtual {p0, v9, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v7, "standby "

    invoke-virtual {p0, v4, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v4, "dozable "

    invoke-virtual {p0, v6, v4}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v4, "powersave "

    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v3, "restricted "

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v2, "low power standby "

    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v1, "background"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "metered_allow"

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v0, "metered_deny_user"

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v0, "metered_deny_admin"

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    :cond_c
    const-string/jumbo v0, "fw_oem deny_1 "

    invoke-virtual {p0, v5, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    :goto_9
    if-ge v9, v5, :cond_e

    aget v1, v0, v9

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v1, v6}, Lcom/android/server/net/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    add-int/2addr v9, v6

    goto :goto_9

    :cond_e
    :try_start_5
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "makeBlockChildChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "makeVideoCallChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_f

    monitor-exit p0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_b

    :cond_f
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    const-string/jumbo v1, "batterystats"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    :try_start_a
    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :goto_b
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    :try_start_d
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_c
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public final prioritizeApp(ZI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prioritizeApp is called for uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " true"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final prioritizeMnxbApp(ZI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prioritizeApp is called for uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " true"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->prioritizeMnxbApp(ZI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final registerCloEventObserver(Landroid/net/ICloEventObserver;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    invoke-interface {p1, p0}, Lcom/android/internal/net/IOemNetd;->registerCloEventListener(Lcom/android/internal/net/INetdCloEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerNetdTetherEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    if-nez v0, :cond_0

    const-string v0, "Initializing NetdTetherEventListener"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    invoke-interface {v0, p0}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "registerNetdTetherEventListener failed "

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final removeChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removechain"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "iptype : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeInterfaceAlert(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final removeInterfaceQuota(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeLegacyRoute"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeMptcpLink(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removemptcplink"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksSkipRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksSkipRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeTosPolicy(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->removeTosPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error removeTosPolicy > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "removeUidFromChain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final replaceApeRule(Ljava/lang/String;II)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "replaceApeRule is called, interface name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from old bandwidthMbps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to new bandwidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final replaceMnxbRule(Ljava/lang/String;II)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "replaceMnxbRule is called, interface name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from old bandwidthMbps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to new bandwidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->replaceMnxbRule(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "runKnoxFirewallRulesCommand failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final runKnoxRulesCommand(I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "runKnoxRulesCommand failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAdvertiseWindowSize(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAdvertiseWindowSize is called, to set advertise window as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAdvertiseWindowSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setAllowHostAlone(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setAllowHostAlone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAllowHostAlone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setAllowListIPs(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setAllowListIPs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setAutoConf(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->interfaceSetAutoConf(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setBlockAllDNSPackets(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockAllDNSPackets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setBlockAllPackets()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockAllPackets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setBlockHostAlone(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockHostAlone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockHostAlone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setBlockListIPs(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockListIPs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBlockPorts, protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " directionBitMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setDataSaverModeEnabled(Z)Z
    .locals 6

    const-string/jumbo v0, "setDataSaverMode(): already "

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled_enforcePermission()V

    sget-boolean v1, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "setDataSaverMode: "

    invoke-static {v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    const-string/jumbo p1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string/jumbo v0, "setDataSaverModeEnabled"

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setDataSaverEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    :goto_1
    :try_start_5
    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): failed with exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setDestinationBasedMarkRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "setEpdgInterfaceDropRule"

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setFirewallChainEnabled(IZ)V
    .locals 5

    const-string v0, "Invalid chain for setFirewallChainEnabled: "

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v3

    if-ne v3, p2, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->setFirewallChainEnabled(IZ)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v1

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    :goto_1
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setFirewallEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setFirewallRuleMobileData(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setFirewallRuleWifi(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setFirewallUidRule(III)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setFirewallUidRules(I[I[I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    aget v5, p2, v4

    aget v6, p3, v4

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    const/4 v5, 0x0

    if-ltz v4, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_1

    invoke-virtual {p3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->replaceFirewallChain(I[I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_4
    const-string/jumbo p2, "NetworkManagement"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error flushing firewall chain "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setInterfaceAlert(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "iface "

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has alert"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setting alert requires existing quota on iface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, v0}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Null LinkAddress given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInterfaceDown(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public final setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "iface "

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has quota"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setInterfaceUp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public final setKnoxVpn(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "setKnoxVpn failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMptcpMtuValue(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setMptcpMtuValues"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setNetworkInfo(IZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "setNetworkInfo failed for chained vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setOnlyAllowIPs(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setOnlyAllowIPs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setOnlyAllowIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setPrivateIpRoute(ZLjava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setPrivateIpRoute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setQboxUid(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setQboxUid > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setTcpBufferSize"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "setUIDRoute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setUidCleartextNetworkPolicy(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    return-void

    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setUidOnMeteredNetworkAllowlist(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public final setUidOnMeteredNetworkDenylist(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public final setUidOnMeteredNetworkList(IZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p3, :cond_1

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_1
    const-string/jumbo v1, "inetd bandwidth"

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    :try_start_3
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkAllowList(I)V

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkAllowList(I)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkDenyList(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkDenyList(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :try_start_4
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_3

    :cond_5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_5
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p0

    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0
.end method

.method public final setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final shutdown()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown_enforcePermission()V

    const-string/jumbo p0, "NetworkManagement"

    const-string/jumbo v0, "Shutting down"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final spegRestrictNetworkConnection(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "SPEG"

    const-string/jumbo p2, "spegRestrictNetworkConnection Error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final startL4s(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startL4s(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error startL4s > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 3

    const-string/jumbo v0, "startNetworkStatsOnPorts iface:"

    const-string v1, " in:"

    const-string v2, " out:"

    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v0, p3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final startQbox(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error startQbox > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final startTosMarker(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startTosMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error startTosMarker > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final stopL4s(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopL4s(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error stopL4s > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 3

    const-string/jumbo v0, "stopNetworkStatsOnPorts iface:"

    const-string v1, " in:"

    const-string v2, " out:"

    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v0, p3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final stopQbox()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error stopQbox > "

    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final stopTosMarker(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopTosMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error stopTosMarker > "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final syncFirewallChainLocked(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pushing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active firewall "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "UID rules"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    :try_start_1
    invoke-virtual {v3, p1, v0, v1}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final unregisterCloEventObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterCloEventListener()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unregisterNetdTetherEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "unregisterNetdTetherEventListener failed "

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateDefaultGatewayForEpdg(Landroid/net/Network;)V
    .locals 5

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "updateDefaultGatewayForEpdg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Error getLinkProperties: "

    invoke-static {p1, v2, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const-string/jumbo p0, "linkProperties is empty"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "fe80"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Updating Route ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v2}, Lcom/android/server/net/NetworkManagementService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Exception in networkUpdateRouteParcel: "

    invoke-static {v2, v3, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final updateFirewallUidRuleLocked(III)Z
    .locals 9

    const-string/jumbo v0, "oldRule = "

    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    sget-boolean v5, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newRule="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for uid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on chain "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    if-ne v4, p3, :cond_2

    if-eqz v5, :cond_1

    const-string/jumbo p0, "NetworkManagement"

    const-string p1, "!!!!! Skipping change"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return v3

    :cond_2
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    xor-int/2addr v5, v0

    goto :goto_1

    :pswitch_1
    move v5, v0

    goto :goto_1

    :pswitch_2
    move v5, v3

    :goto_1
    const-string/jumbo v6, "deny"

    const-string/jumbo v7, "allow"

    const/4 v8, 0x2

    if-nez v5, :cond_4

    if-ne p3, v0, :cond_5

    :cond_3
    move-object v6, v7

    goto :goto_2

    :cond_4
    if-ne p3, v8, :cond_3

    :cond_5
    :goto_2
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    xor-int/lit8 v3, p0, 0x1

    goto :goto_3

    :pswitch_4
    move v3, v0

    :goto_3
    :pswitch_5
    const-string/jumbo p0, "deny"

    const-string/jumbo p1, "allow"

    if-nez v3, :cond_7

    if-ne v4, v0, :cond_8

    :cond_6
    move-object p0, p1

    goto :goto_4

    :cond_7
    if-ne v4, v8, :cond_6

    :cond_8
    :goto_4
    if-nez p3, :cond_9

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_5
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    monitor-exit v1

    return p0

    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final updateGroFlushTime(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateGroFlushTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateGroFlushTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final updateGroPshOption(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateGroPshOption: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->updateGroPshOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final updateInputFilterAppWideRules([III)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "updateInputFilterAppWideRules failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateInputFilterExemptRules(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "updateInputFilterExemptRules failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateInputFilterUserWideRules([III)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "updateInputFilterUserWideRules failed for vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "updateSourceRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
