.class public final Lcom/android/server/wm/WmScreenshotShellCommand;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mController:Lcom/android/server/wm/WmScreenshotController;

.field public mDisplayId:I

.field public mIgnorePolicy:Z

.field public mScreenshotRotationLayer:Z

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mWindowType:I


# direct methods
.method public static printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-------------------"

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Reason : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_c

    const-string/jumbo v0, "Unknown Command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo p1, "Screenshot Commands:"

    const-string v0, "  fullscreen"

    const-string v1, "    Return take screenshot current window of full screen."

    const-string v2, "  window_type"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    Return the current window type."

    const-string v0, "  target_window [WindowType] [DisplayId]"

    const-string v1, "    Return take screenshot of target window and save screenshot."

    const-string v2, "  focused_task"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "    Return take screenshot of top focused task and save screenshot."

    const-string v0, "  rotation"

    const-string v1, "    Turn on the option, take screenshot of rotation layer and save screenshot."

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final exec(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

    aget-object v4, p2, v7

    if-nez v4, :cond_10

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v8, "Failed to screenshot"

    const-string v9, "Error : display is null"

    const/4 v10, 0x1

    const-string v11, "Error"

    const/4 v12, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1fa

    goto :goto_5f

    :sswitch_24
    const-string/jumbo v13, "window_type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2e

    goto :goto_5f

    :cond_2e
    const/4 v12, 0x4

    goto :goto_5f

    :sswitch_30
    const-string/jumbo v13, "focused_task"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3a

    goto :goto_5f

    :cond_3a
    move v12, v2

    goto :goto_5f

    :sswitch_3c
    const-string/jumbo v13, "fullscreen"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_46

    goto :goto_5f

    :cond_46
    move v12, v3

    goto :goto_5f

    :sswitch_48
    const-string/jumbo v13, "rotation"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_52

    goto :goto_5f

    :cond_52
    const/4 v12, 0x1

    goto :goto_5f

    :sswitch_54
    const-string/jumbo v13, "target_window"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v12, 0x0

    :goto_5f
    packed-switch v12, :pswitch_data_210

    invoke-static {v1, v4}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_66  #0x4
    const-string/jumbo v0, "windowType:"

    const-string/jumbo v2, "focusedWindow:"

    :try_start_6c
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_96} :catch_98

    goto/16 :goto_1f9

    :catch_98
    move-exception v0

    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :pswitch_9e  #0x3
    const-string/jumbo v0, "Success screenshot, focused task="

    :try_start_a1
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_b0

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    :catch_ae
    move-exception v0

    goto :goto_e7

    :cond_b0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_e0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v6

    if-nez v6, :cond_bd

    goto :goto_e0

    :cond_bd
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_db

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v4, v6, v1, v2}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V

    goto/16 :goto_1f9

    :cond_db
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_e0
    :goto_e0
    const-string v0, "Error : focused task is null or invisible"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e5} :catch_ae

    goto/16 :goto_1f9

    :goto_e7
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :pswitch_ec  #0x2
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v5

    move v5, v10

    :try_start_f1
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_1f9

    :catch_f6
    move-exception v0

    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :pswitch_fc  #0x1
    move v5, v10

    :try_start_fd
    iget-boolean v2, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    if-eqz v2, :cond_10d

    iput-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    const-string/jumbo v0, "Turn off the screenshot rotation layer"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    :catch_10b
    move-exception v0

    goto :goto_117

    :cond_10d
    iput-boolean v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    const-string/jumbo v0, "Turn on the screenshot rotation layer"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_115} :catch_10b

    goto/16 :goto_1f9

    :goto_117
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :pswitch_11c  #0x0
    move/from16 v24, v10

    move-object v10, v5

    move/from16 v5, v24

    const-string/jumbo v12, "Window_Name:"

    const-string v13, "FailedReason:"

    iput v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    const/16 v14, 0x7df

    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    iput-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z

    aget-object v14, p2, v5

    const-string/jumbo v15, "Number_Format_Error"

    if-eqz v14, :cond_142

    :try_start_135
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I
    :try_end_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_135 .. :try_end_13b} :catch_13c

    goto :goto_142

    :catch_13c
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_142
    :goto_142
    aget-object v14, p2, v3

    if-eqz v14, :cond_153

    :try_start_146
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I
    :try_end_14c
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_14c} :catch_14d

    goto :goto_153

    :catch_14d
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_153
    :goto_153
    aget-object v2, p2, v2

    if-eqz v2, :cond_166

    :try_start_157
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_166

    iput-boolean v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_157 .. :try_end_15f} :catch_160

    goto :goto_166

    :catch_160
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_166
    :goto_166
    :try_start_166
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    invoke-virtual {v2, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_178

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    :catch_175
    move-exception v0

    goto/16 :goto_1f6

    :cond_178
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    iget v15, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    iget v6, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v17, 0x1

    move/from16 v20, v2

    move/from16 v19, v5

    move/from16 v16, v6

    move/from16 v22, v7

    move-object/from16 v18, v9

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/wm/WmScreenshotController;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getFailedReason()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getTargetWindowName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1c5

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1ae

    goto :goto_1c5

    :cond_1ae
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f9

    :cond_1c5
    :goto_1c5
    and-int/2addr v3, v5

    if-eqz v3, :cond_1d5

    const-string/jumbo v3, "Target window type was not found"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Success screenshot full screen"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ea

    :cond_1d5
    const-string/jumbo v3, "Success screenshot"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1ea
    iget-object v3, v10, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v0, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_1f5} :catch_175

    goto :goto_1f9

    :goto_1f6
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1f9
    return-void

    :sswitch_data_1fa
    .sparse-switch
        -0x67694da2 -> :sswitch_54
        -0x266f082 -> :sswitch_48
        0x68f7bbb -> :sswitch_3c
        0x14b0f54d -> :sswitch_30
        0x72216229 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_11c  #00000000
        :pswitch_fc  #00000001
        :pswitch_ec  #00000002
        :pswitch_9e  #00000003
        :pswitch_66  #00000004
    .end packed-switch
.end method
