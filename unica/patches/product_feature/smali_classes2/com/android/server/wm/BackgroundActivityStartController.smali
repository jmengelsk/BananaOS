.class public final Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

.field public static final BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field public static final BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

.field public final mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

.field public final mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStrictModeBalCallbacks:Landroid/util/SparseArray;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskIdToFinishedActivity:Ljava/util/HashMap;

.field public mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZ)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZ)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static balCodeToString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_3b

    packed-switch p0, :pswitch_data_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected value: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0xd
    const-string p0, "BAL_ALLOW_BOUND_BY_FOREGROUND"

    return-object p0

    :pswitch_17  #0xc
    const-string p0, "BAL_ALLOW_TOKEN"

    return-object p0

    :pswitch_1a  #0xb
    const-string p0, "BAL_ALLOW_NON_APP_VISIBLE_WINDOW"

    return-object p0

    :pswitch_1d  #0xa
    const-string p0, "BAL_ALLOW_SDK_SANDBOX"

    return-object p0

    :pswitch_20  #0x9
    const-string p0, "BAL_ALLOW_FOREGROUND"

    return-object p0

    :pswitch_23  #0x8
    const-string p0, "BAL_ALLOW_GRACE_PERIOD"

    return-object p0

    :pswitch_26  #0x7
    const-string p0, "BAL_ALLOW_SAW_PERMISSION"

    return-object p0

    :pswitch_29  #0x6
    const-string p0, "BAL_ALLOW_PERMISSION"

    return-object p0

    :pswitch_2c  #0x5
    const-string p0, "BAL_ALLOW_PENDING_INTENT"

    return-object p0

    :pswitch_2f  #0x4
    const-string p0, "BAL_ALLOW_VISIBLE_WINDOW"

    return-object p0

    :pswitch_32  #0x3
    const-string p0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    return-object p0

    :pswitch_35  #0x2
    const-string p0, "BAL_ALLOW_ALLOWLISTED_UID"

    return-object p0

    :pswitch_38  #0x1
    const-string p0, "BAL_ALLOW_DEFAULT"

    return-object p0

    :cond_3b
    const-string p0, "BAL_BLOCK"

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_2c  #00000005
        :pswitch_29  #00000006
        :pswitch_26  #00000007
        :pswitch_23  #00000008
        :pswitch_20  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_14  #0000000d
    .end packed-switch
.end method

.method public static balStartModeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2f

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const-string/jumbo v0, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE"

    return-object p0

    :cond_1f
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_ALWAYS"

    return-object p0

    :cond_23
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_DENIED"

    return-object p0

    :cond_27
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    return-object p0

    :cond_2b
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED"

    return-object p0

    :cond_2f
    const-string/jumbo p0, "MODE_BACKGROUND_ACTIVITY_START_COMPAT"

    return-object p0
.end method

