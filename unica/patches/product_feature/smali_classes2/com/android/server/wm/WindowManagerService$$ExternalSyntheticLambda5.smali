.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowManagerService;

    packed-switch v0, :pswitch_data_46

    check-cast p1, Lcom/android/server/wm/WindowState;

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->shouldHideNonSystemOverlayWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    return-void

    :pswitch_13  #0x1
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void

    :pswitch_23  #0x0
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_45

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    iput p0, v0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v5, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    :cond_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_13  #00000001
    .end packed-switch
.end method
