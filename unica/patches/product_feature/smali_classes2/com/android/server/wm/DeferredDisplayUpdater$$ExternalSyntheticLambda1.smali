.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Landroid/view/DisplayInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;ZLjava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iput-object p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$1:Landroid/view/DisplayInfo;

    iput-boolean p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$1:Landroid/view/DisplayInfo;

    iget-boolean v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$2:Z

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2f

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v5, v3

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v7, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x7a92e92c10c2334fL  # 2.7461642514136956E282

    const/4 v8, 0x5

    invoke-static {v3, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    iget-object v5, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_3e

    if-eqz v2, :cond_3e

    iget-object v2, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal;->setChangingPreferredMode(Z)V

    :cond_3e
    iput-object v1, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    iget-object v0, v5, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_54

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5e

    :cond_54
    iget-object v0, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_5e
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
