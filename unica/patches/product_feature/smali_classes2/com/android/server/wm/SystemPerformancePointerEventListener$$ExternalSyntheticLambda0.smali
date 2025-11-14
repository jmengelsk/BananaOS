.class public final synthetic Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    packed-switch v0, :pswitch_data_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    return-void

    :pswitch_1b  #0x1
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_22
    return-void

    :pswitch_23  #0x0
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_1b  #00000001
    .end packed-switch
.end method