.method public static varargs evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-ge v1, v0, :cond_12

    aget-object v3, p1, v1

    invoke-interface {v3, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    if-eq v3, v2, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-object v2
.end method

.method public static getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visibleRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastLaunchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastVisibleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z
    .registers 3

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    if-ne p0, p2, :cond_34

    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result p0

    if-eqz p0, :cond_1b

    iget-object p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    if-eqz p0, :cond_1b

    iget-object p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    if-eq p0, p2, :cond_1b

    goto :goto_34

    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result p0

    if-eqz p0, :cond_32

    iget-object p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    if-eqz p0, :cond_32

    iget-object p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    if-eq p0, p2, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Background activity launch blocked! goo.gle/android-bal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PendingIntent Activity start blocked in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". PendingIntent was created in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_4b

    const-string v3, " could opt in to grant BAL privileges when sending. "

    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    move-object v1, v4

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, " could opt in to grant BAL privileges when creating."

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The intent would have started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity start blocked. The intent would have started "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_88
    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    if-ne v1, p1, :cond_92

    return-void

    :cond_92
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    return-void
.end method

.method public final checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;IILjava/lang/String;)V
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v15, p2

    const/16 v0, 0x3e8

    if-eq v15, v0, :cond_166

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_166

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_166

    :cond_18
    iget-object v14, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v3, p3

    move v2, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_166

    const/4 v2, 0x3

    if-eq v0, v2, :cond_166

    const/4 v2, 0x6

    if-eq v0, v2, :cond_166

    const/4 v2, 0x7

    if-eq v0, v2, :cond_166

    const/4 v2, 0x4

    if-eq v0, v2, :cond_166

    const/16 v2, 0xb

    if-eq v0, v2, :cond_166

    const/16 v2, 0xd

    if-ne v0, v2, :cond_56

    goto/16 :goto_166

    :cond_56
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_5e

    goto/16 :goto_166

    :cond_5e
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v15, v3, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    iget-boolean v4, v2, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v4, :cond_6e

    goto/16 :goto_166

    :cond_6e
    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_7e

    const/4 v5, -0x1

    :goto_7b
    move/from16 v17, v5

    goto :goto_83

    :cond_7e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    goto :goto_7b

    :goto_83
    if-nez v4, :cond_88

    move-object/from16 v18, v3

    goto :goto_8e

    :cond_88
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v4

    :goto_8e
    const/16 v25, 0xb

    const/16 v26, 0x0

    move-object v4, v14

    const/16 v14, 0x1ef

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v16, p4

    invoke-static/range {v14 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v5

    if-eqz v5, :cond_b6

    iget-boolean v2, v2, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    if-eqz v2, :cond_b6

    const/4 v2, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v2, 0x0

    :goto_b7
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c9

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_de

    :cond_c9
    const-wide/16 v6, 0x0

    :try_start_cb
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_d7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    move-object v4, v5

    :goto_d9
    move-object/from16 v29, v5

    move-object v5, v4

    move-object/from16 v4, v29

    :goto_de
    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v6

    if-eqz v6, :cond_100

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "go/android-asm"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_f1

    const-string v7, " returned home due to "

    goto :goto_f3

    :cond_f1
    const-string v7, " would return home due to "

    :goto_f3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    :cond_100
    const-string v1, " is not on top of task t: "

    const-string v5, "ActivityTaskManager"

    if-eqz v2, :cond_14e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[ASM] Return to home as source: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_127

    goto :goto_141

    :cond_127
    new-instance v3, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    :goto_141
    const-string/jumbo v1, "taskRemoved"

    if-nez v3, :cond_14a

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    goto :goto_166

    :cond_14a
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_166

    :cond_14e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ASM] Would return to home as source: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_166
    :goto_166
    return-void
.end method

