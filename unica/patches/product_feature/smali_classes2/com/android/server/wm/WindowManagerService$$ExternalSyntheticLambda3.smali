.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$0:Z

    packed-switch v0, :pswitch_data_54

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    sget v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->$r8$clinit:I

    iput-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->mIsMagnifyKeyboard:Z

    return-void

    :pswitch_e  #0x0
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iget v3, p1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    const/high16 v4, 0x1600000

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2a

    move v3, v6

    goto :goto_2b

    :cond_2a
    move v3, v5

    :goto_2b
    if-nez p0, :cond_3c

    iget-wide v7, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    sub-long v7, v0, v7

    iget-wide v9, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_3c

    iget-boolean p0, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    xor-int/lit8 v5, p0, 0x1

    goto :goto_49

    :cond_3c
    if-eqz p0, :cond_45

    if-eqz v2, :cond_45

    if-nez v3, :cond_45

    iput-wide v0, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    goto :goto_49

    :cond_45
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    :goto_49
    if-eqz v5, :cond_52

    iget-object p0, p1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method
