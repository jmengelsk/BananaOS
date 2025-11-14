.class public final Lcom/android/server/net/NetworkPolicyLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final LOGD:Z

.field public static final MAX_LOG_SIZE:I

.field public static final MAX_NETWORK_BLOCKED_LOG_SIZE:I


# instance fields
.field public mDebugUid:I

.field public final mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field public final mLock:Ljava/lang/Object;

.field public final mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field public final mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "NetworkPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x190

    const/16 v2, 0x64

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    sput v0, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_20

    move v1, v2

    :cond_20
    sput v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getFirewallChainName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_30

    :pswitch_3  #0x8, 0x9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8  #0xc
    const-string/jumbo p0, "metered_deny_admin"

    return-object p0

    :pswitch_c  #0xb
    const-string/jumbo p0, "metered_deny_user"

    return-object p0

    :pswitch_10  #0xa
    const-string/jumbo p0, "metered_allow"

    return-object p0

    :pswitch_14  #0x7
    const-string/jumbo p0, "fw_oem_deny_1"

    return-object p0

    :pswitch_18  #0x6
    const-string/jumbo p0, "background"

    return-object p0

    :pswitch_1c  #0x5
    const-string/jumbo p0, "low_power_standby"

    return-object p0

    :pswitch_20  #0x4
    const-string/jumbo p0, "restricted"

    return-object p0

    :pswitch_24  #0x3
    const-string/jumbo p0, "powersave"

    return-object p0

    :pswitch_28  #0x2
    const-string/jumbo p0, "standby"

    return-object p0

    :pswitch_2c  #0x1
    const-string/jumbo p0, "dozable"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_28  #00000002
        :pswitch_24  #00000003
        :pswitch_20  #00000004
        :pswitch_1c  #00000005
        :pswitch_18  #00000006
        :pswitch_14  #00000007
        :pswitch_3  #00000008
        :pswitch_3  #00000009
        :pswitch_10  #0000000a
        :pswitch_c  #0000000b
        :pswitch_8  #0000000c
    .end packed-switch
.end method

.method public static getPolicyChangedLog(III)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "Policy for "

    const-string v1, " changed from "

    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "temp-power-save whitelist for "

    const-string v1, " changed to: "

    const-string v2, "; reason="

    invoke-static {p0, v0, v1, v2, p3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUidFirewallRuleChangedLog(III)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1d

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_20

    :cond_15
    const-string/jumbo p2, "deny"

    goto :goto_20

    :cond_19
    const-string/jumbo p2, "allow"

    goto :goto_20

    :cond_1d
    const-string/jumbo p2, "default"

    :goto_20
    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Firewall rule changed: %d-%s-%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final appIdleStateChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_2a

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_46

    :cond_e
    :goto_e
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App idle state of uid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_44

    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_c

    throw p0
.end method

.method public final appIdleWlChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_2a

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_46

    :cond_e
    :goto_e
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App idle whitelist state of uid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_44

    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_c

    throw p0
.end method

.method public final deviceIdleModeEnabled(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_3c

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceIdleMode enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_2c

    goto :goto_3a

    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_d

    throw p0
.end method

.method public final dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mEventLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mNetworkBlockedLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mUidStateChangeLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final firewallChainEnabled(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_4b

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firewall chain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_38

    goto :goto_49

    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_d

    throw p0
.end method

.method public final firewallRulesChanged(I[I[I)V
    .registers 7

    const-string v0, "Firewall rules changed for "

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; uids="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; rules="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez p2, :cond_39

    iget p2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3f

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_55

    :cond_39
    :goto_39
    const-string/jumbo p2, "NetworkPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_48

    goto :goto_53

    :cond_48
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_53
    monitor-exit v1

    return-void

    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_37

    throw p0
.end method

.method public final interfacesChanged(ILandroid/util/ArraySet;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_4c

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    invoke-virtual {p2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interfaces of netId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_4a

    :cond_3c
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_d

    throw p0
.end method

.method public final meteredAllowlistChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne v1, p1, :cond_2b

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_47

    :cond_e
    :goto_e
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "metered-allowlist for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_45

    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_c

    throw p0
.end method

.method public final meteredDenylistChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne v1, p1, :cond_2b

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_47

    :cond_e
    :goto_e
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "metered-denylist for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_45

    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_c

    throw p0
.end method

.method public final meteredRestrictedPkgsChanged(Ljava/util/Set;)V
    .registers 6

    const-string/jumbo v0, "Metered restricted uids: "

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_3a

    :cond_1e
    :goto_1e
    const-string/jumbo v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_38

    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_38
    monitor-exit v1

    return-void

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_1c

    throw p0
.end method

.method public final meterednessChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_47

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Meteredness of netId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_45

    :cond_35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_d

    throw p0
.end method

.method public final networkBlocked(ILcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .registers 8

    const-string v0, "Blocked state of "

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v2, :cond_10

    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v2, :cond_2a

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_6e

    :cond_10
    :goto_10
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4b

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_37

    goto :goto_6c

    :cond_37
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    goto :goto_6c

    :cond_4b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    iget v3, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v4, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p2, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_5a

    goto :goto_6c

    :cond_5a
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput v3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput v4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_6c
    monitor-exit v1

    return-void

    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_e

    throw p0
.end method

.method public final paroleStateChanged(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_3e

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parole state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_3c

    :cond_2d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_d

    throw p0
.end method

.method public final restrictBackgroundChanged(ZZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_46

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changed restrictBackground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_44

    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_d

    throw p0
.end method

.method public final roamingChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_48

    :cond_f
    :goto_f
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Roaming of netId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_46

    :cond_35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_d

    throw p0
.end method

.method public final tempPowerSaveWlChanged(IILjava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne p1, v1, :cond_18

    const-string/jumbo v1, "NetworkPolicy"

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_35

    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_33

    :cond_21
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput-boolean p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_16

    throw p0
.end method

.method public final uidFirewallRuleChanged(III)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p2, v1, :cond_14

    const-string/jumbo v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_32

    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_30

    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_12

    throw p0
.end method

.method public final uidPolicyChanged(III)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_14

    const-string/jumbo v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_31

    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_2f

    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_12

    throw p0
.end method

.method public final uidStateChanged(IIIJ)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_3e

    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",cap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_5d

    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_47

    goto :goto_5b

    :cond_47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iput-wide p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    :goto_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_3c

    throw p0
.end method
