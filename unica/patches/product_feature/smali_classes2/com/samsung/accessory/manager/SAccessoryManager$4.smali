.class public final Lcom/samsung/accessory/manager/SAccessoryManager$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

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

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
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

    :goto_1
    if-ge v10, v7, :cond_9

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v12, :cond_7

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

    if-nez v14, :cond_1

    move-wide v14, v8

    goto :goto_2

    :cond_1
    iget-wide v14, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    sub-long v14, v12, v14

    :goto_2
    sget-boolean v17, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    const-string/jumbo v4, "SAccessoryManager_CoverAuthenticator"

    if-eqz v17, :cond_5

    iget-object v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    goto :goto_4

    :cond_2
    iget v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-nez v8, :cond_5

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_3

    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_5

    :cond_3
    const-string/jumbo v8, "Power connected, source = "

    invoke-static {v5, v8, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/32 v8, 0x5265c00

    cmp-long v8, v14, v8

    if-lez v8, :cond_6

    :cond_4
    :goto_3
    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    iget v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_6

    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_6

    const-string v8, "A wireless power source is disconnected"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_5
    const-string/jumbo v9, "plugType = "

    invoke-static {v5, v9, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-eqz v8, :cond_8

    sget-boolean v8, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-eqz v8, :cond_8

    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_8

    const-string v8, "It will be verified soon"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const/4 v4, 0x3

    iput v4, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    goto :goto_6

    :cond_7
    move-object/from16 v16, v9

    :cond_8
    :goto_6
    move-object/from16 v9, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v9

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "File read fail "

    const-string/jumbo v0, "wpc auth  mode = "

    const/16 v5, 0x400

    new-array v7, v5, [C

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "sys/class/power_supply/battery/wpc_auth_mode"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v9, v7, v8, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, v16

    :try_start_3
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v8, v9

    goto :goto_c

    :catch_0
    move-exception v0

    :goto_7
    move v7, v8

    move-object v8, v9

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v5, v16

    move-object v8, v9

    :goto_8
    const/4 v7, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_8

    :goto_9
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_a

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_a
    move v8, v7

    :catch_5
    :goto_a
    const/4 v0, 0x2

    if-eqz v8, :cond_b

    if-ne v8, v0, :cond_c

    :cond_b
    const/4 v8, 0x0

    goto :goto_b

    :cond_c
    const-string/jumbo v0, "do not auth wireless charging"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :goto_b
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_d

    :cond_d
    const/4 v9, 0x1

    if-nez v6, :cond_f

    iget-object v1, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-boolean v2, v1, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    if-ne v2, v9, :cond_f

    invoke-static {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_d

    :goto_c
    if-eqz v8, :cond_e

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_e
    throw v0

    :cond_f
    :goto_d
    return-void

    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

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

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