.method public final checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 27

    if-nez p11, :cond_6

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    move-object v13, v0

    goto :goto_8

    :cond_6
    move-object/from16 v13, p11

    :goto_8
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    iget v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v3

    const-string/jumbo v4, "mResultForRealCaller can only be set once"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_53

    invoke-static {v0}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v3

    if-eqz v3, :cond_53

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v3, 0xa

    const-string/jumbo v7, "uid in SDK sandbox has visible (non-toast) window"

    invoke-direct {v0, v3, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v3, :cond_4a

    move v5, v6

    :cond_4a
    invoke-static {v5, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_53
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    iget-object v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v7, :cond_5d

    move v7, v6

    goto :goto_5e

    :cond_5d
    move v7, v5

    :goto_5e
    const-string/jumbo v8, "mResultForCaller can only be set once"

    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6b

    move v7, v6

    goto :goto_6c

    :cond_6b
    move v7, v5

    :goto_6c
    sget-object v8, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v7, :cond_80

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_7c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v8

    :cond_80
    iget v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    if-ne v7, v0, :cond_8c

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_8c

    move-object v0, v3

    goto :goto_ca

    :cond_8c
    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v7, 0x4

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v11, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    if-ne v0, v7, :cond_a4

    filled-new-array {v11, v10, v9}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    goto :goto_c6

    :cond_a4
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v12, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v13, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v14, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    move-object/from16 p7, v0

    move-object/from16 p8, v7

    move-object/from16 p3, v9

    move-object/from16 p2, v10

    move-object/from16 p1, v11

    move-object/from16 p4, v12

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    filled-new-array/range {p1 .. p8}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    :goto_c6
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    :goto_ca
    iget-object v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v7, :cond_d0

    move v7, v6

    goto :goto_d1

    :cond_d0
    move v7, v5

    :goto_d1
    invoke-static {v7, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_ed

    iget v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v7, 0x7f

    if-ne v4, v7, :cond_ed

    if-ne v3, v8, :cond_eb

    goto :goto_ed

    :cond_eb
    iput-boolean v6, v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    :cond_ed
    :goto_ed
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_ff

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_ff
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_111

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_111

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_111
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_123

    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v3

    if-ne v3, v4, :cond_121

    goto :goto_123

    :cond_121
    move v3, v6

    goto :goto_124

    :cond_123
    :goto_123
    move v3, v5

    :goto_124
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    if-ne v0, v4, :cond_133

    goto :goto_134

    :cond_133
    move v5, v6

    :cond_134
    :goto_134
    const-string v0, "ActivityTaskManager"

    if-eqz v3, :cond_158

    iget-object v4, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_158

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "With Android 15 BAL hardening this activity start may be blocked if the PI creator upgrades target_sdk to 35+! goo.gle/android-bal (missing opt in by PI creator)!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_158
    if-eqz v5, :cond_17a

    iget-object v4, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_17a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "With Android 14 BAL hardening this activity start will be blocked if the PI sender upgrades target_sdk to 34+!  goo.gle/android-bal (missing opt in by PI sender)!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v0

    :cond_17a
    if-nez v3, :cond_17e

    if-eqz v5, :cond_184

    :cond_17e
    const-string/jumbo v3, "Without BAL hardening this activity start would be allowed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_184
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object v8
.end method

.method public final checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 13

    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    if-ne v0, v1, :cond_18

    filled-new-array {v2, v3, v4}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v0

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    move-object v10, v4

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    move-object v9, v3

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    if-eqz v0, :cond_37

    move-object v8, v2

    move-object v2, p0

    filled-new-array/range {v2 .. v10}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :cond_37
    move-object v8, v6

    move-object v6, v3

    move-object v3, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v4

    move-object v4, v10

    move-object v10, v8

    move-object v8, v5

    move-object v5, p0

    filled-new-array/range {v2 .. v10}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 9

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-object p3

    :cond_a
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iput-boolean v2, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-object p3

    :cond_14
    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_65

    :cond_1d
    const-wide/32 v3, 0xdbe868a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_65

    :cond_2b
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "Package name: "

    const-string v4, "ActivityTaskManager"

    if-nez v0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object p0, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_50

    iput-object p1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_50
    return-object p3

    :cond_51
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    :try_start_5d
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_61} :catch_6f

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    if-eqz p0, :cond_66

    :goto_65
    return-object p3

    :cond_66
    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object p0, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_6e

    iput-object p1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_6e
    return-object p3

    :catch_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object p0, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_8e

    iput-object p1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_8e
    return-object p3
.end method

.method public checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 8

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez p1, :cond_5

    goto :goto_48

    :cond_5
    iget v1, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    invoke-virtual {p1, v1, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_48

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_45

    iget v3, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    invoke-virtual {v2, v3, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_45

    return-object v2

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_48
    :goto_48
    return-object v0
.end method

.method public final checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 7

    const/4 v0, 0x1

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-object p4

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_33

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Activities for task: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object p0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_32

    iput-object v1, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_32
    return-object p4

    :cond_33
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p4

    iget-boolean v1, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v1, :cond_3c

    goto :goto_55

    :cond_3c
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iput-boolean v0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-object p4

    :cond_4a
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_56

    :goto_55
    return-object p4

    :cond_56
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    iget-boolean p4, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz p4, :cond_5f

    goto :goto_6c

    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-nez p1, :cond_66

    goto :goto_6c

    :cond_66
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p4

    if-nez p4, :cond_6d

    :goto_6c
    return-object p3

    :cond_6d
    filled-new-array {p3}, [Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    new-instance p4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;

    invoke-direct {p4, p0, v0, p3, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V

    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-object p0, p3, p0

    return-object p0
.end method

.method public final getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 27

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    new-instance v7, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    invoke-direct {v7, v1, v4, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    new-instance v8, Ljava/util/StringJoiner;

    const-string v9, "\n"

    invoke-direct {v8, v9}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[ASM] ------ Activity Security "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Debug Logging Start ------"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[ASM] Block Enabled: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_65

    const-string/jumbo v6, "[ASM] Feature Flag Enabled: true"

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Mendel Override: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5a

    move v12, v11

    goto :goto_5b

    :cond_5a
    move v12, v9

    :goto_5b
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_65
    const-string/jumbo v6, "[ASM] ASM Version: 11"

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] System Time: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Activity Opted In: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p12

    invoke-virtual {v7, v12}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v3, :cond_a4

    if-eqz v1, :cond_a4

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v6, v3, :cond_a4

    move v9, v11

    :cond_a4
    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez v1, :cond_db

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Source Package: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v11, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move/from16 v12, p6

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[ASM] Real Calling Uid Package: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_147

    :cond_db
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Source Record: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "[ASM] Source Launch Package: "

    invoke-static {v12, v13, v11, v8}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const-string/jumbo v13, "[ASM] Source Launch Intent: "

    invoke-static {v12, v13, v11, v8}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v9, :cond_122

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Source/Target Task: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string/jumbo v11, "[ASM] Source/Target Task Stack: "

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_13c

    :cond_122
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Source Task: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string/jumbo v11, "[ASM] Source Task Stack: "

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_13c
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;

    const/4 v13, 0x0

    invoke-direct {v12, v8, v7, v13}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;-><init>(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;I)V

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_147
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[ASM] Target Task Top: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-nez v9, :cond_184

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[ASM] Target Task: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v3, :cond_184

    const-string/jumbo v4, "[ASM] Target Task Stack: "

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;

    const/4 v9, 0x1

    invoke-direct {v4, v8, v7, v9}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;-><init>(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_184
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[ASM] Target Record: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v11, "[ASM] Intent: "

    invoke-static {v9, v11, v4, v8}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ASM] TaskToFront: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ASM] AvoidMoveToFront: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-static {v5}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[ASM] BalCode: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ASM] Allowed By Grace Period: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ASM] LastResumedActivity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string/jumbo v2, "[ASM] System opted into enforcement: false"

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v2, :cond_229

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ASM] TopFinishedActivity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget-object v4, v4, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_229
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "[ASM] TaskIdToFinishedActivity: "

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;

    const/4 v4, 0x0

    invoke-direct {v2, v8, v4}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;-><init>(Ljava/util/StringJoiner;I)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_246
    const/4 p0, 0x4

    if-eq v5, p0, :cond_255

    const/16 p0, 0xb

    if-eq v5, p0, :cond_255

    const/16 p0, 0x9

    if-eq v5, p0, :cond_255

    const/16 p0, 0xd

    if-ne v5, p0, :cond_276

    :cond_255
    if-eqz v1, :cond_25a

    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_25b

    :cond_25a
    move-object p0, v3

    :goto_25b
    if-eqz p0, :cond_276

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_276

    const-string/jumbo v1, "[ASM] Tasks: "

    invoke-virtual {v8, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;-><init>(Ljava/util/StringJoiner;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    :cond_276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Debug Logging End ------"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v8}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetSdk(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return p0

    :catch_11
    return v0
.end method

.method public hasBalPermission(II)Z
    .registers 9

    sget-object p0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string/jumbo v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const/4 v3, 0x0

    move v1, p1

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_11

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    if-nez p2, :cond_11

    :cond_e
    if-ne p1, v0, :cond_38

    goto :goto_36

    :cond_11
    if-nez p2, :cond_14

    goto :goto_38

    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    :goto_36
    const/4 p0, 0x1

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_20

    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_20

    goto :goto_49

    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_2f

    goto :goto_49

    :cond_2f
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_49

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    :cond_49
    :goto_49
    return-void
.end method

.method public final onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_5

    goto :goto_2d

    :cond_5
    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_2d

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne p1, v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final removeStrictModeCallback(ILandroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p2, :cond_27

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_27

    :cond_14
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_29

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_23

    throw p0
.end method

.method public shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 3

    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    const/16 p1, 0x2710

    if-eqz p0, :cond_b

    iget p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    if-ge p0, p1, :cond_11

    goto :goto_f

    :cond_b
    iget p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    if-ge p0, p1, :cond_11

    :goto_f
    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 4

    iget p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    invoke-virtual {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_10

    :cond_c
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    if-eqz p0, :cond_12

    :goto_10
    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_171

    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_171

    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v5, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    iget v7, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    iget-object v8, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    iget-boolean v10, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    if-nez v10, :cond_2f

    iget-boolean v10, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    if-eqz v10, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v10, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v10, 0x1

    :goto_30
    iget v13, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    iget v14, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    iget-boolean v15, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    if-nez v15, :cond_3f

    iget-boolean v15, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    if-eqz v15, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v15, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v15, 0x1

    :goto_40
    iget-object v11, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    if-eqz v11, :cond_46

    const/4 v11, 0x1

    goto :goto_47

    :cond_46
    const/4 v11, 0x0

    :goto_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    new-instance v12, Landroid/metrics/LogMaker;

    const/16 v4, 0x5e9

    invoke-direct {v12, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object/from16 v20, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ea

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x5eb

    invoke-virtual {v12, v4, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ec

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ed

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ee

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v14}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ef

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5f0

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5f7

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v20, :cond_c8

    const/16 v4, 0x5f8

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_c8

    const/16 v5, 0x5f6

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_c8
    if-eqz v6, :cond_16c

    const/16 v4, 0x5f9

    iget-object v5, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v12, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v4, v6, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5fa

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-boolean v4, v6, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5fb

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-boolean v4, v6, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5fc

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v4, v6, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, v6, :cond_106

    iget v4, v6, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    if-eqz v4, :cond_104

    goto :goto_106

    :cond_104
    const/4 v11, 0x0

    goto :goto_107

    :cond_106
    :goto_106
    const/4 v11, 0x1

    :goto_107
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5fd

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-boolean v4, v6, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5fe

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-boolean v4, v6, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ff

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-boolean v4, v6, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x600

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_146

    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    sub-long v4, v16, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x601

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_146
    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_159

    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    sub-long v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x602

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_159
    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_16c

    iget-wide v4, v6, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    sub-long v18, v18, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x603

    invoke-virtual {v12, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_16c
    iget-object v3, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v12}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_171
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    move-result v3

    if-eqz v3, :cond_18e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity start is only allowed by grace period. This may stop working in the future. intent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    :cond_18e
    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    iget-object v3, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_1ac

    const-string/jumbo v3, "noIntent"

    goto :goto_1ba

    :cond_1ac
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1ba

    :cond_1b8
    const-string v3, ""

    :goto_1ba
    iget-boolean v4, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    iget v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    if-eqz v4, :cond_1c5

    const/16 v4, 0x7f

    if-eq v1, v4, :cond_1c5

    const/4 v1, 0x5

    :cond_1c5
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-void

    :cond_1c9
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-void
.end method

.method public final strictModeLaunchAborted(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_12

    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_19

    :catchall_10
    move-exception p0

    goto :goto_45

    :cond_12
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_10

    move-object v0, v2

    :goto_19
    if-nez v0, :cond_1c

    goto :goto_44

    :cond_1c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IBackgroundActivityLaunchCallback;

    invoke-interface {v2, p2}, Landroid/app/IBackgroundActivityLaunchCallback;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3a

    goto :goto_24

    :catch_3a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    goto :goto_24

    :cond_44
    :goto_44
    return-void

    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_10

    throw p0
.end method

.method public writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .registers 17

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v2, 0x7f

    if-nez v1, :cond_c

    move v5, v2

    goto :goto_f

    :cond_c
    iget v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    move v5, v1

    :goto_f
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v6

    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_21

    move v1, v7

    goto :goto_23

    :cond_21
    move v1, v7

    move v7, v4

    :goto_23
    iget-object v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v8, :cond_29

    :goto_27
    move v8, v2

    goto :goto_2c

    :cond_29
    iget v2, v8, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    goto :goto_27

    :goto_2c
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v9

    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v2

    if-eqz v2, :cond_3c

    move v10, v1

    goto :goto_3d

    :cond_3c
    move v10, v4

    :goto_3d
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v11

    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v12

    const/16 p0, 0x278

    iget v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    move v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method

.method public writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v3, 0x7f

    if-nez v2, :cond_c

    move v9, v3

    goto :goto_f

    :cond_c
    iget v2, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    move v9, v2

    :goto_f
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v10

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_21

    move v11, v5

    goto :goto_22

    :cond_21
    move v11, v4

    :goto_22
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v2, :cond_28

    :goto_26
    move v12, v3

    goto :goto_2b

    :cond_28
    iget v3, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    goto :goto_26

    :goto_2b
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v2

    if-eqz v2, :cond_3b

    move v14, v5

    goto :goto_3c

    :cond_3b
    move v14, v4

    :goto_3c
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v15

    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v16

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v4, 0x278

    const-string v5, ""

    const/4 v6, 0x1

    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method
