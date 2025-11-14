.class public Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo v0, "USER_SWITCHED isNetworkGranted "

    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-object v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    goto :goto_20

    :cond_1f
    move p1, v3

    :goto_20
    const-string/jumbo v2, "TipsManagerService"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_175

    if-nez p1, :cond_175

    iget-object v6, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean v6, v6, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-nez v6, :cond_30

    goto/16 :goto_175

    :cond_30
    :try_start_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean v6, v1, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    if-nez v6, :cond_4d

    iget-boolean v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    if-nez v1, :cond_4d

    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    goto/16 :goto_174

    :cond_4d
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    if-eqz v1, :cond_ba

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_174

    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_174

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v3, p1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    iget p2, p1, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_77} :catch_16d

    const/4 v0, 0x5

    const-string/jumbo v1, "tips_trigger_count"

    if-ne p2, v0, :cond_a8

    :try_start_7d
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    const-string/jumbo p1, "[GalaxyTips]TIPS Activitation!! WAKE UP"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-static {p1, v1, p2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    if-nez p2, :cond_a2

    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    const p2, 0xea60

    const/16 v0, 0x2711

    invoke-static {p1, v0, p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;II)V

    :cond_a2
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    goto/16 :goto_174

    :cond_a8
    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget p2, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    add-int/2addr p2, v5

    iput p2, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    invoke-static {p1, v1, p2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_174

    :cond_ba
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_be} :catch_16d

    const-string/jumbo v1, "gtips_network_granted"

    if-nez p2, :cond_db

    :try_start_c3
    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_db

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_174

    :cond_db
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    if-eqz p2, :cond_111

    const-string/jumbo p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_111

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p2, "com.samsung.android.app.tips"

    const-string/jumbo v0, "com.samsung.android.app.tips.TipsIntentService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "tips_extras"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_fe} :catch_16d

    :try_start_fe
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_107} :catch_108

    goto :goto_174

    :catch_108
    :try_start_108
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    const-string/jumbo p0, "[GalaxyTips] Fail to send MSG_NEW_DATA_UPDATED intent to Tips."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    :cond_111
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    if-eqz p2, :cond_14d

    const-string/jumbo p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14d

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v5, :cond_133

    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v5, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    goto :goto_137

    :cond_133
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v3, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    :goto_137
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    :cond_14d
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    if-eqz p2, :cond_174

    const-string/jumbo p2, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_174

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-eqz p1, :cond_174

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    const p1, 0x1d4c0

    const/16 p2, 0x2714

    invoke-static {p0, p2, p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;II)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_16c} :catch_16d

    goto :goto_174

    :catch_16d
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    const-string p0, "Fail to send intent to Tips."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    :goto_174
    return-void

    :cond_175
    :goto_175
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[GalaxyTips] Got a "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". But can\'t perform.(completeSetupWizard= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EmergencyMode= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " TipsExist= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
