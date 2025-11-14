.class public final Lcom/android/server/wm/MultiTaskingController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mEdgeUri:Landroid/net/Uri;

.field public final mExternalDesktopDensityUri:Landroid/net/Uri;

.field public final mFontScaleForExternalDesktopUri:Landroid/net/Uri;

.field public final mFreeformCaptionTypeUri:Landroid/net/Uri;

.field public final mMaxActiveTasksUri:Landroid/net/Uri;

.field public final mMinimalBatteryUseUri:Landroid/net/Uri;

.field public final mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

.field public final mNotificationBubbleUri:Landroid/net/Uri;

.field public final mSetupCompleteUri:Landroid/net/Uri;

.field public final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public final mSplitGestureUri:Landroid/net/Uri;

.field public final mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

.field public final mTaskbarStyleUri:Landroid/net/Uri;

.field public final mUriList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    const-string/jumbo p1, "navigation_bar_gesture_detail_type"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "floating_noti_package_list"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    const-string/jumbo p1, "notification_bubbles"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    :cond_0
    const-string/jumbo p1, "freeform_corner_gesture_level"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    const-string/jumbo p1, "minimal_battery_use"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_TYPE:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "freeform_caption_type"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    :cond_1
    const-string/jumbo p1, "open_in_split_screen_view"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    const-string/jumbo p1, "edge_enable"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    const-string/jumbo p1, "taskbar_style_type"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mTaskbarStyleUri:Landroid/net/Uri;

    const-string/jumbo p1, "font_scale_on_external_desktop_display"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFontScaleForExternalDesktopUri:Landroid/net/Uri;

    const-string/jumbo p1, "max_desktop_windowing_active_tasks"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMaxActiveTasksUri:Landroid/net/Uri;

    const-string/jumbo p1, "screen_zoom_on_external_desktop_display"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mExternalDesktopDensityUri:Landroid/net/Uri;

    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSetupCompleteUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    const-string/jumbo p0, "MultiTaskingController"

    const-string/jumbo p1, "SettingsObserver_onChange: uri is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final readSettings(ZLandroid/net/Uri;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v6, "navigation_bar_gesture_detail_type"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p1, :cond_3

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v6, "setting_changed"

    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v6, "setting_changed"

    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v8, 0x67

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    if-nez p1, :cond_5

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v6, "freeform_corner_gesture_level"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getCornerGestureCustomValue(I)I

    move-result v6

    iget-object v7, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    :try_start_0
    iget-object v8, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v11, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-string/jumbo v13, "corner_gesture_custom_value"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBoundsIfNeeded()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_7
    if-nez p1, :cond_8

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const-string/jumbo v5, "minimal_battery_use"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    :try_start_1
    iget-object v7, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    if-ne v5, v3, :cond_9

    move v5, v3

    goto :goto_2

    :cond_9
    move v5, v4

    :goto_2
    iput-boolean v5, v7, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_TYPE:Z

    if-eqz v5, :cond_d

    if-nez p1, :cond_b

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    const-string/jumbo v5, "freeform_caption_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v7, v6, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    :try_start_2
    iget v8, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    if-eq v8, v5, :cond_c

    iput v5, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_c
    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5

    :goto_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_d
    :goto_5
    if-nez p1, :cond_e

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v6, "open_in_split_screen_view"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_f

    move v6, v3

    goto :goto_6

    :cond_f
    move v6, v4

    :goto_6
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    :cond_10
    const/4 v5, -0x2

    if-nez p1, :cond_11

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_11
    const-string/jumbo v6, "edge_enable"

    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v3, :cond_12

    move v6, v3

    goto :goto_7

    :cond_12
    move v6, v4

    :goto_7
    iget-object v7, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    :try_start_4
    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v8, v8, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v8, v8, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v8, :cond_13

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-boolean v6, v8, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    :cond_13
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_14
    if-nez p1, :cond_15

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mTaskbarStyleUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_15
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v7, "taskbar_style_type"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_16

    move v7, v3

    goto :goto_8

    :cond_16
    move v7, v4

    :goto_8
    iput-boolean v7, v6, Lcom/android/server/wm/MultiTaskingController;->mIsTaskbarAutoHideStyle:Z

    :cond_17
    if-nez p1, :cond_18

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFontScaleForExternalDesktopUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_18
    const-string/jumbo v6, "font_scale_on_external_desktop_display"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/DexController;->updateFontScaleOnExternalDesktop(F)V

    const-string/jumbo v7, "MultiTaskingController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "SettingsObserver_readSettings: font_scale_dw="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-nez p1, :cond_1a

    const-string/jumbo v6, "mirror_built_in_display"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1a
    const-string/jumbo v6, "mirror_built_in_display"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1b

    goto :goto_9

    :cond_1b
    move v3, v4

    :goto_9
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/DexController;->mirrorBuiltInDisplaySettingChanged(Z)V

    :cond_1c
    if-nez p1, :cond_1d

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMaxActiveTasksUri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00f1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v6, "persist.wm.debug.desktop_max_task_limit"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "max_desktop_windowing_active_tasks"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0xf

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_1e

    iget v7, v6, Lcom/android/server/wm/FreeformController;->mMaxActiveTasks:I

    if-eq v3, v7, :cond_1e

    iput v3, v6, Lcom/android/server/wm/FreeformController;->mMaxActiveTasks:I

    invoke-virtual {v6}, Lcom/android/server/wm/FreeformController;->updateActiveFreeformRootTasks()V

    :cond_1e
    if-nez p1, :cond_1f

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mExternalDesktopDensityUri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_1f
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v6, "screen_zoom_on_external_desktop_display"

    const/16 v7, 0xa0

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget v3, v3, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    if-ge v3, v7, :cond_20

    const-string/jumbo v3, "MultiTaskingController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SettingsObserver_readSettings: wrong density="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget v8, v8, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    invoke-static {v6, v8, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iput v7, v3, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    :cond_20
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget v3, v3, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    invoke-virtual {v6, v3}, Lcom/android/server/wm/DexController;->setDisplayDensityInExternalDesktop(I)V

    :cond_21
    if-eqz p1, :cond_23

    const-string/jumbo v3, "dex_on_external_display"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    if-eqz v3, :cond_22

    iget v3, v6, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_23

    iget-object v3, v6, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dex_on_external_display"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_a

    :cond_22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_23
    :goto_a
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v2, v0, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/samsung/android/knox/dex/DexManager;->getInstance()Lcom/samsung/android/knox/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dex/DexManager;->isDexDisabled()Z

    move-result v0

    const-string/jumbo v1, "mirror_built_in_display"

    invoke-static {v2, v1, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_24
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_b
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SettingsObserver{mUriList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
