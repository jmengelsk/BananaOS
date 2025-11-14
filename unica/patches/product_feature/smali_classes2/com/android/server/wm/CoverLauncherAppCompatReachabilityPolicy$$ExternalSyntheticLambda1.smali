.class public final synthetic Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;Landroid/graphics/Rect;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;

    iput-object p2, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;

    iput-object p2, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;

    iget-object v1, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "landscape"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsStateController;->mChangedCoverScreenCompatMode:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;

    iget-object v1, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "cover_launcher_app_compat_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;Landroid/graphics/Rect;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v3, p0}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
