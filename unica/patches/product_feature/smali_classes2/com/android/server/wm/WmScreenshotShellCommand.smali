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
    .locals 1

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
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Unknown Command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
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
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

    aget-object v4, p2, v7

    if-nez v4, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v8, "Failed to screenshot"

    const-string v9, "Error : display is null"

    const/4 v10, 0x1

    const-string v11, "Error"

    const/4 v12, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v13, "window_type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    const/4 v12, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v13, "focused_task"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    :cond_2
    move v12, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v13, "fullscreen"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    move v12, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v13, "rotation"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_0

    :cond_4
    const/4 v12, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v13, "target_window"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_0
    packed-switch v12, :pswitch_data_0

    invoke-static {v1, v4}, Lcom/android/server/wm/WmScreenshotShellCommand;->runDefaultCommands(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "windowType:"

    const-string/jumbo v2, "focusedWindow:"

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1
    const-string/jumbo v0, "Success screenshot, focused task="

    :try_start_1
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v4, v6, v1, v2}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    :goto_1
    const-string v0, "Error : focused task is null or invisible"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :goto_2
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_2
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v5

    move v5, v10

    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_3
    move v5, v10

    :try_start_3
    iget-boolean v2, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    if-eqz v2, :cond_a

    iput-boolean v7, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    const-string/jumbo v0, "Turn off the screenshot rotation layer"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_a
    iput-boolean v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    const-string/jumbo v0, "Turn on the screenshot rotation layer"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_a

    :goto_3
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_4
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

    if-eqz v14, :cond_b

    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    :goto_4
    aget-object v14, p2, v3

    if-eqz v14, :cond_c

    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    :goto_5
    aget-object v2, p2, v2

    if-eqz v2, :cond_d

    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_d

    iput-boolean v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mIgnorePolicy:Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-static {v1, v0, v15}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    :goto_6
    :try_start_7
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    invoke-virtual {v2, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_7
    move-exception v0

    goto/16 :goto_9

    :cond_e
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

    if-eqz v5, :cond_10

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    :goto_7
    and-int/2addr v3, v5

    if-eqz v3, :cond_11

    const-string/jumbo v3, "Target window type was not found"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Success screenshot full screen"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const-string/jumbo v3, "Success screenshot"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    iget-object v3, v10, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    invoke-virtual {v2}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v0, v0, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :goto_9
    invoke-static {v1, v0, v11}, Lcom/android/server/wm/WmScreenshotShellCommand;->printErrorMessage(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67694da2 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        0x68f7bbb -> :sswitch_2
        0x14b0f54d -> :sswitch_1
        0x72216229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
