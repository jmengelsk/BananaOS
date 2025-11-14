.class public final Lcom/samsung/accessory/manager/SAccessoryManager$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .registers 3

    iput p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_1c2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string/jumbo v3, "misc_event"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "sec_plug_type"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x40

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    move v6, v4

    :goto_31
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", misc_event: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", plug event: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "SAccessoryManager_SAccessoryManager"

    invoke-static {v7, v5, v9}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v4

    :goto_5c
    if-ge v10, v7, :cond_fe

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v12, :cond_f7

    const-string/jumbo v12, "batteryChanged: "

    invoke-static {v5, v12, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    move-object/from16 v16, v9

    const-wide/16 v8, 0x0

    cmp-long v14, v14, v8

    if-nez v14, :cond_85

    move-wide v14, v8

    goto :goto_89

    :cond_85
    iget-wide v14, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    sub-long v14, v12, v14

    :goto_89
    sget-boolean v17, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    const-string/jumbo v4, "SAccessoryManager_CoverAuthenticator"

    if-eqz v17, :cond_b7

    iget-object v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v8, :cond_9c

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_9c

    goto :goto_b7

    :cond_9c
    iget v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-nez v8, :cond_b7

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_a8

    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_b7

    :cond_a8
    const-string/jumbo v8, "Power connected, source = "

    invoke-static {v5, v8, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/32 v8, 0x5265c00

    cmp-long v8, v14, v8

    if-lez v8, :cond_d1

    :cond_b5
    :goto_b5
    const/4 v8, 0x1

    goto :goto_d2

    :cond_b7
    :goto_b7
    iget v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d1

    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_d1

    const-string v8, "A wireless power source is disconnected"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v8, :cond_b5

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v8

    if-nez v8, :cond_d1

    goto :goto_b5

    :cond_d1
    const/4 v8, 0x0

    :goto_d2
    const-string/jumbo v9, "plugType = "

    invoke-static {v5, v9, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-eqz v8, :cond_f9

    sget-boolean v8, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-eqz v8, :cond_f9

    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_f9

    const-string v8, "It will be verified soon"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const/4 v4, 0x3

    iput v4, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    goto :goto_f9

    :cond_f7
    move-object/from16 v16, v9

    :cond_f9
    :goto_f9
    move-object/from16 v9, v16

    const/4 v4, 0x0

    goto/16 :goto_5c

    :cond_fe
    move-object/from16 v16, v9

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "File read fail "

    const-string/jumbo v0, "wpc auth  mode = "

    const/16 v5, 0x400

    new-array v7, v5, [C

    const/4 v8, 0x0

    :try_start_10f
    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "sys/class/power_supply/battery/wpc_auth_mode"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_117} :catch_151
    .catchall {:try_start_10f .. :try_end_117} :catchall_14f

    const/4 v8, 0x0

    :try_start_118
    invoke-virtual {v9, v7, v8, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_129} :catch_149
    .catchall {:try_start_118 .. :try_end_129} :catchall_13e

    :try_start_129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_135} :catch_145
    .catchall {:try_start_129 .. :try_end_135} :catchall_13e

    move-object/from16 v5, v16

    :try_start_137
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_141
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13e

    :try_start_13a
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_16a

    goto :goto_16a

    :catchall_13e
    move-exception v0

    move-object v8, v9

    goto :goto_195

    :catch_141
    move-exception v0

    :goto_142
    move v7, v8

    move-object v8, v9

    goto :goto_155

    :catch_145
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_142

    :catch_149
    move-exception v0

    move-object/from16 v5, v16

    move-object v8, v9

    :goto_14d
    const/4 v7, 0x0

    goto :goto_155

    :catchall_14f
    move-exception v0

    goto :goto_195

    :catch_151
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_14d

    :goto_155
    :try_start_155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_155 .. :try_end_164} :catchall_14f

    if-eqz v8, :cond_169

    :try_start_166
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_169

    :catch_169
    :cond_169
    move v8, v7

    :catch_16a
    :goto_16a
    const/4 v0, 0x2

    if-eqz v8, :cond_16f

    if-ne v8, v0, :cond_171

    :cond_16f
    const/4 v8, 0x0

    goto :goto_178

    :cond_171
    const-string/jumbo v0, "do not auth wireless charging"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    :goto_178
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_188

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_19b

    :cond_188
    const/4 v9, 0x1

    if-nez v6, :cond_19b

    iget-object v1, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-boolean v2, v1, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    if-ne v2, v9, :cond_19b

    invoke-static {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_19b

    :goto_195
    if-eqz v8, :cond_19a

    :try_start_197
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19a

    :catch_19a
    :cond_19a
    throw v0

    :cond_19b
    :goto_19b
    return-void

    :pswitch_19c  #0x0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v2, v2, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c0
    return-void

    nop

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_19c  #00000000
    .end packed-switch
.end method
