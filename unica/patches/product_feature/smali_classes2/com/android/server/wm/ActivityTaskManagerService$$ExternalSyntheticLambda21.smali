.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Landroid/content/res/Configuration;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/res/Configuration;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;ILandroid/content/res/Configuration;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$1:Landroid/content/res/Configuration;

    iput p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$3:Landroid/content/res/Configuration;

    iput p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$4:I

    iput-boolean p6, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$1:Landroid/content/res/Configuration;

    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$2:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$3:Landroid/content/res/Configuration;

    iget v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$4:I

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;->f$5:Z

    sget-object v6, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v2, Landroid/content/res/Configuration;->colorMode:I

    iget v9, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v10, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v11, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v12, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v13, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v14, v2, Landroid/content/res/Configuration;->mcc:I

    iget v15, v2, Landroid/content/res/Configuration;->mnc:I

    iget v6, v2, Landroid/content/res/Configuration;->navigation:I

    iget v7, v2, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v16, v6

    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v6

    iget v6, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v19, v6

    iget v6, v2, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v20, v6

    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v6

    iget v6, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v22, v6

    iget v6, v2, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v23, v6

    iget v6, v2, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v17, v7

    const/16 v7, 0x42

    move/from16 v24, v6

    invoke-static/range {v7 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_57

    const/16 v6, 0x38a

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    :cond_57
    if-eqz v4, :cond_62

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    :cond_62
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v3, v0}, Landroid/app/ActivityManagerInternal;->broadcastGlobalConfigurationChanged(IZ)V

    return-void
.end method
