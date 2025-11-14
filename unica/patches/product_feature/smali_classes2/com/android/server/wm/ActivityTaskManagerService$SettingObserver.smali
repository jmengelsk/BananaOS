.class public final Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFontScaleUri:Landroid/net/Uri;

.field public final mFontWeightAdjustmentUri:Landroid/net/Uri;

.field public final mGestureHintUri:Landroid/net/Uri;

.field public final mHideErrorDialogsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "font_scale"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    const-string/jumbo v1, "hide_error_dialogs"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    const-string/jumbo v2, "font_weight_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    const-string/jumbo v3, "navigation_bar_gesture_hint"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mGestureHintUri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v0, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v5, v1, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v5, v2, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v5, v4, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4d

    move v6, v0

    :cond_4d
    iput-boolean v6, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGesutreHintOn:Z

    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .registers 8

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    goto :goto_4

    :cond_1e
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_46

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p3

    :try_start_2f
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldShowDialogs(Landroid/content/res/Configuration;Z)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    monitor-exit p3
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit p3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_46
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_95

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p3

    if-eq p4, p3, :cond_5a

    goto :goto_4

    :cond_5a
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "font_weight_adjustment"

    const v2, 0x7fffffff

    invoke-static {p3, v0, v2, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    iget-object v2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_70
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne v0, p3, :cond_7f

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4

    :catchall_7d
    move-exception p0

    goto :goto_90

    :cond_7f
    :try_start_7f
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    iput p3, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p2, v0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_4

    :goto_90
    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_95
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mGestureHintUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v2, "navigation_bar_gesture_hint"

    invoke-static {p3, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_af

    goto :goto_b0

    :cond_af
    move v0, v1

    :goto_b0
    iput-boolean v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGesutreHintOn:Z

    goto/16 :goto_4

    :cond_b4
    return-void
.end method
