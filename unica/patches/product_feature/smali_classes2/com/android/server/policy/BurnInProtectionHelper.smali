.class public final Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

.field public static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field public static final BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAppliedBurnInXOffset:I

.field public mAppliedBurnInYOffset:I

.field public mBurnInProtectionActive:Z

.field public final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field public final mBurnInProtectionReceiver:Lcom/android/server/policy/BurnInProtectionHelper$1;

.field public final mBurnInRadiusMaxSquared:I

.field public final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mFirstUpdate:Z

.field public mLastBurnInXOffset:I

.field public mLastBurnInYOffset:I

.field public final mMaxHorizontalBurnInOffset:I

.field public final mMaxVerticalBurnInOffset:I

.field public final mMinHorizontalBurnInOffset:I

.field public final mMinVerticalBurnInOffset:I

.field public mXOffsetDirection:I

.field public mYOffsetDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    iput-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Lcom/android/server/policy/BurnInProtectionHelper$1;

    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    iput p3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    iput p4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    iput p5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    const/4 p2, -0x1

    if-eq p6, p2, :cond_27

    mul-int/2addr p6, p6

    iput p6, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    goto :goto_29

    :cond_27
    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    :goto_29
    const-class p2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-string/jumbo p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo p3, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x40000000  # 2.0f

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p3, 0xa000000

    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    const-string/jumbo p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_96

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_96
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_18

    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez p1, :cond_18

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    iput p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    :cond_18
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    :cond_23
    return-void
.end method

.method public final onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public final onDisplayChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_40

    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2f

    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2f

    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_24

    goto :goto_2f

    :cond_24
    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    return-void

    :cond_2f
    :goto_2f
    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez p1, :cond_40

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    :cond_40
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public final updateBurnInProtection()V
    .registers 12

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    if-eqz v0, :cond_b

    sget-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    goto :goto_d

    :cond_b
    sget-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    :goto_d
    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    goto :goto_68

    :cond_13
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    if-gt v4, v5, :cond_24

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    if-ge v4, v5, :cond_43

    :cond_24
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    if-gt v4, v5, :cond_3c

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    if-ge v4, v5, :cond_43

    :cond_3c
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    :cond_43
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_51

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    mul-int/2addr v3, v3

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    mul-int/2addr v4, v4

    add-int/2addr v4, v3

    if-gt v4, v0, :cond_13

    :cond_51
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    :goto_68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    add-long/2addr v7, v3

    rem-long v9, v7, v1

    sub-long/2addr v7, v9

    add-long/2addr v7, v1

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v7, v8, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_82
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
