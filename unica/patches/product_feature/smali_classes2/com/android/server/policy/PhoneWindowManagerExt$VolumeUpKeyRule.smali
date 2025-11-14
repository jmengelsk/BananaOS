.class public final Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCalledMediaSessionByLongpress:Z

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x19

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onKeyUp(Landroid/view/KeyEvent;)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "call media session by up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "call media session by up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "call media session by longpress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-static {p3, v2, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "call media session by longpress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-static {p3, v2, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 0

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 p3, -0x1

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 p3, -0x1

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onReset()V
    .locals 10

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "call media session by reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x19

    move-wide v5, v3

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "call media session by reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x18

    move-wide v5, v3

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportLongPress()Z
    .locals 0

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
