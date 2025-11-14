.class public final Lcom/android/server/usb/UsbUI$6;
.super Landroid/os/UEventObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUI;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/usb/UsbUI$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ACTION"

    const/4 v3, -0x1

    const-string v4, "ADD"

    const-string/jumbo v5, "STATE"

    const-string/jumbo v6, "REMOVE"

    const/4 v7, 0x2

    const-string/jumbo v8, "UsbUI"

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget v11, v0, Lcom/android/server/usb/UsbUI$6;->$r8$classId:I

    packed-switch v11, :pswitch_data_396

    const-string/jumbo v2, "SWITCH_STATE"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CCIC"

    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    goto/16 :goto_a4

    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onUEvent(USB CCIC): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "115"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v2, v1, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v2, :cond_5e

    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const v4, 0x104105f

    iput v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5e
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const v14, 0x104105f

    const-wide/16 v15, 0xe

    const/16 v12, 0x6c

    const v13, 0x1041060

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_7d

    :cond_6e
    const-string v1, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    :cond_7d
    :goto_7d
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    const-string/jumbo v2, "WATER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iput-boolean v10, v2, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    goto :goto_9b

    :cond_8f
    const-string v2, "DRY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iput-boolean v9, v2, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    :cond_9b
    :goto_9b
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v2, v0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    if-eq v2, v1, :cond_a4

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    :cond_a4
    :goto_a4
    return-void

    :pswitch_a5  #0x2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onUEvent(USB Control): "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "TYPE"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "usberr"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "WORDS"

    if-eqz v11, :cond_11d

    invoke-virtual {v1, v12}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "abnormal_reset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    goto/16 :goto_1e5

    :cond_e0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v2, v1, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v2, :cond_fd

    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const v3, 0x104100b

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_fd
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const v7, 0x1041009

    const-wide/16 v8, 0xc

    const/16 v5, 0x6d

    const v6, 0x104100a

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto/16 :goto_1e5

    :cond_10e
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    goto/16 :goto_1e5

    :cond_11d
    const-string/jumbo v6, "usbrestrict"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    invoke-virtual {v1, v12}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3a0

    goto :goto_158

    :sswitch_135
    const-string/jumbo v2, "timesecurerestrict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    goto :goto_158

    :cond_13f
    move v3, v7

    goto :goto_158

    :sswitch_141
    const-string/jumbo v2, "securerestrict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    goto :goto_158

    :cond_14b
    move v3, v10

    goto :goto_158

    :sswitch_14d
    const-string/jumbo v2, "securerelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_157

    goto :goto_158

    :cond_157
    move v3, v9

    :goto_158
    packed-switch v3, :pswitch_data_3ae

    goto/16 :goto_1e5

    :pswitch_15d  #0x2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    const-string/jumbo v1, "onUEvent(USB Control): Show USB BLK Notification"

    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v1, v10}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const-string/jumbo v2, "ON"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v1

    if-eq v1, v10, :cond_18a

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v1

    if-ne v1, v7, :cond_1e5

    :cond_18a
    const-string/jumbo v1, "Show USB BLK Toast on call"

    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v1, :cond_1e5

    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const v2, 0x104105a

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e5

    :pswitch_1a8  #0x1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    const-string/jumbo v1, "onUEvent(USB Control): Show USB BLK Toast"

    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v1, :cond_1e5

    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const v2, 0x1041059

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e5

    :pswitch_1cc  #0x0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    const-string/jumbo v1, "onUEvent(USB Control): Cancel USB BLK Notification"

    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const-string/jumbo v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    :cond_1e5
    :goto_1e5
    return-void

    :pswitch_1e6  #0x1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onUEvent(Host Interface): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTERFACE"

    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WARNING"

    invoke-virtual {v1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unsupport_accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_223

    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x72

    const v13, 0x104105c

    const v14, 0x104105b

    const-wide/16 v15, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto/16 :goto_2d2

    :cond_223
    const-string/jumbo v5, "no_response"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23d

    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x73

    const v13, 0x104103d

    const v14, 0x104103c

    const-wide/16 v15, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto/16 :goto_2d2

    :cond_23d
    const-string/jumbo v5, "hub_depth_exceed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_257

    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x74

    const v13, 0x104102c

    const v14, 0x104102b

    const-wide/16 v15, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto/16 :goto_2d2

    :cond_257
    const-string/jumbo v5, "hub_power_exceed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_270

    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x75

    const v13, 0x104103d

    const v14, 0x104102d

    const-wide/16 v15, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_2d2

    :cond_270
    const-string/jumbo v5, "host_resource_exceed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_289

    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v12, 0x76

    const v13, 0x104102a

    const v14, 0x1041029

    const-wide/16 v15, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_2d2

    :cond_289
    :try_start_289
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v9

    aget-object v5, v3, v10

    aget-object v3, v3, v7

    if-eqz v4, :cond_2d2

    if-eqz v5, :cond_2d2

    if-nez v3, :cond_29c

    goto :goto_2d2

    :cond_29c
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(IIILjava/lang/String;)V
    :try_end_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_289 .. :try_end_2ad} :catch_2c1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_289 .. :try_end_2ad} :catch_2ae

    goto :goto_2d2

    :catch_2ae
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ArrayIndexOutOfBoundsException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d2

    :catch_2c1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse state or devPath from event "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d2
    :goto_2d2
    return-void

    :pswitch_2d3  #0x0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onUEvent(Host Path): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "remove"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0x71

    const/16 v11, 0x70

    if-eqz v5, :cond_304

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v0, v11}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    invoke-virtual {v0, v8}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    goto/16 :goto_394

    :cond_304
    const-string/jumbo v5, "change"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_394

    if-eqz v1, :cond_394

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3b8

    goto :goto_337

    :sswitch_317
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_321

    goto :goto_337

    :cond_321
    move v3, v7

    goto :goto_337

    :sswitch_323
    const-string/jumbo v2, "OVERCURRENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32d

    goto :goto_337

    :cond_32d
    move v3, v10

    goto :goto_337

    :sswitch_32f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_336

    goto :goto_337

    :cond_336
    move v3, v9

    :goto_337
    packed-switch v3, :pswitch_data_3c6

    goto :goto_371

    :pswitch_33b  #0x2
    iget-object v12, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v13, 0x71

    const v14, 0x1041024

    const/4 v15, 0x0

    const v16, 0x1080c13

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    goto :goto_371

    :pswitch_350  #0x1
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v22, 0x70

    const v23, 0x1041028

    const v24, 0x1041027

    const v25, 0x1080c12

    const/16 v26, 0x0

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    goto :goto_371

    :pswitch_369  #0x0
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v2, v11}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    invoke-virtual {v2, v8}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    :goto_371
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_394

    :cond_37d
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    if-nez v1, :cond_394

    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    if-eqz v1, :cond_394

    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    :cond_394
    :goto_394
    return-void

    nop

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_2d3  #00000000
        :pswitch_1e6  #00000001
        :pswitch_a5  #00000002
    .end packed-switch

    :sswitch_data_3a0
    .sparse-switch
        -0x54bab750 -> :sswitch_14d
        -0x35cf50cd -> :sswitch_141
        0x70a39740 -> :sswitch_135
    .end sparse-switch

    :pswitch_data_3ae
    .packed-switch 0x0
        :pswitch_1cc  #00000000
        :pswitch_1a8  #00000001
        :pswitch_15d  #00000002
    .end packed-switch

    :sswitch_data_3b8
    .sparse-switch
        -0x7022137c -> :sswitch_32f
        -0x523741fb -> :sswitch_323
        0x19d1382a -> :sswitch_317
    .end sparse-switch

    :pswitch_data_3c6
    .packed-switch 0x0
        :pswitch_369  #00000000
        :pswitch_350  #00000001
        :pswitch_33b  #00000002
    .end packed-switch
.end method
