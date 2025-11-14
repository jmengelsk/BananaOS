.class public final Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStatesChanged(Ljava/util/List;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "VZW-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "ATT"

    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v0, "TMO"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "activevideo"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "epdg"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    const-string/jumbo v1, "NetworkPolicy"

    const-string/jumbo v3, "onCallStatesChanged - hasVideoCall: "

    const-string v4, ", hasActiveVideoCall: "

    const-string v5, ", mHasEpdgCall: "

    invoke-static {v3, p1, v4, v0, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    invoke-static {v1, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eq v1, p1, :cond_3

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    const-string/jumbo p1, "NetworkPolicy"

    const-string/jumbo v0, "Video call start."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    const-string/jumbo p1, "NetworkPolicy"

    const-string/jumbo v0, "Video call end."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    return-void
.end method
